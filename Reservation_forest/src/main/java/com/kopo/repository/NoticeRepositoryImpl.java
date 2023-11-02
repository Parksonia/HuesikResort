package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.NoticeBoard;
import com.kopo.mapper.NoticeBoardMapper;
import com.kopo.repository.Repository.NoticeRepository;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository {

	@Autowired
	private NoticeBoardMapper noticeboardmapper;
	
	private List<NoticeBoard> listOfNotice = new ArrayList<NoticeBoard>(); 
	
	public NoticeRepositoryImpl() {
		super();
	
	}
	//form에서 전달 받은 게시물 db저장

	@Override
	public void setNewNoticeBoard(NoticeBoard noticeboard) {
		noticeboardmapper.insertNewNotice(noticeboard);
	}

	@Override
	public List<NoticeBoard> getNoticeAll() { /* Criteria cri,String keyworkd,String condition */
		listOfNotice = noticeboardmapper.getAllNoticeList(); 
		return listOfNotice;
		
	}

	@Override
	public void setNoticeViewCnt(int id) {
		noticeboardmapper.updateViewCnt(id);
	}
	@Override
	public List<NoticeBoard> getNoticeOne(int id) {
		
		List<NoticeBoard> oneNoticeList = noticeboardmapper.getOneNoticeList(id) ;
		
		if(oneNoticeList== null) {
			throw new IllegalArgumentException("해당 공지를 찾을 수 없습니다 ");
		}
		
		return oneNoticeList ;
	}
	
}
