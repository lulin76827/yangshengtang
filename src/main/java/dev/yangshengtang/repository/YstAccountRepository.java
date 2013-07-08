package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstAccount;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstAccount.class)
public interface YstAccountRepository {
}
