<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
 // fetch the data associated with url
 String str = request.getParameter("id");
 String choice = request.getParameter("click");
 
 // convert str into id, reason index of array is alwayz
 // int
 int index = Integer.parseInt(str);
 
 // fetch arra of file and filepath from session
 File[] files = (File[])session.getAttribute("myarray");
 String filepath = (String)session.getAttribute("filepath");
 
 // get the file name selected by the client
 String myFileName = files[index].getName();
 
 //
 response.setContentType("text/plain");
 
 //
 if(choice.equals("v"))
 {
  response.setHeader("Content-Disposition"," inline; filename="+myFileName);
 }
 else
 {
  response.setHeader("Content-Disposition"," attachment; filename="+myFileName);
 }
 
 // open this file in read mode
 FileInputStream fi = new FileInputStream
  (filepath+"/"+myFileName);
 
 // get file size
 int size = fi.available();
 
 // create an array of byte to store file data
 byte[] buffer = new byte[size];
 
 // fetch file data and store it inside array of byte
 fi.read(buffer);
 
 // convert array of byte into string
 String data = new String(buffer);
 
 // send the data of file at web browser
 response.getWriter().write(data);  
%>