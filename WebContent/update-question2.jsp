<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
background:red
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
background:RED;*/
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
color:red;
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
<div id="header">

<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>
</div>
</div>
<div class="loginbox">
<center>
<table border="1px white" bgcolor="grey" >
<th STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE">SNO</th><th STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE">QUESTION</th><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> OPTION 1 </tH><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> OPTION 2</TH><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> OPTION 3</TH><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> OPTION 4</TH><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> CORRECT OPTION</TH><TH STYLE="COLOR:WHITE;FONT-FAMILY:CURSIVE"> UPDATE</TH>
<% 
String z=request.getParameter("y");
//session.setAttribute("sub",z);

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs = st.executeQuery("select sno,question,option1,option2,option3,option4,correctoption from question where subject = '"+z+"'");

ArrayList<Question> ListofQuestion=new ArrayList<Question>();

while(rs.next())
{
	Long sno=rs.getLong("sno");
	String que=rs.getString("question");
	String op1=rs.getString("option1");
	String op2=rs.getString("option2");
	String op3=rs.getString("option3");
	String op4=rs.getString("option4");
	String corop=rs.getString("correctoption");
	
Question question	= new Question();

question.setSno(sno);
question.setQuestion(que);
question.setOption1(op1);
question.setOption2(op2);
question.setOption3(op3);
question.setOption4(op4);
question.setCoroption(corop);

ListofQuestion.add(question);

}


for(Question q:ListofQuestion)
{
out.println("<tr>");
Long sno=q.getSno();
String que=q.getQuestion();
	String op1=q.getOption1();
	String op2=q.getOption2();
	String op3=q.getOption3();
	String op4=q.getOption4();
	String corop=q.getCoroption();
	
	out.println("<td >");
	out.println(sno);
	out.println("</td>");
	out.println("<td >");
	out.println(que);
	out.println("</td>");
	out.println("<td>");
	out.println(op1);
	out.println("</td>");
	out.println("<td>");
	out.println(op2);
	out.println("</td>");
	out.println("<td>");
	out.println(op3);
	out.println("</td>");
	out.println("<td>");
	out.println(op4);
	out.println("</td>");
	out.println("<td>");
	out.println(corop);
	out.println("</td>");
	out.println("<td>");
	%>
	
	<a href="update-question-handler.jsp?m=<%=que%>">UPDATE</a>
	
	<%
	out.println("</td>");
	out.println("</tr>");

}




co.close();

session.setAttribute("subject",z);
%>
</table>
</center>
</div>
</body>
</html>