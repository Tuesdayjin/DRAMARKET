package kr.smhrd.entity;

import java.util.Date;

public class t_comment {

    // 댓글번호. 댓글번호
    private Long cmt_num;

    // 댓글내용. 댓글내용
    private String cmt;

    // 원글번호. 원글번호
    private Long board_num;

    // 계층. 계층
    private Integer cmt_class;

    // 댓글대댓글 순서. 댓글대댓글 순서
    private Integer cmt_order;

    // 댓글 그룹. 댓글 그룹
    private Integer cmt_group;

    // 작성날짜. 작성날짜
    private Date indate;

    // 댓글 작성자. 댓글 작성자
    private String cmt_id;

	
}
