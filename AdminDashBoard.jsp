<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style>

body { padding-top:10px; }
.panel-body .btn:not(.btn-block) { width:200px;margin-bottom:70px; }

</style>
</head>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admin.jsp">Admin</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="about.jsp">About us</a></li>
         <li><a href="contact.jsp">Contact us</a></li>
            <li><a href="about.jsp">About us</a></li>
     
     
    </ul>

  </div>
</nav>
<body background="${pageContext.request.contextPath}/resources/images/tewe.jpg">
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-bookmark"></span> Admin Dashboard</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                          <a href="addBus" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-upload"></span> <br/>Add Bus</a>
                          <a href="viewBus" class="btn btn-warning btn-lg" role="button"><span class="	glyphicon glyphicon-download"></span> <br/>View All Bus</a>
                          <a href="viewUser" class="btn btn-primary btn-lg" role="button"><span class="	glyphicon glyphicon-download"></span> <br/>View All User</a>
                     
                        </div>
<!--                         <div class="col-xs-6 col-md-6">
                          <a href="delete_stu.jsp" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>Delete Student data </a>
                          <a href="new_card_req_internal.jsp" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>request for new card</a>
                          <a href="edit_student_detail.jsp" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>Edit Student Details</a>
                          <a href="data_upload.jsp" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br/>Upload attendanace</a> 
                        </div> -->
                    </div>
                    <a href="index.jsp" class="btn btn-success btn-lg btn-block" role="button"><span class="glyphicon glyphicon-globe"></span> Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>