<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Feedback Result</title>

<style>

body{

    font-family: Arial;
    background:#f2f2f2;

}

.container{

    width:650px;
    margin:auto;
    margin-top:40px;
    background:white;
    padding:20px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;

}

h2{

    text-align:center;
    color:blue;

}

table{

    width:100%;
    border-collapse:collapse;

}

table,th,td{

    border:1px solid black;

}

th{

    background:#4CAF50;
    color:white;
    padding:10px;

}

td{

    padding:10px;

}

.message{

    text-align:center;
    color:red;
    font-size:18px;
    font-weight:bold;

}

a{

    text-decoration:none;
    font-size:18px;

}

</style>

</head>

<body>

<div class="container">

<h2>Student Feedback Details</h2>

<%

String message=(String)request.getAttribute("message");

if(message!=null){

%>

<p class="message">

<%=message %>

</p>

<%

}

if(request.getAttribute("htno")!=null){

%>

<table>

<tr>

<th>Field</th>

<th>Value</th>

</tr>

<tr>

<td>Hall Ticket Number</td>

<td><%=request.getAttribute("htno")%></td>

</tr>

<tr>

<td>Student Name</td>

<td><%=request.getAttribute("name")%></td>

</tr>

<tr>

<td>Year</td>

<td><%=request.getAttribute("year")%></td>

</tr>

<tr>

<td>Branch</td>

<td><%=request.getAttribute("branch")%></td>

</tr>

<tr>

<td>Semester</td>

<td><%=request.getAttribute("semester")%></td>

</tr>

<tr>

<td>Feedback</td>

<td><%=request.getAttribute("comment")%></td>

</tr>

</table>

<%

}

%>

<br>

<center>

<a href="index.jsp">Home</a>

&nbsp;&nbsp;&nbsp;&nbsp;

<a href="search.jsp">Search Again</a>

</center>

</div>

</body>

</html>
