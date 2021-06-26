<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>
<%@page errorPage="error.jsp" %>
<%
User user=(User)session.getAttribute("CurrentUser");
if(user==null)
{
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>User Profile</title>
</head>
<body class="text-white bg-dark">
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="index.jsp"> <span class="fa fa-asterisk"></span> ShivBlog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-handshake-o"></span> Learn with Shivansh <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="fa fa-sitemap"></span> Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming language</a>
          <a class="dropdown-item" href="#">DSA</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Project Implementaion</a>
        </div>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="ind.html"><span class="fa fa-phone"></span> Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#add_post_modal"><span class="fa fa-book"></span> Do Post</a>
      </li>
    </ul>
    
    <ul class="navbar-nav mr-right">
    <li class="nav-item">
     <a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModalCenter"><span class="fa fa-user"></span> <%=user.getName() %></a>
    </li>
    <form action="LogoutServlet" method="post">
     <button class="btn btn-outline-light font-weight-bold" ><span class="fa fa-user-circle"></span> Log out</button>
     </form>
    </ul>
  </div>
</nav>
<!-- main body of page -->
<main>
<div class="container">
<div class="row mt-4">
<div class="col-md-3">
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action active">
   All Post
  </a>
  <%
  PostDao d=new PostDao(ConnectionProvider.getConnection());
  ArrayList<Category> list1=d.getAllCategories();
  for(Category cc:list1)
  {
	  %>
  <a href="https://en.wikipedia.org/wiki/List_of_emerging_technologies" class="list-group-item list-group-item-action"><%=cc.getName() %></a>
  
  <%
  }
  %></div>
  </div>
<div  class="col-md-8">
<div class="container text-center" id="loader">
<i class="fa fa-refresh fa-4x fa-spin"></i>
<h3 class="mt-2">Loading.....</h3>
</div>
<div class="container-fluid" id="post-container">

</div>
</div>
</div>
</div>
</main>
<!-- end main body -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white">
        <h5 class="modal-title" id="exampleModalLongTitle">ShivBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-dark text-center">
        
        <table class="table">
  <tbody>
  
    <tr>
      <th scope="row">Name :</th>
      <td><%=user.getName() %></td>
      
    </tr>
    <tr>
      <th scope="row">Email :</th>
      <td><%=user.getEmail() %></td>
      
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><%=user.getGender() %></td>
    </tr>
  </tbody>
</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- post model end -->

<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="add_post_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provide the post details....</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form id="add-post-form" action="AddPostServlet" method="post">
        
        <div class="form-group">
        <select class="form-control" name="cid">
        <option selected disabled>---Select Category---</option>
        
        <%
        PostDao post=new PostDao(ConnectionProvider.getConnection());
        ArrayList<Category> list=post.getAllCategories();
        for(Category  c:list)
        {
        %>
        <option value="<%=c.getCid()%>"><%= c.getName() %></option>
        <% } %>
        
        </select>
        </div>
        
        <div class="form-group">        
        <input name="pTitle" type="text" placeholder="Enter post title" class="form-control">
        </div>
        
        
        <div class="form-group">
        <textarea name="pContent" class ="form-control" style="height:150px;"placeholder="Enter your content"></textarea>
        </div>
        
        <div class="form-group">
        <textarea name="pCode" class ="form-control" style="height:150px;"placeholder="Enter your program (if any)"></textarea>
        </div>
        
        <div class="form-group">
        <label>Select your pic..</label><br>
        <input type="file" name="pic">
        </div>
        <div class="container text-right">
        <button type="submit" class="btn btn-outline-dark">Post</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
</div>

<!-- now add post js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function(e){
	$("#add-post-form").on("submit",function(event){
		event.preventDefault();
	    console.log("you have clicked on submit")
	    let form=new FormData(this);
	    
	    $.ajax({
	    	url:"AddPostServlet",
	    	type:"POST",
	    	data:form,
	    	success:function(data,textStatus,jqXHR){
	    		swal("Post successfully saved", {
					  
				});
	    	},
	    	processData:false,
	    	contentType:false
	    })
	   
	})
	
})
</script>
<!-- loading post using ajax -->
<script>
$(document).ready(function (e){
	$.ajax({
		url:"Load_post.jsp",
		method:"POST",
		success:function(data,textStatus,jqXHR)
		{
			console.log(data);
			$("#loader").hide();
			$('#post-container').html(data)
		}
	})
})
</script>

</body>
</html>