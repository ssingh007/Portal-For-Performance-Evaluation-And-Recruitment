<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css" >
*{
margin:0px;
padding:0px; }

.body{
background-repeat:no-repeat;
background-size:cover;
}

.menu
{
padding:0;
margin:0;
width:220px;
height:100%;
background-color:black;
}

.menu li
{
list-style:none;/*due to this line the dots are removed*/
margin-left:0px;
/*border-right:1px solid gray;
border-left:1px solid gray;
padding:15px;*/
position :relative;
width:220px;
background-color:#00FFFF;
border-top: 1px solid #BDC3C7;
text-align: center;
}


.menu li a{
display:block;
color:white;
line-height:80px;
text-align:center;
font-family:cursive;
font-size:20px;
text-decoration:none;
background:orange;
}
.menu li>a:hover,
/*with out , focus nahin hoga*/
.menu li>a:focus
{
background:#00FFFF;
color:#333;
}
                                                        /*from here the navigation bar starts*/
#header
{width:100%;
height:100px;
background:orange;
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

</div>

</div>

<div class="menu">
<ul >
<%!

%>
<li><a href="admin-logout.jsp">LOGOUT <%=session.getAttribute("na") %></a><li>
<li><a href="show-student-info.jsp">SEE PROFILE</a><li>
<li><a href="see-subject-list.jsp">GIVE EXAM</a><li>
<li><a href="add-question1.jsp">SEE EXAM HISTORY</a><li>
<li><a href="knowledge-enhancement.jsp">PREPARE FOR EXAM</a><li>
<li><a href="delete-question.jsp">DELETE QUESTION</a><li>
<li><a href="#">STUDENT DETAIL</a><li>
<li><a href="#">SHOW COMPANY DETAIL</a><li>
</ul>
</div>
</body>
</html>