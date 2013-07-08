package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstUser;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstUser.class)
public interface YstUserRepository {
}
