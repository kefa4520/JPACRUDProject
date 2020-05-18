<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<style type="text/css">
.myDiv {
  border: 5px outset #7f6a04;
  background-color: #e9daa8;    
  text-align: left;
}

a {
color: #e9daa8;
}

body {
    background-color: grey;
}
</style>



<title>Trip Details</title>
<a href="/" button class="text-warning bg-info">Return Home</a><br>
<a href="delete.do" class="text-warning bg-info">Delete Trip By ID</a><br/>

</head>

<body>

<form action="updateTrip.do" method="POST">
 <c:choose>

    <c:when test="${! empty travel.tripName}">
    <div class="myDiv">
  	<h4>Trip ID: ${travel.id}</h4><br>
  	<div style="font-family: verdana; padding: 10px; border-radius: 10px; font-size: 12px; text-align: left;">
	<h1>Escape to: ${travel.tripName}</h1>
	</div>
	</div>
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
     <input size="50" type="text" name="cheapCrashPad" placeholder="no entry provided/add link to update" value="${travel.cheapCrashPad}"/><br><br>
	 <a href="${travel.bangForYourBuckStay}">Bang For Your Buck</a>
	  <input size="50" type="text" name="bangForYourBuckStay" placeholder="no entry provided/add link to update" value="${travel.bangForYourBuckStay}"/><br><br>
	 <a href="${travel.luxuryStay}">Luxury Stay</a> 
	  <input size="50" type="text" name="luxuryStay" placeholder="no entry provided/add link to update" value="${travel.luxuryStay}"/><br><br>
  <input type="submit" value="Update Trip Data"/>
  </form>
  
  </c:when> 

  <c:when test="${empty travel.tripName}">
      <div class="alert alert-danger text-center" role="alert">
			<h3 >Action cannot be completed. Trip Name Required!</h3>
		</div>
    </c:when> 

  </c:choose>
 

  
</body>
</html>