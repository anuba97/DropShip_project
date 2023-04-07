package de.bsi.openai.chatgpt;

public class CompletionRequest {
    private String model;
    private String prompt;
    private double temperature;
    private int max_tokens;
    
    public CompletionRequest(String model, String prompt, double temperature, int max_tokens) {
        this.model = model;
        this.prompt = prompt;
        this.temperature = temperature;
        this.max_tokens = max_tokens;
    }
    
    public static CompletionRequest defaultWith(String prompt) {
        return new CompletionRequest("text-davinci-003", prompt, 0.7, 500);
    }
    
    public String getModel() {
        return model;
    }
    
    public String getPrompt() {
        return prompt;
    }
    
    public double getTemperature() {
        return temperature;
    }
    
    public int getMaxTokens() {
        return max_tokens;
    }
}






//package de.bsi.openai.chatgpt;
//
//public record CompletionRequest(String model, String prompt, 	// https://platform.openai.com/docs/api-reference/chat/create
//		double temperature, int max_tokens) {
//	
//	public static CompletionRequest defaultWith(String prompt) {
//		return new CompletionRequest("text-davinci-003", prompt, 0.7, 500);
//	}
//	
//}
