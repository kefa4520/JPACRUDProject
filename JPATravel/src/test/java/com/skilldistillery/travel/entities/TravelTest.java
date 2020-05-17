package com.skilldistillery.travel.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import net.bytebuddy.matcher.ElementMatcher;

class TravelTest {

	
	private static EntityManagerFactory emf;
	
	private EntityManager em;
	
	private Travel travel;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("TravelPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		travel = em.find(Travel.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		travel = null;
	}

	@Test
	void test() {
		assertNotNull(travel);
		assertEquals("New Zealand", travel.getTripName());
		assertEquals("December to February", travel.getBestTimeToVisit());
		assertEquals(1529, travel.getFlightPrice());
		assertEquals(false, travel.getVisaRequired());
		assertEquals(10, travel.getTripLengthDays());
		assertEquals("Māori hāngī", travel.getLocalFoodToTry());
		assertEquals("Milford Sound, South Island", travel.getMostPopularAttraction());
		assertEquals("https://www.airbnb.com/rooms/19611678?adults=1&check_in=2021-01-02&check_out=2021-01-11&source_impression_id=p3_1589650022_256Sna580xs7xx7S&guests=1", travel.getCheapCrashPad());
		assertEquals("https://www.airbnb.com/rooms/33070748?check_in=2021-01-02&check_out=2021-01-11&adults=1&source_impression_id=p3_1589649935_85gWKYdmoCJq47bj&guests=1", travel.getBangForYourBuckStay());
		assertEquals("https://www.airbnb.com/rooms/29142902?adults=1&children=0&infants=0&check_out=2021-01-11&check_in=2021-01-02&source_impression_id=p3_1589650145_L4qPzCfPAoLT1ASq", travel.getLuxuryStay());
		
	}

}
