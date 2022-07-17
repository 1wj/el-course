<%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/19
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<!--
    el表达式允许开发人员开发时省略作用域对象别名
    格式：${共享数据名}
    pageContext---request---session---application
    表达式简化版由于没有指定作用域对象，所以在执行时采用【猜算法】

-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
el表达式完整不简化版：${applicationScope.key}<br>
el表达式完整不简化版：${sessionScope.key}<br>

el表达式简化版1：${key}<br>
el表达式简化版2：${key}<br>
