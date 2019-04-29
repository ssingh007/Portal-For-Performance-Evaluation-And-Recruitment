<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.util.ArrayList" %>
    
    <%@ page import="beans.Question" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
background:orange
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
width:850px;
height:580px;
background:orange;
top:50%;
left:50%;
position:absolute;
padding:70px 30px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:100px;
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
color:white;
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
color:white;
font-family: cursive;
}
.loginbox a:hover,
/*{
color:darkgrey;
}*/
.loginbox a:focus
{
/*background:#00ffff;*/
color:black;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:orange;
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
<%
String cdate =new SimpleDateFormat("dd/MM/yyyy").format(new Date());
String sub=request.getParameter("sub");
session.setAttribute("subject",sub);

session.setAttribute("date",cdate);

session.getAttribute("email_id");
%>
<h2>INSTRUCTIONS</h2>
<p>YOU are going to appear for the SUBJECT mention below with EMAIL ID mentioin below.</p>
<p>For the below mentioned subject you will encounter TEN question for which you will have TEN minutes to complete.</p>
<p>Try to complete the quiz as quickly as you can.</p>
<p>ALL THE BEST!!!! THERE IS NO NEGATIVE MARKING</p>
<h2>SUBJECT:<%=sub %></h2>
<h2>EMAIL ID:<%=session.getAttribute("email_id") %></h2><br>
<p>TODAYS DATE</p>
<form action="getquestion.jsp" method="post">
<p>DATE:<p>
<input type="text" value="<%=cdate %>" readonly="readonly" style="border: none;"><br><br>
<input type="submit" value="SUBMIT NOW"><br><br>
<a href="see-subject-list.jsp">CLICK HERE TO GO BACK</a><br><br>
</form>
</center>
</div>
</body>
</html>