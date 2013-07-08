package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstUserCategory;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstUserCategory.class)
public interface YstUserCategoryRepository {
}
