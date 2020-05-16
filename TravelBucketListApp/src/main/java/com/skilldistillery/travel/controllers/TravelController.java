package com.skilldistillery.travel.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.travel.data.TravelDAO;
import com.skilldistillery.travel.entities.Travel;

@Controller
public class TravelController {
	
	@Autowired
	private TravelDAO dao;

	@RequestMapping(path="getTravel.do")
	public String findTravel(@RequestParam Integer tId, Model model) {
		Travel t = dao.findById(tId);
		model.addAttribute("travel", t);
		
		return "travelDetail";
	}
	
}
