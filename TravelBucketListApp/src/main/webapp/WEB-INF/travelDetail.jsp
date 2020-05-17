<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trip Details</title>
<a href="/" button type="button" class="btn btn-outline-primary">Home</a><br><br>
</head>
<body>
	<h1>Escape to: ${travel.tripName}</h1>
	<h3>Details: ${travel.cheapCrashPad}</h3>
</body>
</html>