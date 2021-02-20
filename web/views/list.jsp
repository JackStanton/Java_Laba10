<%@ page import="java.util.List" %>
<%@ page import="ru.dstu.lab11.entities.Student" %><%--
  Created by IntelliJ IDEA.
  User: sasha
  Date: 20.02.2021
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Список Студентов</title>
</head>

<body>
<div>
    <h1>Лабораторная работа 10</h1>
</div>

<div>
    <div>
        <div>
            <h2>Студенты</h2>
        </div>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");

            if (students != null && !students.isEmpty()) {
                out.println("<ui>");
                for (Student s : students) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>Пусто</p>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Назад</button>
</div>
</body>
</html>
