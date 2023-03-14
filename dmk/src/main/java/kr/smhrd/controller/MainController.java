package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;

@Controller
public class MainController {

	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/Main.do") //Main 페이지
	public String Main() {
		
		return "Main";
	}
	
	@GetMapping("/login.do") //login 페이지로 연결
	public String login() {
		return "login";
	}
	
	@PostMapping("/login.do") //login 페이지로 연결 
	public String login(t_member vo, HttpSession session) {
		 t_member mvo = mapper.loginCheck(vo); //(회원인증매퍼)
		 if(mvo != null) {
			 session.setAttribute("mvo", mvo);
			 // 이때, ★★ model 에 바인딩하면 안된다..!★★
			 // 원래 스프링에서 HttpSession session 안쓰지만 일단 여기까지만 배움
			 // 보안에 더 안전한 방법 있는데 그거는 나중에 책보고 해보세요
		 }
	 return "redirect:/Main.do";
	}
	



}
