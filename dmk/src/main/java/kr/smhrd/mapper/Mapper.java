package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_comment;
import kr.smhrd.entity.t_member;

public interface Mapper {

	
	
	//멤버 조회 (by id && pw)
	@Select("select * from t_member where id=#{id} and pwd=#{pwd}")
	public t_member loginCheck(t_member vo);
	
	//멤버 조회 (by id)
	@Select("select * from t_member where id=#{id}")
	public t_member memberById(String id);
	
	//멤버 등록
	@Insert("insert into t_member values (#{id},#{pwd},#{nick},#{gender},#{birth},#{profile_name})")
	public void memberRegister(t_member vo);

	//글 등록 (no file)
	@Insert("insert into t_board (title,content,id,indate,nick,profile_name,views) "
						+ "values (#{title},#{content},#{id},#{indate},#{nick},#{profile_name},0)")
	public void insertWrite(t_board vo);
	
	//글 등록 (add file)
	@Insert("insert into t_board (title,content,id,indate,img_name,nick,profile_name,views) "
						+ "values (#{title},#{content},#{id},#{indate},#{img_name},#{nick},#{profile_name},0)")
	public void insertWriteaddfile(t_board vo);
	
	//글 전체 조회 (최신순)
	@Select("select * from t_board order by indate desc")
	public List<t_board> selecT_board();

	//글 1건 조회 (by num)
	@Select("select * from t_board where num=#{num}")
	public t_board selectContent(long num);

	//글 조회수 +1 
	@Update("update t_board set views=views+1 where num=#{num}")
	public void countUpdate(long num);

	@Insert("insert into t_comment (board_num, cmt, cmt_id, indate) values (#{board_num},#{cmt},#{cmt_id},#{indate})")
	public void cmtinsert(t_comment cmt_vo);
	

	
}
