package com.java.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

import de.bsi.openai.FormInputDTO;
import de.bsi.openai.OpenAiApiClient;
import de.bsi.openai.OpenAiApiClient.OpenAiService;
import de.bsi.openai.chatgpt.CompletionRequest;
import de.bsi.openai.chatgpt.CompletionResponse;
import de.bsi.openai.dalle.GenerationRequest;
import de.bsi.openai.dalle.GenerationResponse;


@Controller
public class FController {

	@Autowired
	ShopService shopservice;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;

	@GetMapping("/")
	public String index(Model model) {
		List<WorkVo> list = shopservice.selectWorkBest(); // best작품 가져오기
		List<WorkVo> newList = shopservice.selectWorkNew(); // new작품 가져오기
		model.addAttribute("BestList", list);
		model.addAttribute("newList", newList);
		System.out.println("DB에서 받아온 BestList : " + list);
		return "index";
	}

	@GetMapping("/search")
	public String search(Model model) {
		return "home/bxabout/search";
	}

	//--------------↓↓↓---------- ChatGPT 채팅 관련 ----------↓↓↓-------------------//
	private static final String MAIN_PAGE = "chat_index";

	@Autowired
	private ObjectMapper jsonMapper;
	
	OpenAiApiClient client = new OpenAiApiClient();
	
//	@Autowired
//	private OpenAiApiClient client;

	private String chatWithGpt3(String message) throws Exception {
		CompletionRequest completion = CompletionRequest.defaultWith(message);
		String postBodyJson = jsonMapper.writeValueAsString(completion);
		String responseBody = client.postToOpenAiApi(postBodyJson, OpenAiService.GPT_3);
		CompletionResponse completionResponse = jsonMapper.readValue(responseBody, CompletionResponse.class);
		return completionResponse.firstAnswer()
				.orElseThrow(() -> new Exception("Error in communication with OpenAI ChatGPT API."));
	}

	@GetMapping("chat_index")
	public String index() {
		return MAIN_PAGE;
	}

	@PostMapping("chat_index")
	public String chat(Model model, @ModelAttribute FormInputDTO dto) {
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
	    return completionResponse.firstImageUrl().orElseThrow(() -> new RuntimeException("API로부터 이미지를 받아오지 못했습니다.."));
	}
	
	@GetMapping(IMAGE_PAGE)
	public String paintImage() {
		return IMAGE_PAGE;
	}
	
	@PostMapping(IMAGE_PAGE)
	public String drawImage(Model model, FormInputDTO dto) throws Exception {
			System.out.println("이미지 @PostMapping으로 들어왔음");
			System.out.println("request ㅋㅋㅋ: " +dto.getPrompt());
			System.out.println("imageUri ㅋㅋㅋ: " +drawImageWithDallE(dto.getPrompt()));
		model.addAttribute("request", dto.getPrompt());
		model.addAttribute("imageUri", drawImageWithDallE(dto.getPrompt()));
		return IMAGE_PAGE;
	}
	
	
	
}// FController
