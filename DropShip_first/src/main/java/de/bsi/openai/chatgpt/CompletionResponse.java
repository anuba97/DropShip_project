package de.bsi.openai.chatgpt;

import java.util.List;
import java.util.Optional;

public class CompletionResponse {
	
	private Usage usage;
	private List<Choice> choices;
	
	public Optional<String> firstAnswer() {
		if (choices == null || choices.isEmpty())
			return Optional.empty();
		return Optional.of(choices.get(0).text);
	}
	
	public static class Usage {
		private int total_tokens;
		private int prompt_tokens;
		private int completion_tokens;
		
		public int getTotal_tokens() {
			return total_tokens;
		}
		public void setTotal_tokens(int total_tokens) {
			this.total_tokens = total_tokens;
		}
		public int getPrompt_tokens() {
			return prompt_tokens;
		}
		public void setPrompt_tokens(int prompt_tokens) {
			this.prompt_tokens = prompt_tokens;
		}
		public int getCompletion_tokens() {
			return completion_tokens;
		}
		public void setCompletion_tokens(int completion_tokens) {
			this.completion_tokens = completion_tokens;
		}
	}
	
	public static class Choice {
		private String text;
		
		public String getText() {
			return text;
		}
		public void setText(String text) {
			this.text = text;
		}
	}
}



//package de.bsi.openai.chatgpt;
//
//import java.util.List;
//import java.util.Optional;
//
//public record CompletionResponse(Usage usage, List<Choice> choices) {
//	
//	public Optional<String> firstAnswer() {
//		if (choices == null || choices.isEmpty())
//			return Optional.empty();
//		return Optional.of(choices.get(0).text);
//	}
//	
//	record Usage(int total_tokens, int prompt_tokens, int completion_tokens) {}
//	
//	record Choice(String text) {}
//}
