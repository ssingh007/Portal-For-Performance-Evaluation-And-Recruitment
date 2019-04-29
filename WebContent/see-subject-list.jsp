<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="beans.Subject" %>
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
/*background:#00ffff;*/
color:ORANGE;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:ORANGE;
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
<table border="2px white" bgcolor="grey" >
<th STYLE="COLOR:orange;FONT-FAMILY:CURSIVE;font-size:30px">CILCK ON SUBJECT TO GIVE EXAM</th>
<% 


Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs = st.executeQuery("select * from admin");

ArrayList<Subject> ListofSubject=new ArrayList<Subject>();

while(rs.next())
{
	String sub1=rs.getString("subject1");
	String sub2=rs.getString("subject2");
	String sub3=rs.getString("subject3");
	String sub4=rs.getString("subject4");
	String sub5=rs.getString("subject5");
	
	
Subject subject	= new Subject();

subject.setSubject1(sub1);
subject.setSubject2(sub2);
subject.setSubject3(sub3);
subject.setSubject4(sub4);
subject.setSubject5(sub5);


ListofSubject.add(subject);

}


for(Subject s:ListofSubject)
{
out.println("<tr>");
String sub1=s.getSubject1();
String sub2=s.getSubject2();
String sub3=s.getSubject3();
String sub4=s.getSubject4();
String sub5=s.getSubject5();
	
	out.println("<td >");
	%>
	<A HREF="question-paper.jsp?su=1&sub=<%=sub1%>" style="font-size:20px">->EXAM OF <%=sub1%></A><br>
	<A HREF="question-paper.jsp?su=2&sub=<%=sub2%>" style="font-size:20px">->EXAM OF <%=sub2%></A><br>
	<A HREF="question-paper.jsp?su=3&sub=<%=sub3%>" style="font-size:20px">->EXAM OF <%=sub3%></A><br>
	<A HREF="question-paper.jsp?su=4&sub=<%=sub4%>" style="font-size:20px">->EXAM OF <%=sub4%></A><br>
	<A HREF="question-paper.jsp?su=5&sub=<%=sub5%>"style="font-size:20px">->EXAM OF <%=sub5%></A><br>
	<%
	out.println("</td>");
	
	
	
	out.println("</tr>");

}


co.close();
%>


</table>
</center>
</div>
</body>
</html>