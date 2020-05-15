package com.skilldistillery.travel.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Travel {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="trip_name")
	private String tripName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTripName() {
		return tripName;
	}

	public void setTripName(String tripName) {
		this.tripName = tripName;
	}

	public Travel() {
		super();
	}

	public Travel(int id, String tripName) {
		super();
		this.id = id;
		this.tripName = tripName;
	}

	@Override
	public String toString() {
		return "Travel [id=" + id + ", tripName=" + tripName + "]";
	}
	
	
}
