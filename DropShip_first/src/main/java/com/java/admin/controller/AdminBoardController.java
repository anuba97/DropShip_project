package com.java.admin.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.admin.service.AdminService;
import com.java.admin.service.BoardNoticeService;
import com.java.vo.BoardNoticeVo;

@Controller
public class AdminBoardController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	BoardNoticeService boardNoticeService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	BoardNoticeVo boardNoticeVo;
	
	@GetMapping("admin_eventBoardAdd")
	public String admin_eventBoardAdd(Model model) {
		return "admin/admin_eventBoardAdd";
	}
	@GetMapping("admin_eventBoardView")
	public String admin_eventBoardView(Model model) {
		return "admin/admin_eventBoardView";
	}
	
	@GetMapping("admin_eventBoardModify")
	public String admin_eventBoardModify(Model model) {
		return "admin/admin_eventBoardModify";
	}
	
	//공지 추가 페이지로 이동
	@GetMapping("admin_noticeBoardAdd")
	public String admin_noticeBoardAdd(Model model) {
		return "admin/admin_noticeBoardAdd";
	}
		
	//공지 작성
	@PostMapping("admin_noticeAdd")
	public String admin_noticeAdd(BoardNoticeVo boardNoticeVo, @RequestPart MultipartFile file, Model model) { 
		if ( file.isEmpty() ) {
			boardNoticeVo.setNoticeboard_file_name(""); //업로드파일이 없는 경우
		}else if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV014\\git\\DropShip_Spring\\DropShip_Integrate\\src\\main\\resources\\static\\admin\\upload\\";
			
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 artistVo 객체에 저장
			boardNoticeVo.setNoticeboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		int insertNoticeAddResult = 0;
		boardNoticeService.insertNoticeAdd(boardNoticeVo);
		if(boardNoticeVo != null) {
			insertNoticeAddResult = 1;
			model.addAttribute("insertNoticeAddResult", insertNoticeAddResult);
		}else {
			insertNoticeAddResult = 0;
			model.addAttribute("insertNoticeAddResult", insertNoticeAddResult);
		}
		return "admin/doAdmin";
	}
	
	//공지 1개 보기 이동
	@GetMapping("admin_noticeBoardView")
	public String admin_noticeBoardView(String id, @RequestParam(defaultValue = "1") int page, Model model) {
		boardNoticeVo = boardNoticeService.adminSelectNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		model.addAttribute("page", page);
		return "admin/admin_noticeBoardView";
	}
	
//	@GetMapping("admin_noticeBoardView") //1개 게시글 가져오기
//	public String admin_noticeBoardView(@RequestParam(defaultValue = "1") int id, Model model) {
//		Map<String, Object> map = boardNoticeService.selectNoticeOne(id);
//		model.addAttribute("map", map); //map.boardVo
//		model.addAttribute("id", id);
//		
//		return "admin/admin_noticeBoardView";
//	}
	
	//공지 1개 삭제하기
	@GetMapping("admin_noticeBoardDelete")
	public String admin_noticeBoardDelete(String id, Model model) {
		int noticeDeleteResult = 0;
		boardNoticeService.deleteNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		if(boardNoticeVo != null) {
			noticeDeleteResult = 1;
			model.addAttribute("noticeDeleteResult", noticeDeleteResult);
		}else {
			noticeDeleteResult = 0;
			model.addAttribute("noticeDeleteResult", noticeDeleteResult);
		}
		return "admin/doAdmin";
	}
	
	//공지 수정 페이지로 이동
	@GetMapping("admin_noticeBoardUpdate")
	public String admin_noticeBoardUpdate(String id, Model model) {
		boardNoticeVo = boardNoticeService.adminSelectNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		return "admin/admin_noticeBoardUpdate";
	}
	
	//공지 수정 후 업데이트 진행
	@RequestMapping("admin_noticeBoardUpdate")
	public String admin_noticeBoardUpdate(BoardNoticeVo boardNoticeVo, @RequestPart MultipartFile file, String original_file, Model model) {
		if ( file.isEmpty() ) {
			boardNoticeVo.setNoticeboard_file_name(""); //업로드파일이 없는 경우
		}else if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV014\\git\\DropShip_Spring\\DropShip_Integrate\\src\\main\\resources\\static\\admin\\upload\\";
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 artistVo 객체에 저장
			boardNoticeVo.setNoticeboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		int updateNoticeResult = 0;
		boardNoticeService.updateNoticeBoard(boardNoticeVo);
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		if(boardNoticeVo != null) {
			updateNoticeResult = 1;
			model.addAttribute("updateNoticeResult", updateNoticeResult);
		}else {
			updateNoticeResult = 0;
			model.addAttribute("updateNoticeResult", updateNoticeResult);
		}
		return "admin/doAdmin";
	}
	
	
	@GetMapping("admin_freeBoardAdd")
	public String admin_freeBoardAdd(Model model) {
		return "admin/admin_freeBoardAdd";
	}
	@GetMapping("admin_freeBoardView")
	public String admin_freeBoardView(Model model) {
		return "admin/admin_freeBoardView";
	}
	@GetMapping("admin_freeBoardModify")
	public String admin_freeBoardModify(Model model) {
		return "admin/admin_freeBoardModify";
	}
	
	
	
	
	
}//AdminBoardController
