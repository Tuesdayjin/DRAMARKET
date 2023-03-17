package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class t_comment {

    // 댓글번호. 댓글번호
    private Long cmt_num;

    // 댓글내용. 댓글내용
    private String cmt;

    // 원글번호. 원글번호
    private Long board_num;

    // 작성날짜. 작성날짜
    private Date indate;

    // 댓글 작성자. 댓글 작성자
    private String cmt_id;

	
}
