<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
background-position:center;
font-family:cursive;
color:white
}
.signupbox
{
width:320px;
height:700px;
background:orange;
top:50%;
left:50%;
position:absolute;
padding:20px 30px;
box-sizing:border-box;
transform:translate(-50%,-50%);
margin-top:200px;
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
h2
{
margin:25PX;
padding:0 0 20px;
text-align: center;
font-size:22px;
font-family: cursive;
color:RED;
}

.signupbox p
{
margin:0;
padding:0 0 20px;
font-weight:bold;
font-family: cursive;
color:white;
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
<h2 style="color:white">BEFORE  CONTINUING  FURTHER , PLEASE  SIGNUP  FIRST........</h2>
<div class="signupbox">

<h1>SIGNUP HERE</h1>
<form action="signuphandler.jsp" method="post">

<input type="text" name="name" placeholder="YOUR NAME" ><BR><BR>
<input type="email" name="email" placeholder="YOUR EMAIL" ><BR><BR>
<input type="number" name="number" placeholder="MOBILE NUMBER" ><BR><BR>
<input type="password" name="password" placeholder="PASSWORD" ><BR><BR>
<input type="text" name="branch" placeholder="YOUR BRANCH" ><BR><BR>
<span style="font-size:18px;"><div style="color:white;font-family:cursive">DATE OF BIRTH :-</div></SPAN>
<BR>
<select name ="DOBmonth">
<option>MONTH</option>
<option VALUE="JANUARY">JANUARY</option>
<option VALUE="FEBRUARY">FEBRUARY</option>
<option VALUE="MARCH">MARCH</option>
<option VALUE="APRIL">APRIL</option>
<option VALUE="MAY">MAY</option>
<option VALUE="JUNE">JUNE</option>
<option VALUE="JULY">JULY</option>
<option VALUE="AUGUST">AUGUST</option>
<option VALUE="SEPTEMBER">SEPTEMBER</option>
<option VALUE="OCTOBER">OCTOBER</option>
<option VALUE="NOVEMBER">NOVEMBER</option>
<option VALUE="DECEMBER">DECEMBER</option>
</SELECT>
<select name ="DOBday">
<option>DAY</option>
<option VALUE="1">1</option>
<option VALUE="2">2</option>
<option VALUE="3">3</option>
<option VALUE="4">4</option>
<option VALUE="5">5</option>
<option VALUE="6">6</option>
<option VALUE="7">7</option>
<option VALUE="8">8</option>
<option VALUE="9">9</option>
<option VALUE="10">10</option>
<option VALUE="11">11</option>
<option VALUE="12">12</option>
<option VALUE="13">13</option>
<option VALUE="14">14</option>
<option VALUE="15">15</option>
<option VALUE="16">16</option>
<option VALUE="17">17</option>
<option VALUE="18">18</option>
<option VALUE="19">19</option>
<option VALUE="20">20</option>
<option VALUE="21">21</option>
<option VALUE="22">22</option>
<option VALUE="23">23</option>
<option VALUE="24">24</option>
<option VALUE="25">25</option>
<option VALUE="26">26</option>
<option VALUE="27">27</option>
<option VALUE="28">28</option>
<option VALUE="29">29</option>
<option VALUE="30">30</option>
<option VALUE="31">31</option>
</SELECT>
<select name ="DOByear">
<option>YEAR</option>
<option VALUE="1985">1985</option>
<option VALUE="1986">1986</option>
<option VALUE="1987">1987</option>
<option VALUE="1988">1988</option>
<option VALUE="1989">1989</option>
<option VALUE="1990">1990</option>
<option VALUE="1991">1991</option>
<option VALUE="1992">1992</option>
<option VALUE="1993">1993</option>
<option VALUE="1994">1994</option>
<option VALUE="1995">1995</option>
<option VALUE="1996">1996</option>
<option VALUE="1997">1997</option>
<option VALUE="1998">1998</option>
<option VALUE="1999">1999</option>
<option VALUE="2001">2001</option>
<option VALUE="2002">2002</option>
<option VALUE="2003">2003</option>
<option VALUE="2004">2004</option>
<option VALUE="2005">2005</option>
<option VALUE="2006">2006</option>
</SELECT>
<BR>
<BR>
<div style="color:white;font-family:cursive"> YOUR GENDER :-</div><BR>
<div style="color:white;font-family:cursive"><INPUT type ="radio" name="gender" value="male">MALE
<INPUT type ="radio" name="gender" value="female">FEMALE
<INPUT type ="radio" name="gender" value="other">OTHER</div>
<br>
 <div style="color:white;font-family:cursive">YOUR CURRENT COURSE:-</div><BR>
<div style="color:white;font-family:cursive"><INPUT type ="radio" name="course" value="B.TECH">B.TECH
<INPUT type ="radio" name="course" value="M.TECH">M.TECH</div>
<BR>
<div style="color:white;font-family:cursive"><INPUT type ="radio" name="course" value="B.CA">B.CA
<INPUT type ="radio" name="course" value="M.CA">M.CA</div>
<BR>
<div style="color:white;font-family:cursive"><INPUT type ="radio" name="course" value="B.BA">B.BA
<INPUT type ="radio" name="course" value="M.BA">M.BA</div>
<BR><br>
<INPUT type ="submit" value="SUBMIT NOW">

</form>
</div>
</body>
</html>