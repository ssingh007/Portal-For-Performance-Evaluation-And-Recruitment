<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
background-position:center;
font-family:cursive;
color:white
}
.signupbox
{
width:350px;
height:1050px;
background:orange;
top:50%;
left:50%;
position:absolute;
padding:20px 30px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:370px;
}
.signupbox a
{
text-decoration:none;
font-size:12px;
line-height:20px;
color:#00FFFF;
font-family: cursive;
}
.signupbox a:hover,
/*{
color:darkgrey;
}*/
.signupbox a:focus
{
background:orange;
color:black;
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
h2
{
margin:0;
padding:0 0 20px;
text-align: left;
font-size:22px;
font-family: cursive;
color:white;

}

.signupbox p
{
margin:0;
padding:0 0 20px;
font-weight:bold;
font-family: cursive;
color:white;
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

<div class="signupbox">

<h1>STUDENT INFORMATION</h1>
<%

String email=(String)session.getAttribute("email_id");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs = st.executeQuery("select * from student where email = '"+email+"' ");

while(rs.next())
{
	%>
	<center>
	<h2>NAME:<p style="font-family:cursive; color:grey"><%=rs.getString("name") %></p></h2>
	<h2>EMAIL:<p style="font-family:cursive; color:grey"><%=rs.getString("email")%></p></h2>
	<h2>PASSWORD:<p style="font-family:cursive; color:grey"><%=rs.getString("password")%></p></h2>
	<h2>BRANCH:<p style="font-family:cursive; color:grey"><%=rs.getString("branch")%></p></h2>
	<h2>NUMBER:<p style="font-family:cursive; color:grey"><%=rs.getString("number")%></p></h2>
	<h2>DATE OF BIRTH:<p style="font-family:cursive; color:grey"><%=rs.getString("DOB")%></p></h2>
	<h2>GENDER:<p style="font-family:cursive; color:grey"><%=rs.getString("gender")%></p></h2>
	<h2>COURSE:<p style="font-family:cursive; color:grey"><%=rs.getString("course")%></p></h2>
	<a href="studentwindow.jsp">CLICK HERE TO GO BACK</a><BR><BR>
	<a href="update_student-info.jsp">MAKE CHANGES TO YOUR PROFILE</a>
	
	</center>
	<%
}

co.close();
%>
</div>
</body>
</html>