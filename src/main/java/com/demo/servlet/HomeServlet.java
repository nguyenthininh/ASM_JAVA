package com.demo.servlet;

import com.demo.entity.UserEntity;
import com.demo.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    UserDao user = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserEntity> data = user.getAll();
        request.setAttribute("listUser", data);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private int insertUser(UserEntity input) {

        return user.insertUser(input);
    }
}
