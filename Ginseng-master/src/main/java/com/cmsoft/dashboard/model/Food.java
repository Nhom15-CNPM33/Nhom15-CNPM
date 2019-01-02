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


@Entity(name="foods")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Food {
	@Id
	int id;
	
	String image;
	
	@Column(name="name")
	String name;
	
	@Column(name="price")
	int unit_price;
	
	@Column(name="status")
	int status;
	
	
	
	
	//@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created_at")
	Date createdAt;

//	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
//	@JsonManagedReference
//	List<Order> order;
//	
//	public List<Order> getOrder() {
//		return order;
//	}
//
//	public void setOrder(List<Order> order) {
//		this.order = order;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	/**
	 * @return the unit_price
	 */
	public int getUnit_price() {
		return unit_price;
	}

	/**
	 * @param unit_price the unit_price to set
	 */
	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
