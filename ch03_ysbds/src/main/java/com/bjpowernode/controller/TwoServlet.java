package com.bjpowernode.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
//取完值之后
//支持表达式运算：关系运算
// > >= == < <=  !=
//gt ge eq lt le !=
public class TwoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("age",18);
        request.getRequestDispatcher("index_2.jsp").forward(request,response);
    }


}
