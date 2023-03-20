package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.mapper.Mapper;

@Controller
public class CaptureImgController {
	@Autowired
	private Mapper mapper;
	
	@PostMapping("/uploadCapture.do")
	public String uploadCapture(@RequestParam("imageDataUrl") String imageDataUrl, Model model) {
		 
		model.addAttribute("imageDataUrl", imageDataUrl); //result.jsp에서 이미지 주소 받아오기
		    return "imgResult";//이미지분석jsp에서 출력
	}
	
}
