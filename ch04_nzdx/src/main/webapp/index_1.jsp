
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--内置对象
    %{param.请求参数名}
    命令作用： 通过请求对象读取当前请求包中请求参数内容
        并将请求参数内容写入到响应体
. https:localhost/index_2.jsp?userName=mike&password=123
-->
用户姓名：${param.userName}<br>
用户密码：${param.password}
