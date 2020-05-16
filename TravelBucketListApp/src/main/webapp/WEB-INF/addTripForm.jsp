<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">

<title>Trip</title>
</head>
<body>
<div class="container-fluid">
<div class="shadow-lg p-3 mb-5 bg-white rounded">
  <h3>Add new Trip</h3>
  
  
  <form action="addTrip.do" method="POST">
  	
    Trip Name:
    <input type="text" name="tripName"/><br><br>
   Best time to visit:
    <input type="text" name="bestTimeToVisit"/><br><br>
    FlightPrice:
    <input type="number" name="flightPrice"/><br><br> 
    Is Visa Required: 
    <select id="visa" name="visaRequired"> 
    	<option value="false">false</option>
    	<option value="true">true</option>
    </select><br><br>
 
    Trip length in days:
    <input type="number" name="tripLengthDays"/><br><br> 
    Local Food to Try:
    <input type="text" name="localFoodToTry"/><br><br>
    Most popular attraction:
    <input type="text" name="mostPopularAttraction"/><br><br>
    Cheap crash pad link:
    <input type="text" name="cheapCrashPad"/><br><br>
    Bang for your buck stay link:
    <input type="text" name="bangForYourBuckStay"/><br><br> 
    Luxury stay link:
    <input type="text" name="luxuryStay"/><br><br> 
    
    <input type="submit" value="Add Film Data"/><br><br>
  </form>
  
  
  	</div>
	</div>
  
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
  
</body>
</html>