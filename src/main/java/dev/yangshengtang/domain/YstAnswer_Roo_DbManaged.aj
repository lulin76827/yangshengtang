// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.domain.YstQuestion;
import dev.yangshengtang.domain.YstUser;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect YstAnswer_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "question", referencedColumnName = "id", nullable = false)
    private YstQuestion YstAnswer.question;
    
    @ManyToOne
    @JoinColumn(name = "user", referencedColumnName = "id", nullable = false)
    private YstUser YstAnswer.user;
    
    @Column(name = "record")
    @NotNull
    private Integer YstAnswer.record;
    
    public YstQuestion YstAnswer.getQuestion() {
        return question;
    }
    
    public void YstAnswer.setQuestion(YstQuestion question) {
        this.question = question;
    }
    
    public YstUser YstAnswer.getUser() {
        return user;
    }
    
    public void YstAnswer.setUser(YstUser user) {
        this.user = user;
    }
    
    public Integer YstAnswer.getRecord() {
        return record;
    }
    
    public void YstAnswer.setRecord(Integer record) {
        this.record = record;
    }
    
}