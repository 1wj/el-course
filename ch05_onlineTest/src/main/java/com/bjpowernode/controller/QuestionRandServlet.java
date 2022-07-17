package com.bjpowernode.controller;

import com.bjpowernode.dao.QuestionDao;
import com.bjpowernode.entity.Question;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class QuestionRandServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionDao dao=new QuestionDao();
        List<Question> rand = dao.rand();
        HttpSession session=request.getSession(false);
        session.setAttribute("key",rand);
        request.getRequestDispatcher("/kaoshi.jsp").forward(request,response);
    }


}
