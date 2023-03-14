package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_member;

public interface Mapper {

	
	@Select("select * from t_member where id=#{id} and pwd=#{pwd}")
	public t_member loginCheck(t_member vo);

	
	@Insert("insert into t_board (title,content,id,indate,views) values (#{title},#{content},#{id},#{indate},0)")
	public void insertWrite(t_board vo);
	
	
	@Insert("insert into t_board (title,content,id,indate,img_name,views) values (#{title},#{content},#{id},#{indate},#{img_name},0)")
	public void insertWriteaddfile(t_board vo);
	
	
	@Select("select * from t_board order by indate desc")
	public List<t_board> selecT_board();

	
	
}
