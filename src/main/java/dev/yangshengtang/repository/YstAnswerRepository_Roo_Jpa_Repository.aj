// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package dev.yangshengtang.repository;

import dev.yangshengtang.domain.YstAnswer;
import dev.yangshengtang.repository.YstAnswerRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect YstAnswerRepository_Roo_Jpa_Repository {
    
    declare parents: YstAnswerRepository extends JpaRepository<YstAnswer, Integer>;
    
    declare parents: YstAnswerRepository extends JpaSpecificationExecutor<YstAnswer>;
    
    declare @type: YstAnswerRepository: @Repository;
    
}