package com.example.busqueda.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.*;

@Entity
@Table(name = "cita")
public class Cita implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id_cita")
	private long id_cita;
	
	@Column(name = "cedula")
	private String cedula;
	
	@Column(name = "fecha_cita")
	private Timestamp fecha_cita;
	
	@Column(name = "consultorio")
	private String consultorio;
	
}
