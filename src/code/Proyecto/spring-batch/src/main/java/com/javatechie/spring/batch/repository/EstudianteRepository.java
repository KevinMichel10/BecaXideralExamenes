package com.javatechie.spring.batch.repository;

import com.javatechie.spring.batch.entity.Estudiante;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EstudianteRepository  extends JpaRepository<Estudiante,Integer> {
}
