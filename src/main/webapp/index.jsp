<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" import="com.tech.blog.helper.ConnectionProvider"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

</style>
<meta charset="ISO-8859-1">
<title>ShivBlog</title>
</head>
<body>
<%@include file="normal_navbar.jsp" %>
<div class="container-fluid p-0 m-0">
<div class="jumbotron primary-background1 ">
<div class="container">
<h3 class="text-black font-weight-bold display-4">Hello Friend </h3>
<h5 class="text-black">Welcome to ShivBlog, World of Knowledge.</h5>

<p class="text-white">Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms.</p>
<p class="text-white">The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit.</p>
<button class="btn btn-outline-dark font-weight-bold">Start Now!</button>
<a href="login.jsp" class="btn btn-outline-dark font-weight-bold">Login</a>
</div>
</div>
</div>
<br>
<div class="container">
<div class="row mb-4">
<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/core_java.jpg">
  <div class="card-body">
    <h5 class="card-title">Core Java Programming</h5>
    <p class="card-text">The word Core describes the basic concept of something, and here, the phrase 'Core Java' defines the basic Java that covers the basic concept of Java programming language. We all are aware that Java is one of the well-known and widely used programming languages, and to begin with it, the beginner has to start the journey with Core Java and then towards the Advance Java.</p>
    <a href="https://www.javatpoint.com/what-is-core-java#" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/ad_java.jpg">
  <div class="card-body">
    <h5 class="card-title">Advance Java Programming</h5>
    <p class="card-text">Advanced Java is everything that goes beyond Core Java – most importantly the APIs defined in Java Enterprise Edition, includes Servlet programming, Web Services, the Persistence API.</p>
    <a href="https://www.edureka.co/blog/advanced-java-tutorial" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/web-development.jpg" ">
  <div class="card-body">
    <h5 class="card-title">Web development</h5>
    <p class="card-text">Web development is the work involved in developing a web site for the Internet ( World Wide Web) or an intranet (a private network). Web development can range from developing a simple single static page of plain text to complex web-based internet applications (web apps), electronic businesses, and social network services.</p>
    <a href="https://www.w3schools.com/whatis" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>
</div>
<div class="row mb-4">
<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/android.jpg">
  <div class="card-body">
    <h5 class="card-title">Android developemnt</h5>
    <p class="card-text">The official site for Android app developers. Provides the Android SDK tools and API documentation. The official site for Android developers. Provides the Android SDK and documentation for app developers and designers. Platform Android Studio Google Play Jetpack Kotlin Docs News Android for Developers.</p>
    <a href="https://developer.android.com" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/ML.jpg" >
  <div class="card-body">
    <h5 class="card-title">Machine Learning</h5>
    <p class="card-text">Machine learning (ML) is the study of computer algorithms that improve automatically through experience and by the use of data. It is seen as a part of artificial intelligence. Machine learning algorithms build a model based on sample data, known as "training data", in order to make predictions or decisions without being explicitly programmed to do so.</p>
    <a href="https://www.coursary.com/machine/learning" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="pics/data_science.jpg" >
    <div class="card-body">
    <h5 class="card-title">Data Science</h5>
    <p class="card-text">
Data science is an interdisciplinary field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from structured and unstructured data, and apply knowledge and actionable insights from data across a broad range of application domains.</p>
    <a href="https://www.udemy.com/data-science/online-course" class="btn primary-background1 text-white">Learn now</a>
  </div>
</div>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js">  
</script>
</body>
</html>