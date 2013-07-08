// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.domain;

import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.domain.YstCategory;
import dev.yangshengtang.domain.YstQuestion;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect YstQuestion_Roo_DbManaged {
    
    @OneToMany(mappedBy = "question")
    private Set<YstAnswer> YstQuestion.ystAnswers;
    
    @ManyToOne
    @JoinColumn(name = "category", referencedColumnName = "id", nullable = false)
    private YstCategory YstQuestion.category;
    
    @Column(name = "question", length = 2000)
    @NotNull
    private String YstQuestion.question;
    
    public Set<YstAnswer> YstQuestion.getYstAnswers() {
        return ystAnswers;
    }
    
    public void YstQuestion.setYstAnswers(Set<YstAnswer> ystAnswers) {
        this.ystAnswers = ystAnswers;
    }
    
    public YstCategory YstQuestion.getCategory() {
        return category;
    }
    
    public void YstQuestion.setCategory(YstCategory category) {
        this.category = category;
    }
    
    public String YstQuestion.getQuestion() {
        return question;
    }
    
    public void YstQuestion.setQuestion(String question) {
        this.question = question;
    }
    
}
