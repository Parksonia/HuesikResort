package com.kopo.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.kopo.domain.NoticeBoard;
import com.kopo.repository.Repository.NoticeRepository;
import com.kopo.service.Service.NoticeBoardService;


@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private Resource uploadDirResource;
	
	@Autowired
	private NoticeRepository noticeboardrepository;

	// textarea summernote imgfile경로 삽입 방법1.
	public String saveUploadedFile(MultipartFile file) throws IOException {
	
		String uploadDirectory = uploadDirResource.getFile().getAbsolutePath();
		System.out.println(uploadDirectory); //C:\Workspace_Spring\Reservation_forest\src\main\webapp\resources\summernoteImg
		
		 if (!file.isEmpty()) {
	            try {
	                // 이미지를 저장할 디렉토리 생성 (만약 존재하지 않는 경우)
	                File directory = new File(uploadDirectory);
	                if (!directory.exists()) {
	                    directory.mkdirs();
	                }

	                // 이미지 파일의 원래 이름 가져오기
	                String originalFileName = file.getOriginalFilename();
	                // 이미지를 저장할 경로 설정
	                String filePath = Paths.get(uploadDirectory, originalFileName).toString();

	                // 이미지 파일을 지정된 경로로 저장
	                Files.copy(file.getInputStream(), Paths.get(filePath), StandardCopyOption.REPLACE_EXISTING);

	                // 이미지 URL 반환 (예: 웹 애플리케이션 URL)
	                return "/controller/resources/summernoteImg/" + originalFileName;
	           
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return null;
	}
	//textarea summernote imgfile경로 삽입 방법2.
	public JsonObject SummerNoteImageFile(MultipartFile file,HttpServletRequest req) {
	
		JsonObject jsonObject = new JsonObject();

		    // 웹 애플리케이션의 컨텍스트 경로를 가져옵니다
		    String contextPath = req.getContextPath(); //controller
		    String fileRoot = "C:\\Workspace_Spring\\Reservation_forest\\src\\main\\webapp\\resources\\"; //file저장될 경로 
		    String originalFileName = file.getOriginalFilename();
		    String extension = originalFileName.substring(originalFileName.lastIndexOf("."));
		    
		    String saveFileName = UUID.randomUUID() + extension; //imgfile중복제거를 위한 작업 
		    
		    File targetFile = new File(fileRoot + "summernoteImg\\" + saveFileName); // 파일 생성

		    try {
		        InputStream fileStream = file.getInputStream();
		        FileUtils.copyInputStreamToFile(fileStream, targetFile);
		        
		        // 이미지 URL을 생성할 때 웹 경로를 포함시킵니다
		        jsonObject.addProperty("url", contextPath + "/resources/summernoteImg/" + saveFileName);
		        jsonObject.addProperty("responseCode", "success");
		    } catch (IOException e) {
		        FileUtils.deleteQuietly(targetFile);
		        jsonObject.addProperty("responseCode", "error");
		        e.printStackTrace();
		    }
		    
		    return jsonObject;
		}
	
	//공지 게시
	@Override
	public void setNewNoticeBoard(NoticeBoard noticeboard) {
		noticeboardrepository.setNewNoticeBoard(noticeboard);
	}
	
	//공지 전체 리스트 출력
	@Override
	public List<NoticeBoard> getNoticeAll() { /* Criteria cri,String keyword,String condition */
	
		return noticeboardrepository.getNoticeAll();
	}
	@Override
	public void setNoticeViewCnt(int id) {
		noticeboardrepository.setNoticeViewCnt(id);
		
	}
	@Override
	public List<NoticeBoard> getNoticeOne(int id) {
		
		return noticeboardrepository.getNoticeOne(id);
	}


	
}
