<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="beans.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
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
<%

String email =(String) session.getAttribute("email_id");
String subject=(String) session.getAttribute("subject");
String date =(String) session.getAttribute("date");

Class.forName("com.mysql.jdbc.Driver");
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");
Statement st = co.createStatement();

String sql ="select distinct email from answer where email='"+email+"' and subject='"+subject+"' and date='"+date+"'";

ResultSet rs = st.executeQuery(sql);

if(rs.next()){
	%>
	<center>
<h1 ><%=email%>YOU ALRADY HAVE PARTICIPATED IN THE <%=subject %> QUIZ .........</H1><h1 >SO YOU CAN'T PARTICIPATE IN THE <%=date %> QUIZ AGAIN  </h1>
<h1 >YOU MAY COME AGAIN NEXT DAY</h1>
<a href="studentwindow.jsp">CLICK HERE TO GO BACK </a>
	</center>
	
	
	<%
	co.close();//this is the check for the student to not to give exam again on the same day of the same subject
}
else{
	Statement st2 = co.createStatement();
	
	String query = "select * from question where subject='"+subject+"'";
	
	ResultSet rs2 = st2.executeQuery(query);
	
	ArrayList<Question> qlist = new ArrayList<Question>();
	
	if(rs2.next()){
		long sno = rs2.getLong("sno");
		String question = rs2.getString("question");
		String option1 = rs2.getString("option1");
		String option2 = rs2.getString("option2");
		String option3 = rs2.getString("option3");
		String option4 = rs2.getString("option4");
		String correctoption = rs2.getString("correctoption");
		
		Question q = new Question(sno,question,option1,option2,option3,option4,correctoption);
		qlist.add(q);	
		
	}
	else
	{
	%><center>
	<h1 style="font-family:cursive">QUESTION OF THE SUBJECT&nbsp;<%=subject%> IS NOT AVAILABLE.......... </h1>
	<h1 style="font-family:cursive">PLEASE TRY AGAIN OR GIVE EXAM OF ANOTHER SUBJECT   </h1>
	<a href="studentwindow.jsp">CLICK HERE TO GO BACK </a>
		</center><%
		}
	
	session.setAttribute("qlist", qlist);
	response.sendRedirect("question-paper2.jsp");

	co.close();
	
}
%>
</div>
</body>
</html>