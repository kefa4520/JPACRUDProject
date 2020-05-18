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

<title></title>
<a href="/" button type="button" class="btn btn-outline-primary">Return Home</a><br><br>
</head>
<body>
<div class="myDiv">
  <h3>Delete</h3>
  
  
  <form action="delete.do" method="POST" class="text-danger">
  <div style="font-family: verdana; font color: red; padding: 10px; border-radius: 10px; font-size: 18px; text-align: left;">
  Enter ID for the trip to be deleted:
  	<input type="number" name="id"/>
   <input type="submit" value="Delete Trip"/>
    </div>
  </form>
 
  </div>
  
</body>
</html>