<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/20
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
    接受同一个请求参数名关联多个值的，类似复选框
    格式：%{paramValues.请求参数名【数组下标】}
    此时可以通过paramVaues读取请求参数下指定位置的值
    并写入到响应体
    https:localhost/index_2.jsp?userNO=10&userNO=20&userNO=30
-->
第一个参数：${paramValues.userNO[0]}<br>
第二个参数：${paramValues.userNO[1]}<br>
第三个参数：${paramValues.userNO[2]}<br>