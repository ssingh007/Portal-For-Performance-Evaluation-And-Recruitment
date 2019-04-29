<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add question</title>
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
.loginbox
{
width:320px;
height:650px;
background:RED;
top:50%;
left:50%;
position:absolute;
padding:70px 30px;
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
background:RED;
color:black;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:RED;
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

<%


String e=(String)session.getAttribute("email_id");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs = st.executeQuery("select * from admin where email = '"+e+"'");
while(rs.next())
{
%>
<div id="header">

<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>
</div>
</div>
<div class="loginbox">

<h1>DELETE QUESTION FROM??</h1>

<a href="delete-question2.jsp?y=<%=rs.getString("subject1")%>">DELETE FROM : <%=rs.getString("subject1")%></A><BR><BR>

<a href="delete-question2.jsp?y=<%=rs.getString("subject2")%>">DELETE FROM : <%=rs.getString("subject2")%></A><BR><BR>

<a href="delete-question2.jsp?y=<%=rs.getString("subject3")%>">DELETE FROM : <%=rs.getString("subject3")%></A><BR><BR>

<a href="delete-question2.jsp?y=<%=rs.getString("subject4")%>">DELETE FROM : <%=rs.getString("subject4")%></A><BR><BR>

<a href="delete-question2.jsp?y=<%=rs.getString("subject5")%>">DELETE FROM : <%=rs.getString("subject5")%></A><BR><BR>



<A HREF="adminwindow.jsp">CLICK HERE TO GO BACK...</A><br><br>

</div>
<%
}
co.close();
%>



</body>
</html>