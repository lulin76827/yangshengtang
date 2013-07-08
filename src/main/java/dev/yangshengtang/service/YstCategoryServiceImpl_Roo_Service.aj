// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.repository.YstCategoryRepository;
import dev.yangshengtang.service.YstCategoryServiceImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect YstCategoryServiceImpl_Roo_Service {
    
    declare @type: YstCategoryServiceImpl: @Service;
    
    declare @type: YstCategoryServiceImpl: @Transactional;
    
    @Autowired
    YstCategoryRepository YstCategoryServiceImpl.ystCategoryRepository;
    
    public long YstCategoryServiceImpl.countAllYstCategorys() {
        return ystCategoryRepository.count();
    }
    
    public void YstCategoryServiceImpl.deleteYstCategory(YstCategory ystCategory) {
        ystCategoryRepository.delete(ystCategory);
    }
    
    public YstCategory YstCategoryServiceImpl.findYstCategory(Integer id) {
        return ystCategoryRepository.findOne(id);
    }
    
    public List<YstCategory> YstCategoryServiceImpl.findAllYstCategorys() {
        return ystCategoryRepository.findAll();
    }
    
    public List<YstCategory> YstCategoryServiceImpl.findYstCategoryEntries(int firstResult, int maxResults) {
        return ystCategoryRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void YstCategoryServiceImpl.saveYstCategory(YstCategory ystCategory) {
        ystCategoryRepository.save(ystCategory);
    }
    
    public YstCategory YstCategoryServiceImpl.updateYstCategory(YstCategory ystCategory) {
        return ystCategoryRepository.save(ystCategory);
    }
    
}
