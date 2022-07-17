package com.bjpowenode.controller;

import com.bjpowenode.entity.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
//常见异常
public class OneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Student stu=new Student(12,"mike");
        request.setAttribute("key",stu);
        request.getRequestDispatcher("/index_1.jsp").forward(request,response);
    }


}
