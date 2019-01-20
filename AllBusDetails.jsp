<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket2Ride</title>

<style>
#grad1 {
  height: 200px;
  background-color: red; /* For browsers that do not support gradients */
  background-image: linear-gradient(red, yellow); /* Standard syntax (must be last) */
}
#busdetails {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#busdetails td, #busdetails th {
  border: 1px solid #ddd;
  padding: 8px;
}

#busdetails tr:nth-child(even){background-color: #f2f2f2;}

#busdetails tr:hover {background-color: #ddd;}

#busdetails th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
 <table border="1" id="busdetails">

   <tr>
      <th>busName</th>
      <th>busType</th>
      <th>arrivalTime</th>
      <th>departureTime</th>
      <th>sectorFrom</th>
      <th>sectorTo</th>
      <th>Show Seats</th>
   </tr>

   <c:forEach items="${busDetails}" var="list">
     <tr>
        <%--  <td>${list.busId}</td>  --%>
        <td>${list.busName}</td>
  		<td>${list.busType}</td>
  		<%-- <td>${list.day}</td> --%>
  		<td>${list.arrivalTime}</td>
  		<td>${list.departureTime}</td>
  		<td>${list.sectorFrom}</td>
  		<td>${list.sectorTo}</td>
  	 	<td>${list.seatCapacity}</td>
	</tr>
  </c:forEach>
 </table>
</body>
</html>