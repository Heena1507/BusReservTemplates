<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
        <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Welcome
                    </a>
                </li>
                <li>
         
                    <a href="#">${username}</a>
                </li>
                <li>
                    <a href="myBooking">My Bookings</a>
                </li>
                <li>
                    <a href="index.jsp">Search</a>
                </li>
                <li>
                    <a href="#">Edit Profile</a>
                </li>
                <li>
                    <a href="about.jsp">About</a>
                </li>
            
                <li>
                    <a href="contact.jsp">Contact</a>
                </li>
                
               <%if(session.getAttribute("username")==null) {%>
				  <li>
						<a  href="Logout">SignIn/LogIn</a>
				      </li>
					<%}else{ %>
					
			
			  <li>
						<a href="Logout">LogOut</a>
				</li>
					<%} %>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <h1>User DashBoard</h1>
                <p><b>Welcome ${Firstname}</b></p>
                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">Open Menu</a>
            </div>
            
              <table border="1" id="busdetails">

   <tr>
      
 
      <th>First Name</th>
      <th>Last Name</th>
  <!--     <th>day</th> -->
       <th>Phone Number</th>
      <th>Email Id</th>
    
      
      <th>Wallet Balance</th>
     
      <!-- rest of you columns -->
   </tr>

   <c:forEach items="${userDetails}" var="list">
     <tr>
         <td><b>${list.firstname}</b></td> 
         <td><b>${list.lastname}</b></td>
  <td><b>${list.phoneNumber}</b></td>
  <td><b>${list.userEmail}</b></td>
  <%-- <td>${list.Gender}</td> --%>

  <td><b>${list.wallet}</b></td>

 
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
