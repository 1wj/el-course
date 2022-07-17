<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/18
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
      // pageContext.setAttribute("sex","男");
    %>
        员工年龄：${applicationScope.app}<br>
        员工姓名：${sessionScope.sess}<br>
        员工地址：${requestScope.res}<br>
        ${requestScope.res2.name}
        ${requestScope.res2.age}


