<%@ page import="com.bjpowernode.entity.Question" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/21
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <form action="/ch05_onlineTest_war_exploded/exam">
            <table align="center" border="2px">
                <tr align="center">
                    <td>id</td>
                    <td>题目</td>
                    <td>A：</td>
                    <td>B：</td>
                    <td>C：</td>
                    <td>D：</td>
                    <td>答案</td>
                </tr>

                <%
                    List<Question> list= (List) session.getAttribute("key");
                    for (Question i:list) {
                %>
                <tr style="background-color: red">
                    <td><%=i.getQuestionId()%></td>
                    <td><%=i.getTitle()%></td>
                    <td><%=i.getOptionA()%></td>
                    <td><%=i.getOptionB()%></td>
                    <td><%=i.getOptionC()%></td>
                    <td><%=i.getOptionD()%></td>
                    <td>
                        <input type="radio" value="A" name="q_<%=i.getQuestionId()%>">A
                        <input type="radio" value="B" name="q_<%=i.getQuestionId()%>">B
                        <input type="radio" value="C" name="q_<%=i.getQuestionId()%>">C
                        <input type="radio" value="D" name="q_<%=i.getQuestionId()%>">D
                    </td>
                </tr>
                    <%
                        }
                    %>
                <tr>
                    <td colspan="3"><input type="submit" value="提交"> </td>
                    <td colspan="4"><input type="reset" value="重写"></td>
                 </tr>


            </table>
        </form>
</body>
</html>
