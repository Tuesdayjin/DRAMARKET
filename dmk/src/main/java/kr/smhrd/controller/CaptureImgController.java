package kr.smhrd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.mapper.Mapper;

@Controller
public class CaptureImgController {
	@Autowired
	private Mapper mapper;


	@RequestMapping("/imgResult.do")
	public String uploadCapture(@RequestParam("fileName") String fileName, Model model) {

		model.addAttribute("fileName", fileName); // result.jsp에서 이미지 주소 받아오기

		return "imgResult"; // 이미지분석jsp에서 출력
	}

}
