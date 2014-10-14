<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

body {
	background: url("image/Lighthouse.jpg");
	background-size: 100%;
	text-align: center;
	padding: 30px;
}

a {
	text-decoration: none;
	width: 200px;
	float: left;
}

a:hover {
	color: #f40;
}

.title2 {
	margin: 0 auto;
	font-size: 50px;
	background: -webkit-gradient(linear, left top, left bottom, from(rgba(232, 75, 110,
		0)), to(#E0E0E0));
	padding: 10px;
	width: 220px;
}

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

.nav-top {
	margin-top: -1px;
	margin-bottom: 11px;
}

.item2 {
	padding: 5px;
	width: 300px;
	text-align: left;
	margin-left: 200px;
}
</style>
</head>
<body>
	<div class="title2">图书屋</div>
	<div class="nav-top">
		<a class="item "href="">返回首页</a>
	</div>
	<h1>用户查询成功</h1>
	<div style="margin: 12px 0 15px 0;height: 20px;"></div>
	<div
		style=" width: 600px;background: rgba(255, 255, 255, 0.72);margin: 0 auto;padding: 30px;border: solid #111 5px;border-radius: 10px;">
		<h1>书籍详细信息</h1>

		<div class="item2">
			国际标号:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.ISBN" />
		</div>
		<div class="item2">
			书&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Title" />
		</div>

		<div class="item2">
			作&nbsp;&nbsp;&nbsp;&nbsp;者:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.AuthorID" />
		</div>
		<div class="item2">
			出版日期:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.PublishDate" />
		</div>
		<div class="item2">
			出版社:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Publisher" />
		</div>
		<div class="item2">
			售&nbsp;&nbsp;&nbsp;&nbsp;价:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Price" />
		</div>
		<div style="margin: 12px 0 15px 0;height: 20px;"></div>

		<h1>作者资料</h1>
		<div class="item2">
			作&nbsp;&nbsp;&nbsp;&nbsp;者:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Name" />
		</div>
		<div class="item2">
			年&nbsp;&nbsp;&nbsp;&nbsp;龄:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Age" />
		</div>
		<div class="item2">
			国&nbsp;&nbsp;&nbsp;&nbsp;籍:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="one.Country" />
		</div>
	</div>
	<div style="clear:both"></div>
	<div class="footer">实验2：MVC编程与云平台部署@2014 1120310202-王立群</div>
</body>
</html>
