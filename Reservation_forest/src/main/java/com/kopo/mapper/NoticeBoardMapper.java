package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


import com.kopo.domain.NoticeBoard;

public interface NoticeBoardMapper {
	//공지게시
	@Insert("insert into noticeboard(id,title,contents,inputdate) values(notice_seq.NEXTVAL,'${NoticeBoard.title}','${NoticeBoard.contents}',TO_CHAR(SYSDATE,'YYYY-MM-DD'))")
	public void insertNewNotice(@Param("NoticeBoard")NoticeBoard noticeboard);

	//공지 전체 리스트 조회
	/*
	/*
	 * @Select("select * from noticeboard where <if test=\"#{condition} =='title'\"> title like '%'||#{keyword}||'%'</if> <if test=\"#{condition} =='contents'\">contents like '%'||#{keyword}||'%'</if> <if test=\"#{condition} == null or condition ==''\">1 = 1</if> order by id desc"
	 * )
	 */
	@Select("select * from noticeboard order by id desc")
	public List<NoticeBoard> getAllNoticeList(); 
	/*
													 * @Param("criteria")Criteria cri,@Param("condtion")String
													 * condition,@Param("keyword")String keyword
													 */

	//공지 조회수 업데이트
	@Update("update noticeboard set viewcount = viewcount+1 where id = ${NoticeId}")
	public void updateViewCnt(@Param("NoticeId")int id);
	
	//공지 한개 조회
	@Select("select * from noticeboard where id= ${id}")
	public List<NoticeBoard>getOneNoticeList(@Param("id")int id);



}
