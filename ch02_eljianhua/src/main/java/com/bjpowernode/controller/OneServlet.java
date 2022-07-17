package com.bjpowernode.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
//el表达式取值简化版
public class OneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ServletContext application=request.getServletContext();
        session.setAttribute("key","张三");
        application.setAttribute("key","李四");
        request.getRequestDispatcher("/Index_1.jsp").forward(request,response);

    }


}
