<%@ page import="java.util.List" %>
<%@ page import="ru.dstu.lab11.entities.Student" %><%--
  Created by IntelliJ IDEA.
  User: sasha
  Date: 20.02.2021
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                request.setCharacterEncoding("UTF-8");
                List<Student> students = (List<Student>) request.getAttribute("students");

                if (students != null && !students.isEmpty()) {
                    out.println("                <table border='1'><tr>\n" +
                            "                    <td>Имя</td>\n" +
                            "                    <td>Фамилия</td>\n" +
                            "                    <td>Отчество</td>\n" +
                            "                    <td>Предмет</td>\n" +
                            "                    <td>Оценка</td>\n" +
                            "                </tr>");
                    for (Student s : students) {
                        out.println("<tr>");
                        out.println("<td>" + s.getName() + "</td>");
                        out.println("<td>" + s.getSurname() + "</td>");
                        out.println("<td>" + s.getMiddleName() + "</td>");
                        out.println("<td>" + s.getSubject() + "</td>");
                        out.println("<td>" + s.getMark() + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table> </br>");
                } else out.println("<p>Ничего нет</p>");
            %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Назад</button>
</div>
</body>
</html>
