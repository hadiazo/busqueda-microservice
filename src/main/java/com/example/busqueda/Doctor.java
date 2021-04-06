package com.example.busqueda;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.*;

@Entity
@Table(name = "doctor")
public class Doctor implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "cedula")
	private String cedula;
	
	@Column(name = "nombres")
	private String nombres;
	
	@Column(name = "apellidos")
	private String apellidos;
	
	@Column(name = "fecha_nacimiento")
	private Date fecha_nacimiento;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "especialidad")
	private String especialidad;
	
	@Column(name = "empleador")
	private String empleador;

	public Doctor(String cedula, String nombres, String apellidos, Date fecha_nacimiento, String email,
			String especialidad, String empleador) {
		super();
		this.cedula = cedula;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fecha_nacimiento = fecha_nacimiento;
		this.email = email;
		this.especialidad = especialidad;
		this.empleador = empleador;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}

	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	public String getEmpleador() {
		return empleador;
	}

	public void setEmpleador(String empleador) {
		this.empleador = empleador;
	}
	
}
