<%@page import="oracle.net.aso.s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title> Ticket2Ride</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />

<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
</head>
<body >

<script type="text/javascript">



window.onload=function disableTakenSeat() {
	//alert(document.getElementById("BookedSeat"));
	//var s =[ $("#seatTaken").val() ];
	var s= document.getElementById('myLabel').textContent;
	alert(s);
	var i=1;
	var j=2;
	while(i<s.length-1)
		{
		$("#"+s[i]+s[i+1]).prop("disabled",true);
		i=i+4;
		j=j+4;
		}
//for(i = 1; i<document.getElementById("totalSeat"); i++) {
	
//document.getElementById("s").disabled = true;

//}
}



disableAllCat(); // disable by default





</script>

<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top" >
		<div class="container">
			<a class="navbar-brand" href="index.jsp">Ticket To Ride</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item "><a class="nav-link"
						href="index.jsp">Book Ticket <span class="sr-only">(current)</span>
					</a></li>
				
					<!-- <li class="nav-item"><a class="nav-link" href="viewTicketDetails.html">View
							Ticket</a></li> -->
					<li class="nav-item"><a class="nav-link" href="myBooking">My Bookings</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="index.jsp">Search</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
						<% if (session.getAttribute("username") == null) { %>
                    <li class="nav-item ">           
                        <a class="nav-link"  href="HomePage">SignIn/Up</a>
                    </li>
                    
                  
                    
                   <% } else {%>
                      
                    
                    <li class="nav-item ">
                        <a class="nav-link"  href="Logout">Logout</a>
                    </li>
                    
                    <% } %>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
<h4>Seat Allowed-1 seat/User</h4>
<div class="container">

   
	<form> 
<div class="inputForm">
 <input type="number" id="numberofseats" min="0" value="1"  max="4"required  disabled="disabled">
  
</div>
<br/><br/>
<div class="seatStructure">


<table id="seatsBlock">
  <tr>
    <td colspan="14"><div class="screen">FRONT</div></td>
    <td rowspan="20">
      <div class="smallBox greenBox">Selected Seat</div> <br/>
      <div class="smallBox redBox">Reserved Seat</div><br/>
      <div class="smallBox emptyBox">Empty Seat</div><br/>
    </td>

  </tr>
  
  <tr>
    <td></td>
    <td>A</td>
    <td>B</td>
    <td></td>
    <td>C</td>
    <td>D</td>
    
</tr>
  
<tr>
    <td>1</td>
    <td><input type="checkbox" class="seats" name="seats" value="1A" id="1A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="1B"  id="1B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="1C"  id="1C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="1D"  id="1D"></td>
    
  </tr>
  
  <tr>
    <td>2</td>
    <td><input type="checkbox" class="seats" name="seats" value="2A"  id="2A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="2B"  id="2B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="2C"  id="2C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="2D"  id="2D"></td>
    
  </tr>
  <tr class="seatVGap"></tr>
  
    <tr>
    <td>3</td>
    <td><input type="checkbox" class="seats" name="seats" value="3A"  id="3A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="3B"  id="3B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="3C"   id="3C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="3D"  id="3D"></td>
    
  </tr>
  
  <tr>
    <td>4</td>
    <td><input type="checkbox" class="seats" name="seats" value="4A"   id="4A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="4B"    id="4B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="4C"  id="4C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="4D"   id="4D"></td>
  </tr>
  
  <tr>
    <td>5</td>
    <td><input type="checkbox" class="seats" name="seats" value="5A"   id="5A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="5B"    id="5B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="5C"   id="5C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="5D"    id="5D"></td>
    
  </tr>
  
    <tr>
    <td>6</td>
    <td><input type="checkbox" class="seats" name="seats" value="6A"   id="6A"></td>
    <td><input type="checkbox" class="seats" name="seats" value="6B"   id="6B"></td>
        <td class="seatGap"></td>
    <td><input type="checkbox" class="seats" name="seats" value="6C"   id="6C"></td>
    <td><input type="checkbox" class="seats" name="seats" value="6D"    id="6D"></td>
    
  </tr>

</table>
  
<br/><button type="button" onclick="updateTextArea()" class="btn btn-primary" >Confirm Selection</button>

      
<br/><br/>

<div class="displayerBoxes">

  <table class="Displaytable">
  <tr>
   
    <th>Number of Seats</th>
    <th>Seats</th>
  </tr>
   
</table>
</div>
<br/>
</div>  
</form> 
<sf:form method="POST"  action="seatBookingCall"  modelAttribute="seatdetails">
    <input type="text" id="NumberDisplay" name="NumberDisplay" readonly="readonly"></input>
    <input type="text"id="seatsDisplay" name="seatsDisplay" readonly="readonly"></input>
  <input type="submit" class="btn btn-success" value="Submit">
  </sf:form>


</div>


<input type="number" value=" ${totalSeat}" id="totalSeat" disabled="disabled">
<input type="text" value=" ${BookedSeat}" id="seatTaken" disabled="disabled">
 <label id="myLabel"><%=session.getAttribute("BookedSeat")%></label>

<!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>
</body>
</html>