<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
/*.loginbox
{
width:320px;
height:475px;
background:RED;
top:50%;
left:50%;
position:absolute;
padding:70px 30px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:115px;
}*/
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
color:#00ffff;
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

<% 
String z=request.getParameter("y");

String sub=request.getParameter("sub");

session.setAttribute("subject",z);

session.setAttribute("subject1",sub);
%>
</div>

</div>
<center>
<div class="loginbox">
		<h1>PLEASE ADD QUESTION FOR <%=sub%> HERE</h1>
		

<form action="add-question-handler.jsp" method="post">

<div style="color:white ; font-type=cursive">SERIAL NUMBER</div>
<input type="text" name="sno" style="height:50px;width:50px"><br>
<div style="color:white ; font-type=cursive">QUESTION </div>
<input type="text" name="question" style="height:50px;width:1200px" ><br>
<div style="color:white ; font-type=cursive">OPTION 1</div>
<input type="text" name="option1.1" style="height:50px;width:500px"><br>
<div style="color:white ; font-type=cursive">OPTION 2</div>
<input type="text" name="option1.2" style="height:50px;width:500px"><br>
<div style="color:white ; font-type=cursive">OPTION 3</div>
<input type="text" name="option1.3" style="height:50px;width:500px"><br>
<div style="color:white ; font-type=cursive">OPTION 4</div>
<input type="text" name="option1.4" style="height:50px;width:500px"><br>
<div style="color:white ; font-type=cursive">CORRECT OPTION</div>
<input type="text" name="1correctoption" style="height:50px;width:500px"><br>

<input type="submit" value="submit question"><br><br>


</form>
<A HREF="adminwindow.jsp"> CLICK HERE TO GO BACK...</A>
</div>
</center>

</body>
</html>