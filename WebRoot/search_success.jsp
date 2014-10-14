<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
    <title>查询成功</title>
	

  </head>
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
top: expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight));
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

	</style>
  </head>
  <body>
  	<div class="title2">图书屋</div>
  	<div class="nav-top"><a href="">返回首页</a></div>
  	<h1>用户查询成功</h1>
  	<div style="margin: 12px 0 15px 0;height: 20px;"></div>
		<div class="s-content">
			<div class="list-tabs">
				<div style="font-size: 16px;line-height: 45px;">该作者全部书籍</div>
				<div class="list">
					<div class="title" style="color:#333;font-size:16px;">作者:Author</div>
					<div class="title" style="color:#333;font-size:16px;">书名:Title</div>
					<div class="title" style="color:#333;font-size:16px;">出版社:Publisher</div>
				</div>
					<s:iterator value="baas" var="c">
					<div class="list">
							<div class="title" style="color:#333;font-size:16px;"><s:property value="#c.Name" /></div>
   							<div class="title" style="color:#333;font-size:16px;"><s:property value="#c.Title" /></div>
   							<div class="title" style="color:#333;font-size:16px;"><s:property value="#c.Publisher" /></div>
					</div>
					</s:iterator>

			
		</div></div>
		<div style="clear:both"></div>
   	<div class="footer">
   	实验2：MVC编程与云平台部署@2014 1120310202-王立群
   	</div>
  </body>
</html>
