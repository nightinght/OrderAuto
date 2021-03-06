<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@page import="com.mysql.jdbc.*,java.sql.*" %>

<%--
  Created by IntelliJ IDEA.
  User: Adam
  Date: 2017/3/5
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>滴答租车系统</title>
</head>
<body>
<%
    Calendar cal = Calendar.getInstance();
    int time = cal.get(Calendar.HOUR_OF_DAY);
    String str = "";
    if (time < 6 | time > 18) {
        str = "晚上好";
    } else if (time > 6 && time < 12) {
        str = "上午好";
    } else {
        str = "下午好";
    }
    application.setAttribute("time", cal);
    application.setAttribute("helloword", str);
//    自动5s刷新
    response.setIntHeader("refresh",5);
%>
<h1><c:out value="${applicationScope.get('helloword')}"/>,欢迎访问系统</h1>
<table>
    <tr/>
    <td><a href="adminlogin.jsp">我是管理员</a></td>
    <td><a href="userlogin.jsp">我是用户</a></td>
</table>
</body>
</html>
