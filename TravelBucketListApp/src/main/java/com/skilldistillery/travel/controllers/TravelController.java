package com.skilldistillery.travel.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.travel.data.TravelDAO;
import com.skilldistillery.travel.entities.Travel;

@Controller
public class TravelController {
	
	@Autowired
	private TravelDAO dao;
	
	@RequestMapping(path="getTravel.do") // look up 
public ModelAndView viewTripByIDPage() throws SQLException {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("tripById");

		return mv;
	}

	@RequestMapping(path="getTravel.do", params="id") //takes id inputed by user/looks up trip
	public String findTravel(@RequestParam("id") Integer tId, Model model) {
		Travel t = dao.findById(tId);
		if(t != null) {
		model.addAttribute("travel", t);
		
		return "travelDetail";
		} 
		else {
			
			return "tripNotFound";
		}
	}
	
	@RequestMapping(path="addTrip.do", method=RequestMethod.GET)
	public ModelAndView goToAddTripPage() throws SQLException { //add trip view page for user to input data
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addTripForm");
		
		return mv;
		
	}
	
	@RequestMapping(path="addTrip.do", method=RequestMethod.POST)
	public ModelAndView addTrip(@RequestParam Travel trip) { //takes user input/process it/posts new trip
		ModelAndView mv = new ModelAndView();
		
		if(trip != null && trip.getTripName() != null) {
			Travel newTrip = dao.addTravel(trip);
		
	    mv.addObject("trip", newTrip);
	    mv.setViewName("travelDetail");
		return mv;
		}
	
		else {
			mv.setViewName("error");
			return mv;
		}
	}
	
}
