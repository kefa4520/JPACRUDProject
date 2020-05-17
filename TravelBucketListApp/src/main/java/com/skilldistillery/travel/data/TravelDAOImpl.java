package com.skilldistillery.travel.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.travel.entities.Travel;

@Service
@Transactional
public class TravelDAOImpl implements TravelDAO {

	@PersistenceContext
	private EntityManager em;
	

	@Override
	public Travel addTravel(Travel trip) {
		
		em.persist(trip);
		
		  em.flush();
		
		
		return trip;
	}
	
	@Override
	public Travel findById(int id) {
		
		return em.find(Travel.class, id);
	}

	@Override
	public Travel updateTravel(int id, Travel trip) {
		
		Travel updatedTrip = em.find(Travel.class, id);
		updatedTrip.setTripName(trip.getTripName());
		updatedTrip.setBestTimeToVisit(trip.getBestTimeToVisit());
		updatedTrip.setFlightPrice(trip.getFlightPrice());
		updatedTrip.setVisaRequired(trip.getVisaRequired());
		updatedTrip.setTripLengthDays(trip.getTripLengthDays());
		updatedTrip.setLocalFoodToTry(trip.getLocalFoodToTry());
		updatedTrip.setMostPopularAttraction(trip.getMostPopularAttraction());
		updatedTrip.setCheapCrashPad(trip.getCheapCrashPad());
		updatedTrip.setBangForYourBuckStay(trip.getBangForYourBuckStay());
		updatedTrip.setLuxuryStay(trip.getLuxuryStay());
		
		
		em.flush();
		return updatedTrip;
	}

	@Override
	public void deleteById(int id) {
		Travel tripToDelete = em.find(Travel.class, id);
		em.remove(tripToDelete);

	}
	
	

}
