// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAccount;
import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.domain.YstUser;
import dev.yangshengtang.domain.YstUserCategory;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect YstUser_Roo_DbManaged {
    
    @OneToMany(mappedBy = "userDetail")
    private Set<YstAccount> YstUser.ystAccounts;
    
    @OneToMany(mappedBy = "user")
    private Set<YstAnswer> YstUser.ystAnswers;
    
    @OneToMany(mappedBy = "user")
    private Set<YstUserCategory> YstUser.ystUserCategories;
    
    @Column(name = "name", length = 45)
    @NotNull
    private String YstUser.name;
    
    @Column(name = "sex", length = 7)
    @NotNull
    private String YstUser.sex;
    
    @Column(name = "email", length = 1000)
    private String YstUser.email;
    
    @Column(name = "mobile", length = 45)
    private String YstUser.mobile;
    
    @Column(name = "current_address", length = 1000)
    private String YstUser.currentAddress;
    
    @Column(name = "birthplace", length = 1000)
    private String YstUser.birthplace;
    
    @Column(name = "birthday")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date YstUser.birthday;
    
    @Column(name = "interest", length = 1000)
    private String YstUser.interest;
    
    @Column(name = "sleep_time")
    private Integer YstUser.sleepTime;
    
    public Set<YstAccount> YstUser.getYstAccounts() {
        return ystAccounts;
    }
    
    public void YstUser.setYstAccounts(Set<YstAccount> ystAccounts) {
        this.ystAccounts = ystAccounts;
    }
    
    public Set<YstAnswer> YstUser.getYstAnswers() {
        return ystAnswers;
    }
    
    public void YstUser.setYstAnswers(Set<YstAnswer> ystAnswers) {
        this.ystAnswers = ystAnswers;
    }
    
    public Set<YstUserCategory> YstUser.getYstUserCategories() {
        return ystUserCategories;
    }
    
    public void YstUser.setYstUserCategories(Set<YstUserCategory> ystUserCategories) {
        this.ystUserCategories = ystUserCategories;
    }
    
    public String YstUser.getName() {
        return name;
    }
    
    public void YstUser.setName(String name) {
        this.name = name;
    }
    
    public String YstUser.getSex() {
        return sex;
    }
    
    public void YstUser.setSex(String sex) {
        this.sex = sex;
    }
    
    public String YstUser.getEmail() {
        return email;
    }
    
    public void YstUser.setEmail(String email) {
        this.email = email;
    }
    
    public String YstUser.getMobile() {
        return mobile;
    }
    
    public void YstUser.setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public String YstUser.getCurrentAddress() {
        return currentAddress;
    }
    
    public void YstUser.setCurrentAddress(String currentAddress) {
        this.currentAddress = currentAddress;
    }
    
    public String YstUser.getBirthplace() {
        return birthplace;
    }
    
    public void YstUser.setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }
    
    public Date YstUser.getBirthday() {
        return birthday;
    }
    
    public void YstUser.setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    
    public String YstUser.getInterest() {
        return interest;
    }
    
    public void YstUser.setInterest(String interest) {
        this.interest = interest;
    }
    
    public Integer YstUser.getSleepTime() {
        return sleepTime;
    }
    
    public void YstUser.setSleepTime(Integer sleepTime) {
        this.sleepTime = sleepTime;
    }
    
}
