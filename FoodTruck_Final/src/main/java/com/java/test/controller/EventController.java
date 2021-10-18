package com.java.test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.test.domain.MemberVO;
import com.java.test.service.EventService;

@Controller
@RequestMapping("/Event")
public class EventController {

	@Autowired
	private EventService eventService;

	// Ev 홈페이지
	@RequestMapping("/profile-event.do")
	public void getEventList(Model model) {
		System.out.println("Event 홈페이지로 이동");
		
		List<MemberVO> controlltxt2 = eventService.getEventList();
		for(MemberVO txt : controlltxt2) {
			if(txt.getEventContent().length() > 32) {
				String con = txt.getEventContent();
				con = con.substring(0,30) + " ...";
				txt.setEventContent(con);
			}
			if(txt.getEventTitle().length() > 8) {
				String con = txt.getEventTitle();
				con = con.substring(0,6) + " ...";
				txt.setEventTitle(con);
			}
			
		}
		
		model.addAttribute("EventList", controlltxt2);
//		model.addAttribute("EventList", eventService.getEventList());

	}

	// 이벤트 페이지 글추가 페이지
	@RequestMapping("/insertEvent.do")
	public ModelAndView insertEvent() {

		System.out.println("Event 글추가하러 출발");

		ModelAndView mv = new ModelAndView();

		mv.setViewName("/Event/insertEvent");

		return mv;
	}

	// 이벤트 페이지 글쓴 값 넘기기
	@RequestMapping("insertEv.do")
	public String pageMoveEvent(MemberVO vo) {

		eventService.insertEvent(vo);

		System.out.println("이벤트 글추가 값 이동@!@");

		return "redirect:/Event/profile-event.do";
	}

	// 이벤트 페이지 상세 페이지
	@RequestMapping("/GetEvent.do")
	public void getEvent(MemberVO vo, Model model) {
//		System.out.println("Text NO : " + vo.getEventseq());

		System.out.println("Event 상세 홈페이지로 이동");

		model.addAttribute("Event", eventService.getEventList2(vo));

	}

	// 이벤트 페이지 상세 글수정 페이지
	@RequestMapping("/getEventvo.do")
	public void getEventvo(MemberVO vo, Model model){
		System.out.println("Event 상세 글수정 페이지로 이동");
		model.addAttribute("Event", eventService.getEventvo(vo));
	}

	// 이벤트 페이지 상세 글수정
	@RequestMapping("/UpdateEvent.do")
	public String UpdateEvent(MemberVO vo) {
		eventService.UpdateEvent(vo);
		return "redirect:/Event/profile-event.do";
	}

	// 이벤트 페이지 게시판 삭제
	@RequestMapping("/deleteEvent.do")
	public String deleteEvent(MemberVO vo) {
		eventService.deleteEvent(vo);
		return "redirect:/Event/profile-event.do";
	}

	// 이벤트 게시글 댓글 작성(C)
	@RequestMapping(value = "/Event/insertEventComment.do")
	public String insertEventComment(MemberVO vo, HttpSession session) {
		vo.setCommentWriter((String) session.getAttribute("userNick"));
		eventService.insertEventComment(vo);
		return "redirect:/Event/getEvent.do?eventseq=" + vo.getEventseq();
	}

	// 이벤트 게시글 댓글 삭제(D)
	@RequestMapping(value = "/Event/deleteEventComment.do")
	public String deleteEventComment(MemberVO vo) {
		eventService.deleteEventComment(vo);
		return "redirect:/Event/getEvent.do?eventseq=" + vo.getEventseq();
	}

}