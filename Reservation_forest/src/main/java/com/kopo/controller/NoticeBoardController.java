package com.kopo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kopo.domain.NoticeBoard;
import com.kopo.service.Service.NoticeBoardService;

@Controller
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService noticeboardService;

	@GetMapping("/test")
	public String requesTestNotice(@ModelAttribute("NewNotice") NoticeBoard noticeboard) {

		return "board/insertImgBoard";
	}

	@PostMapping("/upload-image") // 사진만 서버 경로로 저장
	@ResponseBody
	public ResponseEntity<String> uploadImage(@RequestParam("file") MultipartFile file) throws IOException {
		String imageUrl = noticeboardService.saveUploadedFile(file); // 이미지 저장 경로 반환
		String imageTag = "<img src='" + imageUrl + "' alt='이미지'>";

		return ResponseEntity.ok(imageUrl);
	}

	@PostMapping("/save-post") // db에 완전 저장 전체 리스트로 리턴시켜야함
	public String savePost(@ModelAttribute("NewNotice") NoticeBoard noticeboard) {

		return "";
	}

	@GetMapping("/notice")
	public String requestInsertNotice(@ModelAttribute("NewNotice") NoticeBoard notice) {

		return "board/insertNotice";
	}

	// 사진 웹애플리케이션 저장용 postmapping
	@RequestMapping(value = "/SummerNoteImageFile", method = RequestMethod.POST)
	@ResponseBody
	public JsonObject SummerNoteImageFile(@RequestParam("file") MultipartFile file, HttpServletRequest req) {
		JsonObject jsonObject = noticeboardService.SummerNoteImageFile(file, req);
		System.out.println(jsonObject);
		return jsonObject;
	}

	// 게시물 input postmapping
	@PostMapping("/notice")
	public String submitNewNotice(@ModelAttribute("NewNotice") NoticeBoard notice) {

		noticeboardService.setNewNoticeBoard(notice);

		return "redirect:/noticeall";
	}

	// 공지 리스트 전체 보기 + requestParam 검색용 parameter 추가 
	@GetMapping("/noticeall")
	public String requestNoticeBoardListAll(@RequestParam("currentPage") int currentPage, Model model) {
			
		int pageCnt = 10;
		
		List<NoticeBoard> noticeAllList = noticeboardService.getNoticeAll();
		List<List<NoticeBoard>> pagesOfNotification = new ArrayList<List<NoticeBoard>>();
		
		for (int i = 0; i <noticeAllList.size(); i = i+pageCnt) {
			List<NoticeBoard> notificationPerPage = new ArrayList<NoticeBoard>();
			for (int j = i; j < i + pageCnt; j++) {
				try {
					notificationPerPage.add(noticeAllList.get(j));
				} catch (IndexOutOfBoundsException ie) {
					break;
				}
			}
			pagesOfNotification.add(notificationPerPage);
		}
		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > pagesOfNotification.size()) {
			currentPage = pagesOfNotification.size();
		}
		
		int currentTabStart = (currentPage / 10)*10 + 1;
		int currentTabEnd = currentTabStart + 9;
		
		if (currentTabEnd > pagesOfNotification.size()) {
			currentTabEnd = pagesOfNotification.size(); 
		}
		
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("currentTabStart", currentTabStart);
		model.addAttribute("currentTabEnd", currentTabEnd);
		model.addAttribute("totalPage", pagesOfNotification.size());
		
		
		model.addAttribute("NoticeAllList", noticeAllList);

		return "board/noticeBoard";

	}

	  //검색 게시판용....
	  @RequestMapping(value="/noticeSearch" ,method=RequestMethod.GET) 
	  public String requsetNoticeListByKeyword(@RequestParam(required=false,defaultValue="") String keyword, Model model) {
	  
	 
	  return "board/noticeBoardSearch"; 
	  
	  }
	 

	// 공지 리스트 하나 보기 getmapping ,viewCnt도 같이 호출하여 증가시키기
	@GetMapping("/noticeone")
	public String requestNoticeOneList(Model model, @RequestParam("id") int id) {

		noticeboardService.setNoticeViewCnt(id); // 순차적으로 처리되기 때문에 조회수 업데이트 됨

		model.addAttribute("NoticeOneList", noticeboardService.getNoticeOne(id));

		return "board/oneNoticeList";
	}
	// 검색 기능 구현 컨트롤러

}
