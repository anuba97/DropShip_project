package com.java.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.home.service.MemberService;
import com.java.vo.MemberVo;

import de.bsi.openai.FormInputDTO;
import de.bsi.openai.OpenAiApiClient;
import de.bsi.openai.OpenAiApiClient.OpenAiService;
import de.bsi.openai.chatgpt.CompletionRequest;
import de.bsi.openai.chatgpt.CompletionResponse;
import de.bsi.openai.dalle.GenerationRequest;
import de.bsi.openai.dalle.GenerationResponse;


@Controller
public class AiController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MemberVo memberVo;
	

	//--------------↓↓↓---------- ChatGPT 채팅 관련 ----------↓↓↓-------------------//
		private static final String MAIN_PAGE = "chat_index";

		@Autowired
		private ObjectMapper jsonMapper;
		
		OpenAiApiClient client = new OpenAiApiClient();
		
//		@Autowired
//		private OpenAiApiClient client;

		private String chatWithGpt3(String message) throws Exception {
			CompletionRequest completion = CompletionRequest.defaultWith(message);
			String postBodyJson = jsonMapper.writeValueAsString(completion);
			String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.GPT_3);
			CompletionResponse completionResponse = jsonMapper.readValue(responseBody, CompletionResponse.class);
			return completionResponse.firstAnswer()
					.orElseThrow(() -> new Exception("Error in communication with OpenAI ChatGPT API."));
		}

		@GetMapping("chat_index")
		public String chat_index() {
			return MAIN_PAGE;
		}

		@PostMapping("chat_index")
		public String chat_index(Model model, @ModelAttribute FormInputDTO dto) {
			try {
				model.addAttribute("request", dto.getPrompt());
				model.addAttribute("response", chatWithGpt3(dto.getPrompt()));
			} catch (Exception e) {
				model.addAttribute("response", "ChatGpt와의 통신에서 오류가 발생했습니다..");
			}
			return MAIN_PAGE;
		}

		//--------------↓↓↓---------- ChatGPT DALL-E(그림그려주는) 관련 ----------↓↓↓-------------------//
		public static final String IMAGE_PAGE = "image";
		
		private String drawImageWithDallE(String prompt) throws Exception {
				System.out.println("drawImageWithDallE 메소드 안으로 들어옴! ");
				System.out.println("내가 보낸 프롬프트 : " + prompt);
	    	GenerationRequest generation = GenerationRequest.defaultWith(prompt);
	    		System.out.println("generation 객체의 response_form : " + generation.getResponse_format());
		    	System.out.println("generation ㅋㅋㅋ: " + generation);
		    String postBodyJson = jsonMapper.writeValueAsString(generation);
			    System.out.println("postBodyJson ㅋㅋㅋ: " + postBodyJson);
		    String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.DALL_E);
			    System.out.println("responseBody ㅋㅋㅋ: " + responseBody);
		    GenerationResponse completionResponse = jsonMapper.readValue(responseBody, GenerationResponse.class);
			    System.out.println("completionResponse 객체!!: " +completionResponse);
			    System.out.println("completionResponse의 data : " +completionResponse.getData());
			    System.out.println("completionResponse의 firstImageUrl : " +completionResponse.firstImageUrl());
			    System.out.println("completionResponse의 ImageUrl클래스의 url변수 : " +completionResponse.getData().get(0).getUrl());
		    return completionResponse.firstImageUrl().orElseThrow(() -> new RuntimeException("API로부터 이미지를 받아오지 못했습니다..."));
		}
		
		// 이미지 생성 페이지로 이동 
		@GetMapping("/ai/image_generate")
		public String paintImage(Model model) {
			String imageUri = (String) session.getAttribute("imageUri");
		    model.addAttribute("imageUri", imageUri);
			return "home/ai/image_generate";
		}
		
		// 이미지 생성 실행
		@PostMapping("/ai/image_generate")
		public String drawImage(Model model, FormInputDTO dto, String generate_work_name, 
				String prompt, String generate_work_content) throws Exception {
			
			//회원 이름하나 알기위해 회원객체 가져옴
			int member_id = (int) session.getAttribute("sessionMember_id");
			memberVo = memberService.selectOne(member_id);
			String member_name = memberVo.getMember_name();
			
				System.out.println("generate_work_name : " + generate_work_name );
				System.out.println("generate_work_content : " + generate_work_content);
				System.out.println("request : " +dto.getPrompt());
				System.out.println("imageUri : " +drawImageWithDallE(dto.getPrompt()));
				
			// 이미지 생성에 필요한 것들	(필수)
			model.addAttribute("request", dto.getPrompt());
			model.addAttribute("imageUri", drawImageWithDallE(dto.getPrompt()));
			
			// 이미지 생성 후 제목, 사용한 프롬프트 보여줄 목적(필수는 아님)  
			model.addAttribute("generate_work_name", generate_work_name);
			model.addAttribute("prompt", dto.getPrompt());
			model.addAttribute("generate_work_content", generate_work_content);
			model.addAttribute("member_name", member_name);
			
			if(session.getAttribute("imageUri") == null) {	// 세션이 있으면, 즉 이미 한번 생성했으면 
				session.setAttribute("imageUri", drawImageWithDallE(dto.getPrompt()));
			}
			
			
//			return "home/ai/image_generate";
			return "redirect:image_generate";
		}
	
	
	
}// AiController
