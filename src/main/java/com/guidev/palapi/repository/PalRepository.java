package com.guidev.palapi.repository;

import com.guidev.palapi.entity.PalEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PalRepository extends JpaRepository<PalEntity, Long> {
}
