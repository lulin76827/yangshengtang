// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.web.admin;

import dev.yangshengtang.domain.YstQuestion;
import dev.yangshengtang.service.YstAnswerService;
import dev.yangshengtang.service.YstCategoryService;
import dev.yangshengtang.service.YstQuestionService;
import dev.yangshengtang.web.admin.YstQuestionController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect YstQuestionController_Roo_Controller {
    
    @Autowired
    YstQuestionService YstQuestionController.ystQuestionService;
    
    @Autowired
    YstAnswerService YstQuestionController.ystAnswerService;
    
    @Autowired
    YstCategoryService YstQuestionController.ystCategoryService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String YstQuestionController.create(@Valid YstQuestion ystQuestion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ystQuestion);
            return "admin/questions/create";
        }
        uiModel.asMap().clear();
        ystQuestionService.saveYstQuestion(ystQuestion);
        return "redirect:/admin/questions/" + encodeUrlPathSegment(ystQuestion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String YstQuestionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new YstQuestion());
        return "admin/questions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String YstQuestionController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("ystquestion", ystQuestionService.findYstQuestion(id));
        uiModel.addAttribute("itemId", id);
        return "admin/questions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String YstQuestionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("ystquestions", ystQuestionService.findYstQuestionEntries(firstResult, sizeNo));
            float nrOfPages = (float) ystQuestionService.countAllYstQuestions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("ystquestions", ystQuestionService.findAllYstQuestions());
        }
        return "admin/questions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String YstQuestionController.update(@Valid YstQuestion ystQuestion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, ystQuestion);
            return "admin/questions/update";
        }
        uiModel.asMap().clear();
        ystQuestionService.updateYstQuestion(ystQuestion);
        return "redirect:/admin/questions/" + encodeUrlPathSegment(ystQuestion.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String YstQuestionController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, ystQuestionService.findYstQuestion(id));
        return "admin/questions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String YstQuestionController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        YstQuestion ystQuestion = ystQuestionService.findYstQuestion(id);
        ystQuestionService.deleteYstQuestion(ystQuestion);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/admin/questions";
    }
    
    void YstQuestionController.populateEditForm(Model uiModel, YstQuestion ystQuestion) {
        uiModel.addAttribute("ystQuestion", ystQuestion);
        uiModel.addAttribute("ystanswers", ystAnswerService.findAllYstAnswers());
        uiModel.addAttribute("ystcategorys", ystCategoryService.findAllYstCategorys());
    }
    
    String YstQuestionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
