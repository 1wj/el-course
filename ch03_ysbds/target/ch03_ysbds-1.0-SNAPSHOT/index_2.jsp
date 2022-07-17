<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/19
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //老式写法
  Integer age = (Integer) request.getAttribute("age");
    if(age>=18){
%>
  欢迎光临
<%
    }else{
  %>
禁止入内
<%
  }
%>
<br>
新式el表达式写法：${age>=18?"欢迎光临":"谢谢不要再来"}