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


String e=(String)session.getAttribute("email_id");

Class.forName("com.mysql.jdbc.Driver");

Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

Statement st = co.createStatement();

String s1=(String)session.getAttribute("subject");

ResultSet rs = st.executeQuery("select * from question WHERE subject='"+s1+"'");

String quest=(String)session.getAttribute("question");

if(rs.next())
{
	String sno = request.getParameter("sno");
	String que1 = request.getParameter("question1");
	String opt11 = request.getParameter("option1.1");
	String opt12 = request.getParameter("option1.2");
	String opt13 = request.getParameter("option1.3");
	String opt14 = request.getParameter("option1.4");
	String coropt1 = request.getParameter("1correctoption");

st.executeUpdate("UPDATE question SET sno='"+sno+"',subject='"+s1+"',question='"+que1+"',option1='"+opt11+"',option2='"+opt12+"',option3='"+opt13+"',option4='"+opt14+"',correctoption='"+coropt1+"' WHERE question='"+quest+"'");

	}
	
session.removeAttribute("subject");
session.removeAttribute("question");
response.sendRedirect("after-update-question-handler.jsp");

co.close();
%>



</body>
</html>