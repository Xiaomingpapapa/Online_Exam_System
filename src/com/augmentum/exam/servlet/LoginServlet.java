package com.augmentum.exam.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.augmentum.exam.Constants;
import com.augmentum.exam.exception.ParameterException;
import com.augmentum.exam.exception.ServiceException;
import com.augmentum.exam.model.User;
import com.augmentum.exam.service.UserService;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String LOGIN_PAGE = "/WEB-INF/jsp/login.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        try {
            User user = null;
            com.augmentum.exam.service.UserService userService = new UserService();
            user = userService.login(userName, password);
            user.setPassword(null);
            HttpSession session = request.getSession();
            session.setAttribute(Constants.USER, user);
            response.sendRedirect(request.getContextPath() + "/welcome");
        } catch (ParameterException parameterException) {
            Map<String, String> errorFields = parameterException.geterrorFields();
            request.setAttribute(Constants.ERROR_FIELDS, errorFields);
            request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
        } catch (ServiceException serviceException) {
            int code = serviceException.getCode();
            request.setAttribute(Constants.TIP_MESSAGE, serviceException.getMessage() + "[" + code + "]");
            request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
        }
    }
}
