package com.bjpowernode.controller;

import com.bjpowernode.entity.Question;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ExamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        int score=0;
        List<Question> list = (List) session.getAttribute("key");
        for (Question q : list) {
            int questionId = q.getQuestionId();
            String answer = q.getAnswer();
            String userAnswer = request.getParameter("q_" + questionId);
            if(answer.equals(userAnswer)){
              score+=25;
            }
        }
        request.setAttribute("key1","恭喜你获得"+score+"分");
        request.getRequestDispatcher("/s.jsp").forward(request,response);
    }


}
