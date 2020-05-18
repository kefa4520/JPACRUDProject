<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">

a {
color: #e9daa8;
}

body {
    background-color: grey;
}
</style>


<title>Trip</title>
<a href="/" button type="button" class="btn btn-outline-primary">Return Home</a><br><br>
</head>
<body>
<div style="font-family: Comic Sans MS; padding: 10px; border-radius: 10px; font-size: 18px; text-align: left;">
  <h3>Add new Trip</h3>
  </div>
  
  <form action="addTrip.do" method="POST">
  	
    Trip Name:
    <input type="text" name="tripName"/><br><br>
   Best time to visit:
    <input type="text" name="bestTimeToVisit" placeholder="unspecified"/><br><br>
    FlightPrice:
    <input type="number" name="flightPrice" placeholder="unspecified"/><br><br> 
    Is Visa Required: 
    <select id="visa" name="visaRequired"> 
    	<option value="false">false</option>
    	<option value="true">true</option>
    </select><br><br>
 
    Trip length in days:
    <input type="number" name="tripLengthDays" placeholder="unspecified"/><br><br> 
    Local Food to Try:
    <input type="text" name="localFoodToTry" placeholder="unspecified"/><br><br>
    Most popular attraction:
    <input type="text" name="mostPopularAttraction" placeholder="unspecified"/><br><br>
    Cheap crash pad link:
    <input type="text" name="cheapCrashPad" placeholder="unspecified"/><br><br>
    Bang for your buck stay link:
    <input type="text" name="bangForYourBuckStay" placeholder="unspecified"/><br><br> 
    Luxury stay link:
    <input type="text" name="luxuryStay" placeholder="unspecified"/><br><br> 
    
    <input type="submit" value="Add Trip Data"/><br><br>
  </form>
  
  
</body>
</html>