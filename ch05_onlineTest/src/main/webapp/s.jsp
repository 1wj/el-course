<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/15
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <%
            String value = (String) request.getAttribute("key1");
        %>
        <font style="color: red;font-size: 40px"><%=value%></font>
</body>
</html>
