<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

window.onload = function () {
    var txtPassword = document.getElementById("txtPassword");
    var txtConfirmPassword = document.getElementById("txtConfirmPassword");
    txtPassword.onchange = ConfirmPassword;
    txtConfirmPassword.onkeyup = ConfirmPassword;
    function ConfirmPassword() {
        txtConfirmPassword.setCustomValidity("");
        if (txtPassword.value != txtConfirmPassword.value) {
            txtConfirmPassword.setCustomValidity("Passwords do not match.");
        }
    }
}
</script>
<style type="text/css">
body{
	margin:0;
	color:#6a6f8c;
	background:#c8c8c8;
	font:600 16px/18px 'Open Sans',sans-serif;
}
*,:after,:before{box-sizing:border-box}
.clearfix:after,.clearfix:before{content:'';display:table}
.clearfix:after{clear:both;display:block}
a{color:inherit;text-decoration:none}

.login-wrap{
	width:100%;
	margin:auto;
	max-width:525px;
	min-height:670px;
	position:relative;
	background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
	box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
}
.login-html{
	width:100%;
	height:100%;
	position:absolute;
	padding:90px 70px 50px 70px;
	background:rgba(40,57,101,.9);
}
.login-html .sign-in-htm,
.login-html .sign-up-htm{
	top:0;
	left:0;
	right:0;
	bottom:0;
	position:absolute;
	transform:rotateY(180deg);
	backface-visibility:hidden;
	transition:all .4s linear;
}
.login-html .sign-in,
.login-html .sign-up,
.login-form .group .check{
	display:none;
}
.login-html .tab,
.login-form .group .label,
.login-form .group .button{
	text-transform:uppercase;
}
.login-html .tab{
	font-size:22px;
	margin-right:15px;
	padding-bottom:5px;
	margin:0 15px 10px 0;
	display:inline-block;
	border-bottom:2px solid transparent;
}
.login-html .sign-in:checked + .tab,
.login-html .sign-up:checked + .tab{
	color:#fff;
	border-color:#1161ee;
}
.login-form{
	min-height:345px;
	position:relative;
	perspective:1000px;
	transform-style:preserve-3d;
}
.login-form .group{
	margin-bottom:15px;
}
.login-form .group .label,
.login-form .group .input,
.login-form .group .button{
	width:100%;
	color:#fff;
	display:block;
}
.login-form .group .input,
.login-form .group .button{
	border:none;
	padding:15px 20px;
	border-radius:25px;
	background:rgba(255,255,255,.1);
}
.login-form .group input[data-type="password"]{
	text-security:circle;
	-webkit-text-security:circle;
}
.login-form .group .label{
	color:#aaa;
	font-size:12px;
}
.login-form .group .button{
	background:#1161ee;
}
.login-form .group label .icon{
	width:15px;
	height:15px;
	border-radius:2px;
	position:relative;
	display:inline-block;
	background:rgba(255,255,255,.1);
}
.login-form .group label .icon:before,
.login-form .group label .icon:after{
	content:'';
	width:10px;
	height:2px;
	background:#fff;
	position:absolute;
	transition:all .2s ease-in-out 0s;
}
.login-form .group label .icon:before{
	left:3px;
	width:5px;
	bottom:6px;
	transform:scale(0) rotate(0);
}
.login-form .group label .icon:after{
	top:6px;
	right:0;
	transform:scale(0) rotate(0);
}
.login-form .group .check:checked + label{
	color:#fff;
}
.login-form .group .check:checked + label .icon{
	background:#1161ee;
}
.login-form .group .check:checked + label .icon:before{
	transform:scale(1) rotate(45deg);
}
.login-form .group .check:checked + label .icon:after{
	transform:scale(1) rotate(-45deg);
}
.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
	transform:rotate(0);
}
.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
	transform:rotate(0);
}

.hr{
	height:2px;
	margin:60px 0 50px 0;
	background:rgba(255,255,255,.2);
}
.foot-lnk{
	text-align:center;
}

</style>
</head>
<body>

<div class="login-wrap">
	<div class="login-html">

		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		
		<div class="login-form">
		<sf:form method="post" action="LoginVerification" >
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input id="user" type="text" class="input" name="username">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="Forgot.do">Forgot Password?</a>
						<center><a href="index.jsp">Go Back</a></center>
						<div class="group">
						<center><a href="adminLogin">Admin</a></center>
				</div>
				</div>
			</div>
		</sf:form>
			<sf:form method="post" action="registerPage" modalAttribute="authuser">
			<div class="sign-up-htm">
			<div class="group">
					<label for="user" class="label">First Name</label>
					<input id="user" type="text" name="firstname" class="input" required>
				</div>
				<div class="group">
					<label for="user" class="label">Last Name</label>
					<input id="user" type="text" name="lastname" class="input" required>
				</div>
				<div class="group">
					<label for="user" class="label">Phone Number (format: 9936456780)</label>
					<input id="user" type="tel" name="phoneNumber" class="input" pattern="^\d{3}\d{4}\d{3}$"  required>
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" type="Email" name="userEmail" class="input" required>
				</div>
				<div class="group">
					<label for="user" class="label">Gender</label>
				
					<input  type="radio" name="gender" value="male"  required>Male
					<input  type="radio" name="gender" value="female"  >Female
				    <input  type="radio" name="gender" value="others" >Others
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="txtPassword" type="password" name="password" class="label" data-type="password" required>
				</div>
				 <div class="group">
					<label for="pass" class="label">Confirm Password</label>
					<input id="txtConfirmPassword" type="password" class="label" data-type="password" required>
				</div> 
				
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
			
				<div class="group">
						<center><a href="index.jsp">Go Back</a></center>
				</div>
				
			
			</sf:form>
		</div>
		
	</div>
	
</div>

</body>
</html>