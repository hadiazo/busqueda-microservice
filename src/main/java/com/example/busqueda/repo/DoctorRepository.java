package com.example.busqueda.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.busqueda.model.Doctor;

public interface DoctorRepository extends JpaRepository<Doctor, Long>{

}
