<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
      <%@ page import="java.util.*" %>
 <%@page import="java.io.File" %>
 <%@page import="java.util.Properties" %>
 <%@page import="javax.mail.Authenticator" %>
 <%@page import="javax.mail.Message.RecipientType" %>
 <%@page import="javax.mail.PasswordAuthentication" %>
 <%@page import="javax.mail.Session" %>
 <%@page import="javax.mail.Transport" %>
 <%@page import="javax.mail.internet.InternetAddress" %>
 <%@page import="javax.mail.internet.MimeBodyPart" %>
 <%@page import="javax.mail.internet.MimeMessage" %>
 <%@page import="javax.mail.internet.MimeMultipart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String URL=(String)session.getAttribute("url");
String email=request.getParameter("email");

if(URL.equals("1"))
{
	Class.forName("com.mysql.jdbc.Driver");

	Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

	Statement st = co.createStatement();

	ResultSet rs = st.executeQuery("select * from admin where email = '"+email+"'  ");

	while(rs.next())
	{
		String pass=rs.getString("password");
		session.setAttribute("pass",pass);
	}
	

	co.close();
}
else if(URL.equals("2"))
{
	Class.forName("com.mysql.jdbc.Driver");

	Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

	Statement st = co.createStatement();

	ResultSet rs = st.executeQuery("select * from student where email = '"+email+"'  ");

	while(rs.next())
	{
			String pass=rs.getString("password");
			session.setAttribute("pass",pass);
	}
	

	co.close();
}
else if(URL.equals("3"))
{
	Class.forName("com.mysql.jdbc.Driver");

	Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/portalinfo","root","sahil");

	Statement st = co.createStatement();

	ResultSet rs = st.executeQuery("select * from company where email = '"+email+"'  ");

	while(rs.next())
	{
			String pass=rs.getString("password");
			session.setAttribute("pass",pass);
	}
	

	co.close();
}

class BabyAuthenticator extends Authenticator
{
	@Override
	protected PasswordAuthentication 
	getPasswordAuthentication() 
	{
		
		PasswordAuthentication pa = new 
				PasswordAuthentication
				("cutehasan17@gmail.com","cutehasan");	
		
		
		return pa;
	}
}


		try 
		{
			
	 String pass=(String)session.getAttribute("pass");
		Properties p = new Properties();
		
		p.put("mail.smtp.host","smtp.gmail.com");
		p.put("mail.smtp.port","587");
		p.put("mail.smtp.starttls.enable","true");
		p.put("mail.smtp.auth","true");
	
		p.put("mail.smtp.ssl.trust","smtp.gmail.com");
		
		
		Authenticator auth = new BabyAuthenticator();
		
	
		Session sessio = Session.getInstance(p, auth);

		
		MimeMessage message = new MimeMessage(sessio);
		
		message.setFrom
		(new InternetAddress("cutehasan17@gmail.com"));
		
		
		InternetAddress rcvr1 = new InternetAddress(email);
		

		InternetAddress[] rcvrs = {rcvr1};
		
		message.addRecipients(RecipientType.TO,rcvrs);
		
	
		message.setSubject("Mail Regarding Your Password");

		MimeBodyPart part1 = new MimeBodyPart();
		
		part1.setContent("<i style='color : black'>Your password is </i>"+pass,"text/html");
		MimeMultipart multipart = new MimeMultipart();
		multipart.addBodyPart(part1);
		
		
		message.setContent(multipart);
		
		
		Transport.send(message);
		
		
		} 
		catch (Exception eq) 
		{
			out.println("error "+eq);
		}
	

		session.removeAttribute("pass");
		session.removeAttribute("url");
		response.sendRedirect("homepage.jsp");
		%>
</body>
</html>