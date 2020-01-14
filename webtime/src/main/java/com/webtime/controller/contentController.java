package com.webtime.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webtime.command.ContentVO;
import com.webtime.command.TicketVO;
import com.webtime.content.service.ContentService;

@Controller

@RequestMapping("/content")
public class contentController {
	
	@Autowired
	@Qualifier("contentService")
	private ContentService contentService;
	
	
	//musical 화면이동
	@RequestMapping(value="/musical", method=RequestMethod.GET)
	public String musical(Model model, HttpSession session) {
		
		ArrayList<TicketVO> list = contentService.getList();
		model.addAttribute("ticketList", list);
		
		ArrayList<TicketVO> rank = contentService.rankMusical();//순위 
		session.setAttribute("rankMu", rank);
		
		int muTotal = contentService.muTotal();//공연수
		session.setAttribute("muTotal", muTotal);
		
		return "content/musical";
	}
	
	//concert 화면이동
	@RequestMapping(value="/concert", method=RequestMethod.GET)
	public String concert(Model model, HttpSession session) {
		
		ArrayList<TicketVO> list = contentService.getList();
		model.addAttribute("ticketList", list);
		
		ArrayList<TicketVO> rank = contentService.rankConcert();//순위
		session.setAttribute("rankCon", rank);
		
		int conTotal = contentService.conTotal();//공연수
		session.setAttribute("conTotal", conTotal);
		
		return "content/concert";
	}
	
	//content상세페이지 화면이동
	@RequestMapping(value="/contentDetail", method=RequestMethod.GET)
	public String contentDetail(@RequestParam("num") int num,
								Model model) {
		contentService.updateHit(num); //조회수 증가 
		
		TicketVO vo = contentService.getInfo(num); //상세정보  
		
		System.out.println("게시글번호: " + num + ", 조회수: " + vo.getHit() );
		
		model.addAttribute("ticketVO", vo);
		
		return "content/contentDetail";
	}
	
	//예매하기 
	@RequestMapping(value="payData", method=RequestMethod.POST)
		public String payData(ContentVO vo, RedirectAttributes RA){
		System.out.println(vo.toString());
		contentService.pay(vo);
		
		RA.addFlashAttribute("msg","정상 완료 되었습니다.");
			
		return "home";
		}
	
	
	//reservation 화면이동
	@RequestMapping("/reservation")
	public String reservation(@RequestParam("num") int num, Model model) {
		TicketVO vo = contentService.getInfo(num);
		model.addAttribute("ticketVO", vo);
		return "content/reservation";
	}
	
	/*
	 * //Content값 보내기
	 * 
	 * @RequestMapping(value ="/seatData",method=RequestMethod.POST) public String
	 * seatData(ContentVO vo,RedirectAttributes RA) {
	 * 
	 * int result =
	 * }
	 */
}
