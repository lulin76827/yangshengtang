// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstQuestion;
import dev.yangshengtang.service.YstQuestionService;
import java.util.List;

privileged aspect YstQuestionService_Roo_Service {
    
    public abstract long YstQuestionService.countAllYstQuestions();    
    public abstract void YstQuestionService.deleteYstQuestion(YstQuestion ystQuestion);    
    public abstract YstQuestion YstQuestionService.findYstQuestion(Integer id);    
    public abstract List<YstQuestion> YstQuestionService.findAllYstQuestions();    
    public abstract List<YstQuestion> YstQuestionService.findYstQuestionEntries(int firstResult, int maxResults);    
    public abstract void YstQuestionService.saveYstQuestion(YstQuestion ystQuestion);    
    public abstract YstQuestion YstQuestionService.updateYstQuestion(YstQuestion ystQuestion);    
}
