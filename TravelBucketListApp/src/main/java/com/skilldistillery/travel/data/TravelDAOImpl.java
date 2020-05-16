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
	
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("TravelPU");
	
	
	public Travel addTravel(Travel trip) {
		em = emf.createEntityManager();
		
		em.getTransaction().begin();
		
		em.persist(trip);
		
		em.flush();
		em.getTransaction().commit();
		
		return trip;
	}
	
	@Override
	public Travel findById(int id) {
		
		return em.find(Travel.class, id);
	}
	
	

}
