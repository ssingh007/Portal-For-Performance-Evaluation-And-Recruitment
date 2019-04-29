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
String u=request.getParameter("u") ; 


        String date=(String)session.getAttribute("date");
        
        String answer=request.getParameter("answer") ;       
        String coop=(String)session.getAttribute("coop") ;
       String subject=(String)session.getAttribute("subject");
       String email=(String)session.getAttribute("email_id");
        Class.forName("com.mysql.jdbc.Driver");
		Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");
		Statement st = co.createStatement();
		st.executeUpdate("insert into answer (quesno,email,userans,correctans,subject,date) values('"+u+"','"+email+"','"+answer+"','"+coop+"','"+subject+"','"+date+"')");
		co.close();
		
	response.sendRedirect("question-paper2.jsp");	
	%>
	
</body>
</html>