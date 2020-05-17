<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<style type="text/css">
.myDiv {
  font-family: verdana;
  font-size: 22px;
}

input[type=number] {
  padding: 12px 20px;
  margin: 8px 0;
   border: 1px #e9daa8;
   text-size: 18px;
}


a {
color: #e9daa8;
}

body {
    background-color: grey;
}
</style>

<title>Insert title here</title>
<a href="/" button type="button" class="btn btn-outline-primary">Home</a><br><br>
</head>
<body>


<form action="getTravel.do" method="GET">

  	<div class="myDiv">
    Enter Trip Id:
    <input type="number" name="id"/><br>
     <input type="submit" value="Find Film Data"/>
  </div>
</form>

</body>
</html>