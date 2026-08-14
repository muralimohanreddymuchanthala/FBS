<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Student Feedback System</title>

<style>

body{

font-family:Arial;
background:#f2f2f2;

}

.container{

width:500px;
margin:auto;
margin-top:40px;
background:white;
padding:20px;
border-radius:10px;
box-shadow:0px 0px 10px gray;

}

input,select,textarea{

width:100%;
padding:10px;
margin-top:8px;
margin-bottom:15px;

}

input[type=submit]{

background:#2196F3;
color:white;
border:none;
cursor:pointer;
font-size:18px;

}

input[type=submit]:hover{

background:#0b7dda;

}

h2{

text-align:center;

}

</style>

</head>

<body>

<div class="container">

<h2>Student Feedback Form</h2>

<form action="SaveFeedbackServlet" method="post">

<label>Hall Ticket Number</label>

<input type="text"
name="htno"
required>

<label>Student Name</label>

<input type="text"
name="name"
required>

<label>Year</label>

<select name="year">

<option>I</option>

<option>II</option>

<option>III</option>

<option>IV</option>

</select>

<label>Branch</label>

<select name="branch">

<option>CSE</option>

<option>CSE-AIML</option>

<option>CSE-DS</option>

<option>ECE</option>

<option>EEE</option>

<option>MECH</option>

<option>CIVIL</option>

</select>

<label>Semester</label>

<select name="semester">

<option>I</option>

<option>II</option>

</select>

<label>Feedback</label>

<textarea
name="comment"
rows="5"
required></textarea>

<input
type="submit"
value="Submit Feedback">

</form>

<br>

<center>

<a href="search.jsp">

Search Student Feedback

</a>

</center>

</div>

</body>

</html>
