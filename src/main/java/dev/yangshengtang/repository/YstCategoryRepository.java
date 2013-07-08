package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstCategory;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstCategory.class)
public interface YstCategoryRepository {
}
