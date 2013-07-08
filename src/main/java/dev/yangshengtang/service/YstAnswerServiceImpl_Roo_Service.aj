// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.repository.YstAnswerRepository;
import dev.yangshengtang.service.YstAnswerServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstAnswerServiceImpl_Roo_Service {
    
    declare @type: YstAnswerServiceImpl: @Service;
    
    declare @type: YstAnswerServiceImpl: @Transactional;
    
    @Autowired
    YstAnswerRepository YstAnswerServiceImpl.ystAnswerRepository;
    
    public long YstAnswerServiceImpl.countAllYstAnswers() {
        return ystAnswerRepository.count();
    }
    
    public void YstAnswerServiceImpl.deleteYstAnswer(YstAnswer ystAnswer) {
        ystAnswerRepository.delete(ystAnswer);
    }
    
    public YstAnswer YstAnswerServiceImpl.findYstAnswer(Integer id) {
        return ystAnswerRepository.findOne(id);
    }
    
    public List<YstAnswer> YstAnswerServiceImpl.findAllYstAnswers() {
        return ystAnswerRepository.findAll();
    }
    
    public List<YstAnswer> YstAnswerServiceImpl.findYstAnswerEntries(int firstResult, int maxResults) {
        return ystAnswerRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void YstAnswerServiceImpl.saveYstAnswer(YstAnswer ystAnswer) {
        ystAnswerRepository.save(ystAnswer);
    }
    
    public YstAnswer YstAnswerServiceImpl.updateYstAnswer(YstAnswer ystAnswer) {
        return ystAnswerRepository.save(ystAnswer);
    }
    
}