package dev.yangshengtang.repository;
import dev.yangshengtang.domain.YstMedicine;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = YstMedicine.class)
public interface YstMedicineRepository {
}
