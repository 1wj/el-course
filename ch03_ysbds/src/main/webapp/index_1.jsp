<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/19
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //以前老式写法
    Integer key1 = (Integer) request.getAttribute("key1");
    String key2 = (String) request.getAttribute("key2");
 int i=key1+Integer.valueOf(key2);
%>
<!--前提： 在jsp文件有时需要将共享数据进行一番运算之后，将运算结果写入到响应体-->
老式写法两个值之和：<%=i%>
新式写法两个值之和:${key1+key2}