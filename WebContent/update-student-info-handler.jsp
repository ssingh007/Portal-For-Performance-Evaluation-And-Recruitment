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
String email=(String)session.getAttribute("email_id");

String email1= request.getParameter("email");
String name = request.getParameter("name");
String branch = request.getParameter("branch");

String num= request.getParameter("number");
Long number=Long.parseLong(num);

String month= request.getParameter("DOBmonth");
String day= request.getParameter("DOBday");
String year= request.getParameter("DOByear");
String DOB= day+"/"+month+"/"+year;

String gender=request.getParameter("gender");

String course=request.getParameter("course");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();
ResultSet rs=st.executeQuery("select * from student where email='"+email+"' ");
if(rs.next())
{
	
st.executeUpdate("update student set branch='"+branch+"',name='"+name+"',number='"+number+"',DOB='"+DOB+"',gender='"+gender+"',course='"+course+"'  where email='"+email+"'");

}
co.close();
response.sendRedirect("message.jsp");

%>

</body>
</html>

