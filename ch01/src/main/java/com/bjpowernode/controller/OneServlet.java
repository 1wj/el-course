package com.bjpowernode.controller;

import com.bjpowernode.entity.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class OneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext application = request.getServletContext();
        HttpSession session = request.getSession();
        Student stu=new Student("张三",20);
        application.setAttribute("app",10);
        session.setAttribute("sess","mike");
        request.setAttribute("res","南京");
        request.setAttribute("res2",stu);
        request.getRequestDispatcher("/index_1.jsp").forward(request,response);
    }


}
