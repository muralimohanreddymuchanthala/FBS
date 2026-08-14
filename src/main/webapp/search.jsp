<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Search Student Feedback</title>

<style>

body{

    font-family: Arial;
    background:#f2f2f2;

}

.container{

    width:450px;
    margin:auto;
    margin-top:80px;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;

}

h2{

    text-align:center;
    color:#0066cc;

}

input[type=text]{

    width:100%;
    padding:10px;
    margin-top:10px;
    margin-bottom:20px;

}

input[type=submit]{

    width:100%;
    padding:10px;
    background:#28a745;
    color:white;
    border:none;
    font-size:18px;
    cursor:pointer;

}

input[type=submit]:hover{

    background:#218838;

}

a{

    text-decoration:none;
    color:blue;

}

</style>

</head>

<body>

<div class="container">

<h2>Search Student Feedback</h2>

<form action="SearchFeedbackServlet" method="post">

<label>Enter Hall Ticket Number</label>

<input
type="text"
name="htno"
placeholder="Example: 24N01A0501"
required>

<input
type="submit"
value="Search Feedback">

</form>

<br>

<center>

<a href="index.jsp">

Back to Feedback Form

</a>

</center>

</div>

</body>

</html>
