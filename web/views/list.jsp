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
    <style>
        table {
            width: 50%; /* Ширина таблицы */
            border-collapse: collapse; /* Убираем двойные линии между ячейками */
        }
        th {
            background: #c3c3c3; /* Цвет фона */
            color: #000000;  /* Цвет текста */
        }
        tbody tr:hover {
            background: #c3c3c3; /* Цвет фона при наведении */
            color: #000000; /* Цвет текста при наведении */
        }
    </style>
</head>

<body>
<div>
    <h1>Лабораторная работа 11</h1>
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
                    out.println("                <table><tr>\n" +
                            "                    <th>Имя</th>\n" +
                            "                    <th>Фамилия</th>\n" +
                            "                    <th>Отчество</th>\n" +
                            "                    <th>Предмет</th>\n" +
                            "                    <th>Оценка</th>\n" +
                            "                </tr><tbody>");
                    for (Student s : students) {
                        out.println("<tr class=\"tbody\" onclick=\"location.href='/add?fileName="+s.getSurname()+"_"+s.getName()+"_"+s.getMiddleName() +"'\">");
                        out.println("<td>" + s.getName() + "</td>");
                        out.println("<td>" + s.getSurname() + "</td>");
                        out.println("<td>" + s.getMiddleName() + "</td>");
                        out.println("<td>" + s.getSubject() + "</td>");
                        out.println("<td>" + s.getMark() + "</td>");
                        out.println("</a></tr>");
                    }
                    out.println("</tbody></table><br>");
                } else out.println("<p>Ничего нет</p>");
            %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Назад</button>
</div>
</body>
</html>
