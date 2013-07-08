package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstAnswer;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstAnswer.class)
public interface YstAnswerRepository {
}
