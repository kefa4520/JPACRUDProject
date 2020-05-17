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

<title>Updated Trip Details</title>
<a href="/" button class="text-warning bg-info">Return Home</a><br>
<a href="delete.do" class="text-warning bg-info">Delete Trip By ID</a><br/>

</head>

<body>
<div class="container-fluid">
<div class="shadow-lg p-3 mb-5 bg-white rounded">

 <c:choose>
    <c:when test="${! empty travel.tripName}">
    <div class="alert alert-success text-center" role="alert">
			<h3 >Successful Update</h3>
		</div>
  	<h4>Trip ID: ${travel.id}</h4><br>
	<h1>Escape to: ${travel.tripName}</h1>
	
	<input type="hidden" name="id" value="${travel.id}"/>
    Trip Name:
    <input type="text" name="tripName" value="${travel.tripName}"/><br><br>
   Best time to visit:
    <input type="text" name="bestTimeToVisit" value="${travel.bestTimeToVisit}"/><br><br>
    FlightPrice:
    <input size="6" type="number" name="flightPrice" value="${travel.flightPrice}"/><br><br> 
    Is Visa Required: 
    <select id="visa" name="visaRequired"> 
    	<option value="false">false</option>
    	<option value="true">true</option>
    </select><br><br>
 
    Trip length in days:
    <input size="6" type="number" name="tripLengthDays" value="${travel.tripLengthDays}"/><br><br> 
    Local Food to Try:
    <input type="text" name="localFoodToTry" value="${travel.localFoodToTry}"/><br><br>
    Most popular attraction:
    <input size="50" type="text" name="mostPopularAttraction" value="${travel.mostPopularAttraction}"/><br><br>
    Places to stay:<br>
    
     <a href="${travel.cheapCrashPad}">Cheap Crash Pad</a>
     <input size="50" type="text" name="cheapCrashPad" placeholder="no link" value="${travel.cheapCrashPad}"/><br><br> 
     
	 <a href="${travel.bangForYourBuckStay}">Bang For Your Buck</a>
	  <input size="50" type="text" name="bangForYourBuckStay" placeholder="no link" value="${travel.bangForYourBuckStay}"/><br><br>
	  
	 <a href="${travel.luxuryStay}">Luxury Stay</a> 
	  <input size="50" type="text" name="luxuryStay" placeholder="no link" value="${travel.luxuryStay}" placeholder="no link"/><br><br>
  <input type="submit" value="Update Trip Data"/>
 
  </c:when> 
  
  <c:when test="${empty travel.tripName}">
      <div class="alert alert-danger text-center" role="alert">
			<h3 >Update Failed</h3>
		</div>
    </c:when> 
   
  </c:choose>
  
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