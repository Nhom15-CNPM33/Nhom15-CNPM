package com.cmsoft.dashboard.model;


import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;


@Entity(name="warehouse")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Warehouse {
	@Id
	int id;
	
	@ManyToOne
	@JoinColumn(name="material_id")
	@JsonBackReference
	private Material material;
	
	@Column(name="amount")
	float amount;
	
	@Column(name="status") // 1 = import	;	0 = export 
	int status;
	
	@ManyToOne
	@JoinColumn(name="employee_id")
	@JsonBackReference
	User employee;
	
	
	//@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	Date createdAt;

	
	// GET, SET
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getAmount() {
		return amount;
	}
	
	public void setAmount(float amount) {
		this.amount = amount;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	public User getEmloyee() {
		return employee;
	}
	
	public void setEmployee(User employee) {
		this.employee = employee;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Material getMaterial() {
		return material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

}
