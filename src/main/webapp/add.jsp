<%--
  Created by IntelliJ IDEA.
  User: zjz
  Date: 2017/8/15
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link type="text/css" rel="stylesheet" href="static/bootstrap/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="static/mycss/mycss.css">
<script src="static/myjs/notNull.js" type="text/javascript"></script>
<html>
<head>
    <title>新增电影信息</title>
</head>
<body  class="container">
<form action="/insert" method="post" class="form-horizontal">
    <div class="form-group">
        电影名：<input type="text" name="title" id=""  class="form-control"></div>
    <div class="form-group">
        电影简介：<input type="text" name="description" class="form-control"></div>
    <div class="form-group">
    语言：<input type="radio" name="language" value="1">英语
    <input type="radio" name="language" value="2">意大利语
    <input type="radio" name="language" value="3">日语
    <input type="radio" name="language" value="4">国语
    <input type="radio" name="language" value="5">法语
        <input type="radio" name="language" value="6">德语</div>
    <input type="submit" value="提交" class="btn btn-info">
    <input type="reset" value="清空" class="btn btn-info">
    <a href="/back" class="btn btn-info">返回</a>
</form>
<p>
    <%
        Object obj = request.getAttribute("msg");
        if (obj!=null){
            out.println(obj.toString());
        }
    %>
</p>
</body>
</html>
