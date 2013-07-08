// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAccount;
import dev.yangshengtang.domain.YstUser;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect YstAccount_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "user_detail", referencedColumnName = "id")
    private YstUser YstAccount.userDetail;
    
    @Column(name = "username", length = 500)
    @NotNull
    private String YstAccount.username;
    
    @Column(name = "password", length = 45)
    @NotNull
    private String YstAccount.password;
    
    @Column(name = "administrator")
    @NotNull
    private boolean YstAccount.administrator;
    
    public YstUser YstAccount.getUserDetail() {
        return userDetail;
    }
    
    public void YstAccount.setUserDetail(YstUser userDetail) {
        this.userDetail = userDetail;
    }
    
    public String YstAccount.getUsername() {
        return username;
    }
    
    public void YstAccount.setUsername(String username) {
        this.username = username;
    }
    
    public String YstAccount.getPassword() {
        return password;
    }
    
    public void YstAccount.setPassword(String password) {
        this.password = password;
    }
    
    public boolean YstAccount.isAdministrator() {
        return administrator;
    }
    
    public void YstAccount.setAdministrator(boolean administrator) {
        this.administrator = administrator;
    }
    
}
