<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body background="backbackground.jpg" opacity=0.3>

<%
String e=(String)session.getAttribute("email_id");



String subject1=(String)session.getAttribute("subject1");
 session.setAttribute("subject1",subject1);

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();


String s=(String)session.getAttribute("subject");

String sno = request.getParameter("sno");
String que = request.getParameter("question");
String opt11 = request.getParameter("option1.1");
String opt12 = request.getParameter("option1.2");
String opt13 = request.getParameter("option1.3");
String opt14 = request.getParameter("option1.4");
String coropt1 = request.getParameter("1correctoption");



	if(s.equalsIgnoreCase("1"))
	{
st.executeUpdate("insert into question (sno,subject,question,option1,option2,option3,option4,correctoption) values('"+sno+"','"+subject1+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");

	
	}
	else if(s.equalsIgnoreCase("2"))
	{
		st.executeUpdate("insert into question (sno,subject,question,option1,option2,option3,option4,correctoption) values('"+sno+"','"+subject1+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");
		
	}
	else if(s.equalsIgnoreCase("3"))
	{
		st.executeUpdate("insert into question (sno,subject,question,option1,option2,option3,option4,correctoption) values('"+sno+"','"+subject1+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");
		
			
	}
	else if(s.equalsIgnoreCase("4"))
	{
		st.executeUpdate("insert into question (sno,subject,question,option1,option2,option3,option4,correctoption) values('"+sno+"','"+subject1+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");
		
		
	}
	else if(s.equalsIgnoreCase("5"))
	{
		st.executeUpdate("insert into question (sno,subject,question,option1,option2,option3,option4,correctoption) values('"+sno+"','"+subject1+"','"+que+"','"+opt11+"','"+opt12+"','"+opt13+"','"+opt14+"','"+coropt1+"')");
		
		
	}
  
	%>
	
	
	
<%

response.sendRedirect("after-add-question-handler.jsp");

co.close();
%>


</body>
</html>