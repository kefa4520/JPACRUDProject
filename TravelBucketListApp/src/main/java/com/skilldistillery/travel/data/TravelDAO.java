package com.skilldistillery.travel.data;

import com.skilldistillery.travel.entities.Travel;

public interface TravelDAO {
public Travel findById(int id);
public Travel addTravel(Travel trip);
public Travel updateTravel(Travel trip);

}
