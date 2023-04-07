package de.bsi.openai;

//public record FormInputDTO(String prompt) {}

public class FormInputDTO {
    private final String prompt;

    public FormInputDTO(String prompt) {
        this.prompt = prompt;
    }

    public String getPrompt() {
        return prompt;
    }
}