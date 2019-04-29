
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String subject=request.getParameter("subject");

String e=(String)session.getAttribute("email_id");

String subject1=request.getParameter("subject1");
String subject2=request.getParameter("subject2");
String subject3=request.getParameter("subject3");
String subject4=request.getParameter("subject4");
String subject5=request.getParameter("subject5");

Class.forName("com.mysql.jdbc.Driver");

Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st= co.createStatement();

ResultSet rs=st.executeQuery("select * from admin where email='"+e+"' ");

if(rs.next())
{
	if(subject.equalsIgnoreCase("1"))
	{
		st.executeUpdate("UPDATE admin SET subject1='"+subject1+"' WHERE email='"+e+"'");
		
	}
	else if(subject.equalsIgnoreCase("2"))
	{
		st.executeUpdate("UPDATE admin SET subject1='"+subject1+"' subject2='"+subject2+"' WHERE email='"+e+"'");
	}
	else if(subject.equalsIgnoreCase("3"))
	{
		st.executeUpdate("UPDATE admin SET subject1='"+subject1+"' subject2='"+subject2+"', subject3='"+subject3+"' WHERE email='"+e+"'");
	}
	else if(subject.equalsIgnoreCase("4"))
	{
		st.executeUpdate("UPDATE admin SET subject1='"+subject1+"' subject2='"+subject2+"', subject3='"+subject3+"' ,subject4='"+subject4+"' WHERE email='"+e+"'");
	}
	else if(subject.equalsIgnoreCase("5"))
	{
		st.executeUpdate("UPDATE admin SET subject1='"+subject1+"' ,subject2='"+subject2+"', subject3='"+subject3+"', subject4='"+subject4+"' ,subject5='"+subject5+"' WHERE email='"+e+"'");
	}
	response.sendRedirect("after-add-subject-handler.jsp");
	}

else
{
	out.println("SORRY AN ERROR OCCURED SUBJECTS CANT BE ADDED");
	}
%>

</body>
</html>