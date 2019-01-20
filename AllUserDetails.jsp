<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
      
 
      <th>First Name</th>
      <th>Last Name</th>
  <!--     <th>day</th> -->
       <th>Phone Number</th>
      <th>Email Id</th>
    
      
      <th>Wallet Balance</th>
     
      <!-- rest of you columns -->
   </tr>

   <c:forEach items="${allUser}" var="list">
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
</body>
</html>