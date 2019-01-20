<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
        <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ticket2Ride Sidebar..</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/simple-sidebar.css" rel="stylesheet">
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

<body background image="C:\Users\ADMIN\Desktop\Reference\150122.25\Dashboard 1501\startbootstrap-simple-sidebar-master\images\temp1.jpg">

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                  
                    </li>
    
                    <li>
                        <a href="myBooking">My Bookings</a>
                    </li>
                    <li>
                        <a href="index.jsp">Search</a>
                    </li>
                    <li>
                        <a href="editprofilepg.html">Edit Profile</a>
                    </li>
                    <li>
                        <a href="about.jsp">About</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                
             		<% if (session.getAttribute("username") == null) { %>
                    <li class="nav-item ">           
                        <a  href="HomePage">SignIn/Up</a>
                    </li>
                    
                  
                    
                   <% } else {%>
                      
                    
                    <li class="nav-item ">
                        <a href="Logout">Logout</a>
                    </li>
                    
                    <% } %>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <h1>Welcome To User Dashboard...</h1>
                <p><b>Click here to view the Menu...</b></p>
                 
                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">MENU</a>
            </div>
            
            <table border="1" id="busdetails">

   <tr>
      
 
      <th>busName</th>
      <th>busType</th>
  <!--     <th>day</th> -->
       <th>arrivalTime</th>
      <th>departureTime</th>
    
      <th>sectorFrom</th>
      <th>sectorTo</th>
      <th>Show Seats</th>
      <!-- rest of you columns -->
   </tr>

   <c:forEach items="${applicationScope.BusList}" var="list">
     <tr>
        <%--  <td>${list.busId}</td>  --%>
         <td>${list.busName}</td>
  <td>${list.busType}</td>
  <%-- <td>${list.day}</td> --%>
  <td>${list.arrivalTime}</td>
  <td>${list.departureTime}</td>
  <td>${list.sectorFrom}</td>
  <td>${list.sectorTo}</td>
  <td>
                <form action="seatBooking" method="Post"> <input type="submit" value="Book"><input type="text"  name="busname"value="${list.busName}" hidden="true">   </form>
  </td>
     </tr>

   </c:forEach>

 </table>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
