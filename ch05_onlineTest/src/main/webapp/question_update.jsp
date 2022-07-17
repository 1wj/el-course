<%@ page import="com.bjpowernode.entity.Question" %><%--
  Created by IntelliJ IDEA.
  User: Wj
  Date: 2021/7/18
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

        <form action="/ch05_onlineTest_war_exploded/question/update" method="get">
            <table align="center" border="2px">
                <tr>
                    <td>编号</td>
                    <td><input type="text" name="questionId" value="${requestScope.key3.questionId}" readonly/></td>
                </tr>
                <tr>
                    <td>题目</td>
                    <td><input type="text" name="title" value="${requestScope.key3.title}"/></td>
                </tr>
                <tr>
                    <td>A:</td>
                    <td><input type="text" name="optionA" value="${requestScope.key3.optionA}"/></td>
                </tr>
                <tr>
                    <td>B:</td>
                    <td><input type="text" name="optionB" value="${requestScope.key3.optionB}"/></td>
                </tr>

                <tr>
                    <td>C:</td>
                    <td><input type="text" name="optionC"  value="${key3.optionC}"/></td>
                </tr>

                <tr>
                    <td>D:</td>
                    <td><input type="text" name="optionD" value="${key3.optionD}"/></td>
                </tr>
                <tr>
                    <td>正确答案:</td>
                    <td>
                        <input type="radio" name="answer" value="A"  ${"A" eq requestScope.key3.answer ?"checked":""}/> A
                        <input type="radio" name="answer"  value="B" ${"B" eq requestScope.key3.answer ?"checked":""}/> B
                        <input type="radio" name="answer"  value="C" ${"C" eq requestScope.key3.answer ?"checked":""}/> C
                        <input type="radio" name="answer"  value="D" ${"D" eq requestScope.key3.answer ?"checked":""}/> D
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交试题"></td>
                    <td><input type="reset" value="重写" /></td>
                </tr>

            </table>
        </form>
</body>
</html>
