// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstPathogenesis;
import dev.yangshengtang.repository.YstPathogenesisRepository;
import dev.yangshengtang.service.YstPathogenesisServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstPathogenesisServiceImpl_Roo_Service {
    
    declare @type: YstPathogenesisServiceImpl: @Service;
    
    declare @type: YstPathogenesisServiceImpl: @Transactional;
    
    @Autowired
    YstPathogenesisRepository YstPathogenesisServiceImpl.ystPathogenesisRepository;
    
    public long YstPathogenesisServiceImpl.countAllYstPathogeneses() {
        return ystPathogenesisRepository.count();
    }
    
    public void YstPathogenesisServiceImpl.deleteYstPathogenesis(YstPathogenesis ystPathogenesis) {
        ystPathogenesisRepository.delete(ystPathogenesis);
    }
    
    public YstPathogenesis YstPathogenesisServiceImpl.findYstPathogenesis(Integer id) {
        return ystPathogenesisRepository.findOne(id);
    }
    
    public List<YstPathogenesis> YstPathogenesisServiceImpl.findAllYstPathogeneses() {
        return ystPathogenesisRepository.findAll();
    }
    
    public List<YstPathogenesis> YstPathogenesisServiceImpl.findYstPathogenesisEntries(int firstResult, int maxResults) {
        return ystPathogenesisRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void YstPathogenesisServiceImpl.saveYstPathogenesis(YstPathogenesis ystPathogenesis) {
        ystPathogenesisRepository.save(ystPathogenesis);
    }
    
    public YstPathogenesis YstPathogenesisServiceImpl.updateYstPathogenesis(YstPathogenesis ystPathogenesis) {
        return ystPathogenesisRepository.save(ystPathogenesis);
    }
    
}
