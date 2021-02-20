package ru.dstu.lab11.servlets;

import ru.dstu.lab11.entities.Student;
import ru.dstu.lab11.models.StudentModel;
import ru.dstu.lab11.utils.FileUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/add.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FileUtil fileUtil = new FileUtil();
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String middleName = req.getParameter("middleName");
        String subject = req.getParameter("subject");
        String mark = req.getParameter("mark");
        Student student = new Student(name, surname, middleName, subject, mark);
        StudentModel model = StudentModel.getInstance();
        model.add(student);
        fileUtil.writeStudent(student);
        req.setAttribute("studentName", name);
        doGet(req, resp);
    }
}
