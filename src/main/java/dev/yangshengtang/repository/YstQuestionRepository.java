package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstQuestion;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstQuestion.class)
public interface YstQuestionRepository {
}
