package com.skilldistillery.travel.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.sun.istack.NotNull;

@Entity
public class Travel {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="bang_for_your_buck_stay")
	private String bangForYourBuckStay;
	
	@Column(name="trip_name")
	@NotNull
	private String tripName;
	
	@Column(name="best_time_to_visit")
	private String bestTimeToVisit;
	
	@Column(name="flight_price")
	private Integer flightPrice;
	
	@Column(name="visa_required")
	private Boolean visaRequired;
	
	@Column(name="trip_length_days")
	private Integer tripLengthDays;
	
	@Column(name="local_food_to_try")
	private String localFoodToTry;
	
	@Column(name="most_popular_attraction")
	private String mostPopularAttraction; 
	
	@Column(name="cheap_crash_pad")
	private String cheapCrashPad;
	
	
	@Column(name="luxury_stay")
	private String luxuryStay;
	
	//methods
	
	

	public String getBestTimeToVisit() {
		return bestTimeToVisit;
	}



	public void setBestTimeToVisit(String bestTimeToVisit) {
		this.bestTimeToVisit = bestTimeToVisit;
	}

	public Integer getFlightPrice() {
		return flightPrice;
	}

	public void setFlightPrice(Integer flightPrice) {
		this.flightPrice = flightPrice;
	}

	public Boolean getVisaRequired() {
		return visaRequired;
	}

	public void setVisaRequired(Boolean visaRequired) {
		this.visaRequired = visaRequired;
	}

	public Integer getTripLengthDays() {
		return tripLengthDays;
	}

	public void setTripLengthDays(Integer tripLengthDays) {
		this.tripLengthDays = tripLengthDays;
	}

	public String getLocalFoodToTry() {
		return localFoodToTry;
	}

	public void setLocalFoodToTry(String localFoodToTry) {
		this.localFoodToTry = localFoodToTry;
	}

	public String getMostPopularAttraction() {
		return mostPopularAttraction;
	}

	public void setMostPopularAttraction(String mostPopularAttraction) {
		this.mostPopularAttraction = mostPopularAttraction;
	}

	public String getCheapCrashPad() {
		return cheapCrashPad;
	}

	public void setCheapCrashPad(String cheapCrashPad) {
		this.cheapCrashPad = cheapCrashPad;
	}

	public String getBangForYourBuckStay() {
		return bangForYourBuckStay;
	}

	public void setBangForYourBuckStay(String bangForYourBuckStay) {
		this.bangForYourBuckStay = bangForYourBuckStay;
	}

	public String getLuxuryStay() {
		return luxuryStay;
	}

	public void setLuxuryStay(String luxuryStay) {
		this.luxuryStay = luxuryStay;
	}

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
	
	public Travel(int id, String tripName, String bestTimeToVisit, Integer flightPrice, Boolean visaRequired,
			Integer tripLengthDays, String localFoodToTry, String mostPopularAttraction, String cheapCrashPad,
			String bangForYourBuckStay, String luxuryStay) {
		super();
		this.id = id;
		this.tripName = tripName;
		this.bestTimeToVisit = bestTimeToVisit;
		this.flightPrice = flightPrice;
		this.visaRequired = visaRequired;
		this.tripLengthDays = tripLengthDays;
		this.localFoodToTry = localFoodToTry;
		this.mostPopularAttraction = mostPopularAttraction;
		this.cheapCrashPad = cheapCrashPad;
		this.bangForYourBuckStay = bangForYourBuckStay;
		this.luxuryStay = luxuryStay;
	}



	@Override
	public String toString() {
		return "Travel [id=" + id + ", tripName=" + tripName + ", bestTimeToVisit=" + bestTimeToVisit + ", flightPrice="
				+ flightPrice + ", visaRequired=" + visaRequired + ", tripLengthDays=" + tripLengthDays
				+ ", localFoodToTry=" + localFoodToTry + ", mostPopularAttraction=" + mostPopularAttraction
				+ ", cheapCrashPad=" + cheapCrashPad + ", bangForYourBuckStay=" + bangForYourBuckStay + ", luxuryStay="
				+ luxuryStay + "]";
	}



	public Travel(int id, String tripName) {
		super();
		this.id = id;
		this.tripName = tripName;
	}


	
	
	
}
