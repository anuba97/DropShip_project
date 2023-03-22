package kr.co.dropship.controller;

import javax.servlet.http.HttpSession;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.dropship.service.AdminMemberService;
import kr.co.dropship.vo.AdminMemberVo;

@Controller
public class AdminMemberController {
	
	@Autowired
	AdminMemberService adminMemberService;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("admin_login")//로그인 진행
	public String admin_login(@RequestParam String admin_id, @RequestParam String admin_pw, Model model) {
		int loginResult = 0;
		AdminMemberVo adminMemberVo = adminMemberService.adminMemberSelectOne(admin_id, admin_pw);
		if ( adminMemberVo != null ) {
			model.addAttribute("adminMemberVo", adminMemberVo);
			session.setAttribute("sessionAdminId", adminMemberVo.getAdmin_id());
			session.setAttribute("sessionAdminName", adminMemberVo.getAdmin_name());
			session.setAttribute("sessionSuperAdmin", adminMemberVo.getAdmin_issuper());
			session.setAttribute("sessionBan", adminMemberVo.getAdmin_ban());
			loginResult = 1;
			model.addAttribute("loginResult", loginResult);
		}else {
			loginResult = 0;
			model.addAttribute("loginResult", loginResult);
		}
		return "doAdmin";
	}//admin_login
	
	@GetMapping("admin_memberList")//admin 전체 정보 가져오기
	public String admin_memberList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = adminMemberService.selectAdminList(page);
		model.addAttribute("map", map);
		return "admin_memberList";
	}//admin_memberList
	
	@RequestMapping("admin_memberList")//admin 연락처&등급&상태 수정
	public String admin_memberChange(AdminMemberVo adminMemberVo, Model model) {
		int updateResult = 0;
		adminMemberService.updateAdminData(adminMemberVo);
		model.addAttribute("adminMemberVo", adminMemberVo);
		if(adminMemberVo != null) {
			updateResult = 1;
			model.addAttribute("updateResult", updateResult);
		}else {
			updateResult = 0;
			model.addAttribute("updateResult", updateResult);
		}
		return "doAdmin";
//		return "redirect:admin_memberList="+dataResult;
	}//admin_memberChange
	
	@GetMapping("admin_memberAdd")//admin 추가 페이지 열기
	public String admin_memberAdd(Model model) {
		return "admin_memberAdd";
	}//admin_memberAdd
	
	@PostMapping("admin_memberAdd")//admin 추가하기
	public String admin_memberAdd(AdminMemberVo adminMemberVo, Model model) {
		int addResult = 0;
		adminMemberService.insertMember(adminMemberVo);
		if(adminMemberVo != null) {
			addResult = 1;
			model.addAttribute("addResult", addResult);
		}else {
			addResult = 0;
			model.addAttribute("addResult", addResult);
		}
		return "doAdmin";
	}//admin_memberAdd
	
	@PostMapping("adminMemberCheckId")//ID 중복 체크
	@ResponseBody
	public int adminMemberCheckId(@RequestParam String admin_id) {
		int flag = adminMemberService.adminMemberCheckId(admin_id);
		return flag;
	}//adminMemberCheckId
	
	@GetMapping("admin_memberModify")//admin 1명 정보보기
	public String admin_memberModify(@RequestParam String admin_id, Model model) {
		AdminMemberVo adminMemberVo = adminMemberService.selectOne(admin_id);
		model.addAttribute("adminMemberVo", adminMemberVo);
		return "admin_memberModify";
	}//admin_memberModify

	@RequestMapping("admin_memberModifyPW")//admin 비번수정 페이지 이동하기
	public String admin_memberModifyPW(@RequestParam String admin_id, Model model) {
		AdminMemberVo adminMemberVo = adminMemberService.selectOne(admin_id);
		model.addAttribute("adminMemberVo", adminMemberVo);
		return "admin_memberModifyPW";
	}//admin_memberModifyPW
	
	@RequestMapping("admin_memberPW")//admin 자기 자신의 PW 수정
	public String admin_memberChangePW(AdminMemberVo adminMemberVo, Model model) {
		int PWResult = 0;
		adminMemberService.updateAdminPW(adminMemberVo);
		model.addAttribute("adminMemberVo", adminMemberVo);
		if(adminMemberVo != null) {
			PWResult = 1;
			model.addAttribute("PWResult", PWResult);
		}else {
			PWResult = 0;
			model.addAttribute("PWResult", PWResult);
		}
		return "doAdmin";
	}//admin_memberChangePW
	
	@GetMapping("admin_memberDelete") //1개 ADMIN 삭제하기
	public String admin_memberDelete(@RequestParam String admin_id, Model model) {
		adminMemberService.memberDelete(admin_id);
		int deleteResult = 0;
		if(admin_id != null) {
			deleteResult = 1;
			model.addAttribute("deleteResult", deleteResult);
		}else {
			deleteResult = 0;
			model.addAttribute("deleteResult", deleteResult);
		}
		return "doAdmin";
	}//admin_memberDelete
	
	@GetMapping("admin_logout")//로그아웃 진행하기
	public String admin_logout(Model model) {
		return "admin_logout";
	}//admin_logout

}//Bx_adminMemberController
