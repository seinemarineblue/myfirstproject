package com.webtime.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webtime.command.CartVO;
import com.webtime.command.ContentVO;
import com.webtime.command.TicketVO;
import com.webtime.command.UserVO;
import com.webtime.content.service.ContentService;
import com.webtime.user.service.UserService;

@Controller
@RequestMapping("/users")
public class userController {
	
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	//join_main 화면이동
	@RequestMapping("/join_main")
	public String join_main() {
		return "users/join_main";
	}
	//가입 화면 
	@RequestMapping(value="/join_form") 
	public String join_form() {	
		return "users/join_form";
	}
	//login화면 이동 
	@RequestMapping("/login")
	public String login() {
		return "users/login";
	}
	
	//가입 처리
	@RequestMapping("/join")  
	public String join(UserVO vo, RedirectAttributes RA) {
		int result = userService.join(vo);
		System.out.println(vo.toString());
		
		if(result ==1) {
			RA.addFlashAttribute("msg", "회원가입을 축하합니다!");
		} else {
			RA.addFlashAttribute("msg", "회원가입에 실패했습니다.");
		}
		return "redirect:/users/login";
	}
	
	//id중복 체크 
	@RequestMapping(value="/idFind")
	@ResponseBody
	public int idFind(@RequestBody UserVO vo) {
		int result = userService.idFind(vo);
		//System.out.println(result);
		return result;
	}	
	
	//login 처리
	@RequestMapping(value="/loginForm")
	public String loginForm(UserVO vo, RedirectAttributes RA, HttpSession session) {
		UserVO result = userService.login(vo);

		if(result !=null) { //로그인 성공
			session.setAttribute("id", result.getId());
			session.setAttribute("name", result.getName());
			return "home";
		} else { //로그인 실패 
			RA.addFlashAttribute("msg", "아이디, 비밀번호를 확인하세요.");
			return "redirect:/users/login";
		}
	}
	
	//회원정보 화면
	@RequestMapping("/update_user")
	public String userInfo(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		UserVO userInfo = userService.userInfo(id);
		model.addAttribute("userInfo", userInfo);
		
		return "users/update_user";
	}
	
	
	//정보수정 화면
	@RequestMapping("/update")
	public String update(UserVO vo, RedirectAttributes RA) {
		int check = userService.update(vo);
		if(check ==1) {
			RA.addFlashAttribute("msg", "회원정보가 수정되었습니다.");
			return "users/mypage";
		} else {
			RA.addFlashAttribute("msg", "다시 시도하세요.");
			return "redirect:/";
		}
	}
	
	
	//로그아웃 
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	//mybooking,mypage 화면이동
	@RequestMapping(value= {"/mybooking", "/mypage"})
	public void mybooking(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");	
		ArrayList<ContentVO> mybooking = userService.mybooking(id);
		model.addAttribute("mybooking", mybooking);	
		
		String user_id = id;
		int cartCount = userService.cartCount(user_id);
		session.setAttribute("cartCount", cartCount);

	}
	
	
	//장바구니
	@RequestMapping(value="/cart")
	@ResponseBody
	public int cart(@RequestBody CartVO vo) {

		int result = userService.addCart(vo);
		return result;
	}	
	
	//mycart
	@RequestMapping("/mycart")
	public void mycart(HttpSession session, Model model) {
		String user_id = (String)session.getAttribute("id");
		
		ArrayList<CartVO> cartList = userService.cartList(user_id);
		model.addAttribute("cartList", cartList);
	}
	
	//장바구니 삭제 
	@RequestMapping(value="/deleteCart")
	@ResponseBody
	public int deleteCart(@RequestBody CartVO vo) {
		System.out.println("~~delete~~ " + vo.toString());
		int result = userService.deleteCart(vo);
		return result;
	}
	

}
