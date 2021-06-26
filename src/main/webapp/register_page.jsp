<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<%@include file="normal_navbar.jsp" %>
<main class="mt-4">
<div class="container">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center primary-background text-white">
<span class="fa fa-3x fa-user-circle"></span><br>
Register here
</div>

<div class="card-body">
<form id="reg-form" action="RegisterServlet" method="post">
  <div class="form-group">
    <label for="exampleusername">User name</label>
    <input name="user_name" type="text" class="form-control" id="exampleusername" aria-describedby="username" placeholder="User name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
   </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="examplegender">Select Gender</label><br>
    <input type="radio" id="gender" name="gender" value="male" >Male
    <input type="radio" id="gender" name="gender" value="female">Female
  </div>
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
  </div>
  <br>
  <button type="submit" class="btn primary-background text-white">Submit</button>
</form>
</div>
<div class="footer"></div>
</div>
</div>
</div>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(){
	
	
	$('#reg-form').on('submit',function(event){
	event.preventDefault();
	
	let form=new FormData(this);
	
	$.ajax({
		url:"RegisterServlet",
		type: 'POST',
		data: form,
		success: function(data,textStatus, jqXHR){
			swal("Successfully Registered", {
				  
				});
		},
		error: function(jqXHR,textStatus, errorTHrown){
			swal("SORRY !, Something went wrong", {
				  
			});
		},
		processData:false,
		contentType:false
	});
		
	});
});
</script>
</body>
</html>