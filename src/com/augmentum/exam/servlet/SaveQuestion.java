package com.augmentum.exam.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveQuestion extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String questionTitle = req.getParameter("question-title");
        String choiceA = req.getParameter("choice-a");
        String choiceB = req.getParameter("choice-b");
        String choiceC = req.getParameter("choice-c");
        String choiceD = req.getParameter("choice-d");
        System.out.println(questionTitle + choiceA + choiceB + choiceC + choiceD);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
