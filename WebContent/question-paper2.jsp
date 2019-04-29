<%@page import="java.util.Collections"%>
<%@page import="beans.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
margin:0px;
padding:0px; }
.body
{
margin:0;
padding:0;
background:#00FFFF;
background-repeat:no-repeat;
background-size:cover;
background-position:center;
font-family:sans-serif;
}
.loginbox
{
width:1020px;
height:370px;
background:orange;
top:50%;
left:50%;
position:absolute;
padding:20px 20px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:200;
}
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
background:orange;
color:black;
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
<div id="logo">

</div>
<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>
</div>
</div>

<%!
static int qn=0;
static int getQuestion=0;
static ArrayList<Question> ques = new ArrayList<Question>();
%>

<%
	if(getQuestion==0)//this statement checks WHETHER there is any question or not
	{
		ArrayList<Question> qlist = (ArrayList<Question>)session.getAttribute("qlist");
		Collections.shuffle(qlist);
		for(Question q : qlist){
			if(!(ques.size()==10)){
				ques.add(q);
				
			}else{
				break;
			}
		}
		getQuestion=1;//this will increase the question count and only one question will be there on the page
	}
	
	if(qn>=ques.size()){
		
		qn=0;
		getQuestion=0;
		response.sendRedirect("result.jsp");
		}
	
	
	Question q = ques.get(qn);
	
	if(getQuestion==1){
		%>
		<div class="loginbox">
<h1>QNo:-<%=qn+1 %>&nbsp;<%=q.getQuestion() %> </h1>
<form action="question-paper-handler.jsp?u=<%=qn+1%>" method="post">
<div style="color:white;font-family:cursive">
<INPUT type ="radio" name="answer" value="<%=q.getOption1() %>"><%=q.getOption1()%> <br>
<INPUT type ="radio" name="answer" value="<%=q.getOption2() %>"><%=q.getOption2()%> <br>
<INPUT type ="radio" name="answer" value="<%=q.getOption3() %>"><%=q.getOption3()%> <br>
<INPUT type ="radio" name="answer" value="<%=q.getOption4() %>"><%=q.getOption4()%> <br>
</div>
<center>
<input type="submit" value="SUBMIT ANSWER"><br><br>
</center>
</form>
</div>
<%
session.setAttribute("coop",q.getCoroption());
		qn++;
	}


%>

	
</body>
</html>