package com.java.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.service.BoardService;
import com.java.vo.BoardVo;
import com.java.vo.BoardVo2;

@Controller
public class BoardController {

	@Autowired
	BoardService boardService;
	
	// ------ [  글쓰기 페이지 이동 ] -----------------------------------
	@GetMapping("board/fboardWrite") //글쓰기 페이지 이동  - GET 방식 		// 들어오는 url
	public String fboardWrite(Model model) {
		return "board/fboardWrite";	
//		return "board/fboardReply";		
		// return을 했다는 것이 fboardReply로의 페이지url '이동'은 아님. 
		// url은 이렇게 안바뀜. localhost/board/fboardWrite 이렇게 돼있을 것. 
		// 보여지는 것만 fboardReply.jsp 페이지가 보여짐
	}
	@GetMapping("board/fboardWrite2") // 다중 파일 페이지 이동
	public String fboardWrite2(Model model) {
		return "board/fboardWrite2";	
	}
	@GetMapping("board/fboardWrite3") // ajax 글쓰기
	public String fboardWrite3(Model model) {
		return "board/fboardWrite3";	
	}
	//------------------------------------------------------------------
	
	// ------ [  글쓰기 저장   ] -----------------------------------
	@PostMapping("board/fboardWrite3") // 글쓴 거 저장 
	@ResponseBody	// - ajax로 넘어온 거 받기
	public String fboardWrite3(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { 
		// 업로드 파일이 없을 경우 - boardVo 의 bfile을 빈 공백으로 넣어줘야 에러 안남
		boardVo.setBfile("");
		
		if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV006\\git\\springBoot\\sts0221\\src\\main\\resources\\static\\upload\\";
//			String fileSaveUrl = "/upload";
			File f = new File(fileSaveUrl + uploadFileName); //  /upload/23213213_a.jpg 로 저장됨 
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("fboardWrite3 uploadFileName : " + uploadFileName);
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setBfile(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		boardService.insertBoard(boardVo);
		
		return "redirect:/board/fboardList";	// fboardList로 리다이렉트
	}// 글쓴 거 저장 (파일저장도)
	
	
	@PostMapping("board/fboardWrite") // 글쓴 거 저장 - POST 방식
	public String fboardWrite(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { // bfile로 보냈어도 알아서 받음
		// 업로드 파일이 없을 경우 - boardVo 의 bfile을 빈 공백으로 넣어줘야 에러 안남
		boardVo.setBfile("");
		
		if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV006\\git\\springBoot\\sts0221\\src\\main\\resources\\static\\upload\\";
//			String fileSaveUrl = "/upload";
			File f = new File(fileSaveUrl + uploadFileName); //  /upload/23213213_a.jpg 로 저장됨 
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setBfile(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		boardService.insertBoard(boardVo);
		
		return "redirect:/board/fboardList";	// fboardList로 리다이렉트
	}// 글쓴 거 저장 (파일저장도)
	
	
	@PostMapping("board/fboardWrite2") // 다중 파일 글 쓰기 저장
	public String fboardWrite(BoardVo2 boardVo2, @RequestPart List<MultipartFile> files, Model model) { // bfile로 보냈어도 알아서 받음
		// 업로드 파일이 없을 경우 - boardVo 의 bfile을 빈 공백으로 넣어줘야 에러 안남
		boardVo2.setBfile("");
		boardVo2.setBfile2("");
		
		String[] uploadFileName = new String[2];
		
		if(!files.isEmpty()) {
			
			for(int i = 0; i < files.size(); i++) {
				String originFileName = files.get(i).getOriginalFilename(); // 원본 파일명 받기
				long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
				// a.jpg -> 123524123232_a.jpg 로 저장
				uploadFileName[i] = String.format("%d_%s", time, originFileName);
				String fileSaveUrl = "C:\\Users\\KV006\\git\\springBoot\\sts0221\\src\\main\\resources\\static\\upload\\";
				File f = new File(fileSaveUrl + uploadFileName[i]); //  /upload/23213213_a.jpg 로 저장됨 
				try {
					files.get(i).transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				// 변경된 파일이름을 boardVo 객체에 저장
				if(i == 0) boardVo2.setBfile(uploadFileName[i]);
				else boardVo2.setBfile2(uploadFileName[i]);
				
				System.out.println("uploadFileName[i] : " + uploadFileName[i]);
				
			}// for
		} // if 
		
//		boardService.insertBoard(boardVo2);
		
		return "redirect:/board/fboardList";	// fboardList로 리다이렉트
	}// 다중 파일 글쓴 거 저장 (파일저장도)
	//---------------------------------------------------------------------------
	
	@GetMapping("board/fboardList")	// 전체게시글 가져오기
	public String fboardList(@RequestParam(defaultValue = "1") int page, Model model) {
		// 모든 게시글 정보 model에 추가
//		List<BoardVo> list =  boardService.selectBoardList();
		Map<String, Object> map = boardService.selectBoardList(page);
		model.addAttribute("map", map);
		
		return "board/fboardList";
	}
	
	
	// 객체로 받아서 객체로 넘기는 방식(Model로 넘기는 것도 가능)
	@RequestMapping("board/fboardView") // 1개 게시글 가져오기    // url 	
	public String fboardView(@RequestParam int bno, 
			@RequestParam(defaultValue = "1") int page, Model model) {	// 형변환 없이도 바로 받을 수 있음. 원랜 id가 String인데도.
		
		BoardVo boardVo = boardService.selectOne(bno);
		
		model.addAttribute("boardVo", boardVo);
		model.addAttribute("page", page);
		
//		return "board/fboardView"; // 폴더. url과 전혀 다름.
//		return "index"; //  '/'나 '/index' 이렇게 하면 안됨
//		return "redirect:/?num=10&page=2";	//redirect:/ 이거만 하면 데이터 안넘어감. 왜냐면 redirect페이지로 완전 이동하는 거니까.
		return "board/fboardView";
	}
	
	@GetMapping("board/fboardUpdate") // 게시글 수정페이지 이동
	public String fboardUpdate(@RequestParam int bno, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		
		BoardVo boardVo = boardService.selectOne(bno);
		model.addAttribute("boardVo", boardVo);
		model.addAttribute("page", page);
		return "board/fboardUpdate";
	}
	
	@PostMapping("board/fboardUpdate") // 게시글 수정
	public String fboardUpdate(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { // bfile로 보냈어도 알아서 받음
		
		if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV006\\git\\springBoot\\sts0221\\src\\main\\resources\\static\\upload\\";
			File f = new File(fileSaveUrl + uploadFileName); //  /upload/23213213_a.jpg 로 저장됨 
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setBfile(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		boardService.updateBoard(boardVo);
		return "redirect:/board/fboardView?bno="+boardVo.getBno();	// fboardList로 리다이렉트
	}// 글쓴 거 저장 (파일저장도)
	
	
	@GetMapping("board/fboardDelete") // 게시글 삭제
	public String fboardDelete(@RequestParam int bno, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		
		boardService.deleteBoard(bno);
		
		return "redirect:/board/fboardList";
	}
	
	@GetMapping("board/fboardReply") // 답글 페이지 이동
	public String fboardReply(@RequestParam int bno, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		
		BoardVo boardVo = boardService.selectOne(bno);
		model.addAttribute("boardVo", boardVo);
		model.addAttribute("page", page);
		return "board/fboardReply";
	}
	
	@PostMapping("board/fboardReply") // 답글 달기
	public String fboardReply(BoardVo boardVo, @RequestPart MultipartFile file, Model model) {
		
		// 업로드 파일이 없을 경우 - boardVo 의 bfile을 빈 공백으로 넣어줘야 에러 안남
		boardVo.setBfile("");
		
		if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = "C:\\Users\\KV006\\git\\springBoot\\sts0221\\src\\main\\resources\\static\\upload\\";
			File f = new File(fileSaveUrl + uploadFileName); //  /upload/23213213_a.jpg 로 저장됨 
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setBfile(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		boardService.insertReply(boardVo);
				
		
		return "redirect:/board/fboardList";
	}
	
	
	
	
//	// @RequestParam으로 받아서 Model로 넘기는 방식
//	@PostMapping("board/fboardView")
//	public String fboardView(@RequestParam(required = false, defaultValue = "1") int id, @RequestParam String btitle, Model model) {	// 형변환 없이도 바로 받을 수 있음. 원랜 id가 String인데도.
//		model.addAttribute("id", id);	// getAttribute이런거 없이 그냥 알아서 바로 받아지니까 바로 보낼 수.
//		model.addAttribute("btitle", btitle);	
//		return "board/fboardView";
//	}
	
//	// HttpServletRequest 으로 받아와서 Model로 넘기는 방식
//	@PostMapping("board/fboardView")
//	public String fboardView(HttpServletRequest request ,Model model) {
//		int id = Integer.parseInt(request.getParameter("id")); 
//		model.addAttribute("id", id);
//		return "board/fboardView";
//	}
	
	
	
}
