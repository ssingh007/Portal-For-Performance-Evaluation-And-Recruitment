<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="beans.Subject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<base href="https://google.co.in" target="_blank">
<title>delete question form</title>
<style type="text/css">
*{
margin:0px;
padding:0px; }
.body
{
margin:0;
padding:0;
background-repeat:no-repeat;
background-size:cover;
background-position:center;
font-family:sans-serif;
}
.usertable
{
background:ORANGE
}
.tr
{font-family:cursive;
color:white;
}
.td
{
font-family:cursive;
color:white;}
.loginbox
{
/*width:320px;
height:475px;
background:ORANGE;*/
top:50%;
left:50%;
position:absolute;
padding:40px 30px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:115px;
}
.user
{
width:100px;
height:100px;
border-radius:50%;
position:absolute;
top:-50px;
left:100px;
}
h1
{
margin:0;
padding:0 0 20px;
text-align: center;
font-size:22px;
font-family: cursive;
color:BLACK;
}
.loginbox p
{
margin:0;
padding:0 0 20px;
font-weight:bold;
font-family: cursive;
color:white;
}
/*.loginbox input
{
width:100%;
margin-bottom:20px;

}
.login input[type="text"],input[type="password"]
{
border:none;
border-bottom:1 px solidwhite;
background:transparent;
outline:none;
height:40px;
color:black;
font-size
}
.loginbox input[type="sublit"]:hover
{
cursor:pointer;
background:#00FFFF;
color:#0000;
}*/
.loginbox a
{
text-decoration:none;
font-size:12px;
line-height:20px;
color:BLACK;
font-family: cursive;
}
.loginbox a:hover,
/*{
color:darkgrey;
}*/
.loginbox a:focus
{
/*background:#00ffff;*/
color:WHITE;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:GREEN;
/*box-shadow:0px 2px 4px gray;*/
}

#navbar
{
width:1000px;
height:100px;
float:right;
}
h1
 {
    color: white;
    font-family: cursive;
    font-size: 30px;
    text-align: center;
    padding-top: 20px;
}
#logo
{
width:200px;
height:100px;
float:left;
padding-left:20px;
}
</style>
</head>
<body background="backbackground.jpg" opacity=0.3>
<div id="header">

<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>
</div>
</div>
<div class="loginbox">
<center>
<table border="2px white" bgcolor="GREEN" >
<th STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:30px">WHAT YOU CAN LEARN</th><th STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:30px">CLICK HERE</th>



<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN HTML FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/html/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN JAVASCRIPT FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/jS/default.asp">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN PHP FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/pHP/default.asp">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN W3CSS FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/w3css/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN CSS FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/css/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN SQL FROM BEST RESOURCE</td><td><a href="https://www.w3schools.com/sql/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN JAVA FROM BEST RESOURCE</td><td><a href="https://www.javatpoint.com/java-tutorial">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN C LANGUAGE FROM BEST RESOURCE</td><td><a href="https://www.javatpoint.com/c-programming-language-tutorial">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN C++ FROM BEST RESOURCE</td><td><a href="https://www.javatpoint.com/cpp-tutorial">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN C# FROM BEST RESOURCE</td><td><a href="https://www.javatpoint.com/c-sharp-tutorial">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN JAVA FROM BEST RESOURCE</td><td><a href="https://www.geeksforgeeks.org/java/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN C LANGUAGE FROM BEST RESOURCE</td><td><a href="https://www.geeksforgeeks.org/c-programming-language/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN PYTHON FROM BEST RESOURCE</td><td><a href="https://www.geeksforgeeks.org/python-programming-language/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>PREPARE FOR COMPANY INTERVIEW FROM BEST RESOURCE</td><td><a href="https://www.geeksforgeeks.org/company-preparation/">GO FOR IT</a></td></tr>
<tr STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE;font-size:20px"><td>LEARN DATA STRUCTURES FROM BEST RESOURCE</td><td><a href="https://www.geeksforgeeks.org/data-structures/">GO FOR IT</a></td></tr>


</table>
</center>
</div>
</body>
</html>