<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width initial-scale=1">
<title>HOME PAGE</title>
<style type="text/css" >
*{
margin:0px;
padding:0px; }

.body{
background-repeat:no-repeat;
background-size:cover;
}
.content
{width:600px;
height:450px;
align:center;
background-color:#AFEEEE;
margin-top:80px;
margin-left:400px;

}
.content h2{ color: black;
    font-family: cursive;
    
    text-align: center;
    }
.content p{ color: black;
    font-family: cursive;
    
    text-align: center;
    }

.menu
{
padding:0;
margin:0;
width:220px;
height:100%;
background-color:#AFEEEE;
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
background:#AFEEEE;
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
background:#AFEEEE;
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
</STYLE>
</head>
<body background="backbackground.jpg" opacity=0.3>
<div id="header">

<DIV id="navbar">
<h1>PERFORMANCE EVALUATION & RECRUITMENT</h1>

</div>

</div>

<div class="content">
<h1>ABOUT US</h1><br>
<H2>VISION</H2><br><br>
<P>Our vision is to bring credible and genuine assessments to various aspects of education, training and employment. P.E.R strives to help institutions and company from choosing the "RIGHT" individual rather than the "BEST" individual</P>
<br><h2>MISSION</h2><br><br>
<P>P.E.R envisions a scalable ,equitable ,merit driven labor market providing credibility and access talent and opportunity. Our mission is to establish one scientific and credible approach to measuring talent and matching it to opportunity</P>
</div>
</body>
</html>