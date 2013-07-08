package dev.yangshengtang.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dev.yangshengtang.service.YstAnswerService;
import dev.yangshengtang.service.YstQuestionService;

@RequestMapping("/answerquestions")
@Controller
public class YstUserAnswerQuestionController {
	@Autowired
    YstQuestionService ystQuestionService;
    
    @Autowired
    YstAnswerService ystAnswerService;
    
    @RequestMapping(produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ystquestions", ystQuestionService.findYstQuestionEntries(firstResult, sizeNo));
            float nrOfPages = (float) ystQuestionService.countAllYstQuestions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ystquestions", ystQuestionService.findAllYstQuestions());
        }
        return "user/questions/list";
    }
}
