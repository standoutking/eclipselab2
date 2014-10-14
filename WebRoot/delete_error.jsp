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
    <title>删除失败</title>
	

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

	</style>
  </head>
  <body>
  	<div class="title2">图书屋</div>
  	<div class="nav-top"><a href="">网站首页</a></div>
  	<h1>用户删除失败</h1>
  	
	<div style="clear:both"></div>
   	<div class="footer">
   	实验2：MVC编程与云平台部署@2014 1120310202-王立群
   	</div>
  </body>
</html>
