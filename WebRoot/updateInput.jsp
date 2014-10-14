<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import= "model.bookAndAuthorModel"%>
<%@page import= "bean.bookAndAuthor"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%String ISBN = new String(request.getParameter("ISBN").getBytes("ISO-8859-1"),"UTF-8");%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
    <title>添加页面</title>
	

  
  <style type="text/css">
		html, body, div, p, ul, ol, li, a, table, tr, td, textarea, form, input,
	img, header, footer, section {
	padding: 0;
	margin: 0;
	font-style: normal;
}
		body{background:url("image/Lighthouse.jpg");
		background-size: 100%;
		text-align:center;
		padding:30px;
		}
 a
 {text-decoration: none;
 width: 200px;
float: left;}
 a:hover
 {color:#f40;}


.title2
{margin: 0 auto;
font-size: 50px;
background: -webkit-gradient(linear, left top, left bottom, from(rgba(232, 75, 110, 0)), to(#E0E0E0));
padding: 10px;
width: 220px;}
.box
{width:60%;
margin:0 auto;
min-height:300px;
background:#333333;
margin-top:30px;
background: rgba(255, 255, 255, 0.39);}
.footer
{position: fixed !important;
bottom: 0px;
position: absolute;
_top: expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight));
width: 100%;
height: 20px;
background: rgba(255, 255, 255, 0.51);
margin-top: 30px;
padding-bottom: 5px;
line-height: 25px;}
.search {
	text-align: left;
	padding-left: 50px;
	z-index: 300;
	height: 43px;
	position: relative;
}
.s-content {
	color: #222;
	background: rgba(255, 255, 255, 0.49);
	border: 1px solid #E9E9E9;
	min-height: 318px;
	_height: 318px;
	width: 1000px;
float: left;

margin-left: 150px;
}

.list-tabs {
	height: 44px;
	text-align: center;
	position: relative;
	border-bottom: 1px solid #E9e9e9;
}
.list {
	float: left;
	height: 40px;
	margin: 0 5% 0px 5%;
	border-bottom: solid 1px #cccccc;
}
.list:last-child
{

	border-bottom:0;
}
.title {
	float: left;
	line-height: 40px;
	font-size: 14px;
	color: #18028A;
	width: 280px;
overflow: hidden;
text-align: center;
	padding-left: 10px;
}
.author {
	float: left;
	width: 40%;
	line-height: 40px;
	font-size: 14px;
	color: #18028A;
	overflow: hidden;
	text-align: left;
}
.nav-top {
	margin-top: -1px;
	margin-bottom: 11px;
}

.form-title {
display: table;
width: 25.5%;
height: 100%;
text-align: right;
color: #5309F0;
font-size: larger;
line-height: 1em;
font-weight: bolder;
float: left;
}.form-title span {
display: table-cell;
vertical-align: middle;
}.form-content {
height: 100%;
margin-left: 2.8%;
float: left;
}
input
{ 
display: block;
height: 35px;
padding: 6px 12px;
font-size: 14px;
line-height: 1.428571429;
color: #555;
vertical-align: middle;
background-color: #fff;
background-image: none;
border: 1px solid #ccc;
border-radius: 6px;
-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
box-shadow: inset 0 1px 1px rgba(0,0,0,0.075);
-webkit-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

	</style>
  </head>
  <body>
  	<div class="title2">图书屋</div>
  	<div class="nav-top"><a href="">返回首页</a></div>
  		<form action="update.action" method = "post">
  		<div style = "width: 300px;height: 30px;margin: 0 auto;margin-bottom: 20px">
				<div class="form-title"><span></span></div>
				<div class="form-content">
				<input type="hidden" name="one.ISBN" value="<s:property value="one.ISBN"/>" />
				</div>
				</div>
	    <div style = "width: 340px;height: 30px;margin: 0 auto;margin-bottom: 20px">
				<div class="form-title"><span>AuthorID：</span></div>
				<div class="form-content">
				<input name="one.AuthorID"  value="<s:property value="one.AuthorID"/>"/>
				</div>
				</div>
    	<div style = "width: 360px;height: 30px;margin: 0 auto;margin-bottom: 20px">
				<div class="form-title"><span>Publisher：</span></div>
				<div class="form-content">
				<input name="one.Publisher"  value="<s:property value="one.Publisher"/>"/>
				</div>
				</div>
		<div style = "width: 400px;height: 30px;margin: 0 auto;margin-bottom: 20px">
				<div class="form-title"><span>PublishDate：</span></div>
				<div class="form-content">
				<input name="one.PublishDate" value="<s:property value="one.PublishDate"/>"/>
				</div>
				</div>
		<div style = "width: 300px;height: 30px;margin: 0 auto;margin-bottom: 20px">
				<div class="form-title"><span>Price：</span></div>
				<div class="form-content">
				<input name="one.Price" value="<s:property value="one.Price"/>"/>
				</div>
				</div>
    	<div style = "width: 0px;height: 30px;margin: 0 auto;margin-bottom: 20px"><input type = "submit" value = "submit"/></div>
    </form>
	<div style="clear:both"></div>
   	<div class="footer">
   	实验2：MVC编程与云平台部署@2014 1120310202-王立群
   	</div>
  </body>
</html>
