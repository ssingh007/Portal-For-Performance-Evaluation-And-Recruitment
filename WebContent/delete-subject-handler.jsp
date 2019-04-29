<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String sub = request.getParameter("sub");

String p=(String)session.getAttribute("pass");
String e=(String)session.getAttribute("email_id");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

ResultSet rs=st.executeQuery("select * from admin where email='"+e+"' ");
if(rs.next())
{
if(sub.equalsIgnoreCase("subject1"))
{
	st.executeUpdate("UPDATE admin SET subject1= NULL where  subject1 is not NULL AND email='"+e+"'");
	}
else if(sub.equalsIgnoreCase("subject2"))
{
	st.executeUpdate("UPDATE admin SET subject2= NULL where  subject2 is not NULL AND email='"+e+"'");
	}
else if(sub.equalsIgnoreCase("subject3"))
{
	st.executeUpdate("UPDATE admin SET subject3= NULL where  subject3 is not NULL AND email='"+e+"'");
	}
else if(sub.equalsIgnoreCase("subject4"))
{
	st.executeUpdate("UPDATE admin SET subject4= NULL where  subject4 is not NULL AND email='"+e+"'");
	}
else if(sub.equalsIgnoreCase("subject5"))
{
	st.executeUpdate("UPDATE admin SET subject5= NULL where  subject5 is not NULL AND email='"+e+"'");
	}
}
response.sendRedirect("after-delete-subject-handler.jsp");

co.close();
%>



</body>
</html>