// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.service;

import dev.yangshengtang.domain.YstAccount;
import dev.yangshengtang.service.YstAccountService;
import java.util.List;

privileged aspect YstAccountService_Roo_Service {
    
    public abstract long YstAccountService.countAllYstAccounts();    
    public abstract void YstAccountService.deleteYstAccount(YstAccount ystAccount);    
    public abstract YstAccount YstAccountService.findYstAccount(Integer id);    
    public abstract List<YstAccount> YstAccountService.findAllYstAccounts();    
    public abstract List<YstAccount> YstAccountService.findYstAccountEntries(int firstResult, int maxResults);    
    public abstract void YstAccountService.saveYstAccount(YstAccount ystAccount);    
    public abstract YstAccount YstAccountService.updateYstAccount(YstAccount ystAccount);    
}
