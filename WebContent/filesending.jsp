<%@page import="java.io.File"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="left">
<th>sno</th><th>filename</th><th>filesize(bytes)</th><th>choice1</th><th>choice2</th>
<%
 // get the path of server
 String rootPath = application.getRealPath("/");

 // get the path of 'myfiles' folder
 String folderPath = rootPath + "myfiles";
 
 // denote this path using file class
 File file = new File(folderPath);
 
 // get the list of all the files in this path
 File[] array = file.listFiles();
 
 // store array inside session
 session.setAttribute("myarray",array);
 
 // store folderpath inside session
 session.setAttribute("filepath",folderPath);
 
 // fetch the data from this array using for loop
 for(int i = 0; i < array.length; i++)
 {
 
  // get name of file
  String filename = array[i].getName();
  
  // get size of file
  long filesize = array[i].length();
%>
<tr>
 <td><%=i + 1%></td>
 <td><%=filename%></td>
 <td><%=filesize%></td>
 <td><a href="show-file.jsp?id=<%=i%>&click=v">view</a></td>
 <td><a href="show-file.jsp?id=<%=i%>&click=d">download</a></td>
 </tr>
<% 
 }
%>
</table>
</body>
</html>