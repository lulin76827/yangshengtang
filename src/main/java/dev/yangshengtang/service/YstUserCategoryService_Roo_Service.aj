// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstUserCategory;
import dev.yangshengtang.service.YstUserCategoryService;
import java.util.List;

privileged aspect YstUserCategoryService_Roo_Service {
    
    public abstract long YstUserCategoryService.countAllYstUserCategorys();    
    public abstract void YstUserCategoryService.deleteYstUserCategory(YstUserCategory ystUserCategory);    
    public abstract YstUserCategory YstUserCategoryService.findYstUserCategory(Integer id);    
    public abstract List<YstUserCategory> YstUserCategoryService.findAllYstUserCategorys();    
    public abstract List<YstUserCategory> YstUserCategoryService.findYstUserCategoryEntries(int firstResult, int maxResults);    
    public abstract void YstUserCategoryService.saveYstUserCategory(YstUserCategory ystUserCategory);    
    public abstract YstUserCategory YstUserCategoryService.updateYstUserCategory(YstUserCategory ystUserCategory);    
}