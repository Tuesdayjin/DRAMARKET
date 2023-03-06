package kr.smhrd.entity;

import lombok.Data;

@Data
public class t_output {

    // 출력값 번호. 출력값 번호
    private Long out_num;

    // 출력값 링크. 출력값 링크
    private String out_url1;

    // 출력값 이미지. 출력값 이미지
    private String out_img1;

    // 출력값 가격. 출력값 가격
    private String out_price1;

    // 입력값 번호. 입력값 번호
    private Long idx;
	
}
