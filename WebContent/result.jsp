<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Insert title here</title>
<style type="text/css">
*{
margin:0px;
padding:0px; }
.body
{
margin:0;
padding:0;
background:#00FFFF;
background-repeat:no-repeat;
background-size:cover;
background-position:center;
font-family:sans-serif;
}
.loginbox
{
width:1020px;
height:370px;
background:GREY;
top:50%;
left:50%;
position:absolute;
padding:20px 20px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:200;
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
background:GREY;
color:black;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:GREY;
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
<div id="logo">

</div>
<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>
</div>
</div>
<div class="loginbox">
<%
String subject=(String)session.getAttribute("subject");

String email=(String)session.getAttribute("email_id");

String date=(String)session.getAttribute("date");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs=st.executeQuery("select * from answer where date='"+date+"'and subject='"+subject+"'and email='"+email+"'");

int notattempted=0;

int correct=0;

int wrong=0;

while(rs.next())
{
	
	String ans=rs.getString("userans");
	String corans=rs.getString("correctans");
if(ans.equalsIgnoreCase("null"))
{
	notattempted++;
}
else if(ans.equals(corans))
{
	correct++;
	}

else 
{
	wrong++;
	}
}
int tot=notattempted+correct+wrong;

%>

<center><h1>TEST RESULT</h1>
</center>
<center style="font-family:cursive;color:white">
TEST DATE:<%=date %><br>
SUBJECT:<%=subject %><br>
EMAIL:<%=email %><br>
NUMBER OF CORRECTLY ATTEMPTED QUESTIONS:<%=correct %><br>
NUMBER OF NOT ATTEMPTED QUESTIONS:<%=notattempted %><br>
NUMBER OF INCORRECTLY ATTEMPTED QUESTIONS:<%=wrong %><br><br>
</center >

<CENTER>YOU HAVE GOT <%=correct*10%>% IN YOUR TEST<br><br>

<a href="admin-logout.jsp">CLICK HERE TO LOGOUT NOW</a><br></CENTER>


<%

co.close(); %>
</body>
</html>