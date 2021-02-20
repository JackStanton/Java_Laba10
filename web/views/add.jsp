<%--
  Created by IntelliJ IDEA.
  User: sasha
  Date: 20.02.2021
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Добавить нового студента</title>
</head>

<body>
<div>
    <h1>Лабораторная 10</h1>
</div>

<div>
    <%
        request.setCharacterEncoding("UTF-8");
        if (request.getAttribute("studentName") != null) {
            out.println("<p>Студент '" + request.getAttribute("studentName") + "' Добавлен!</p>");
        }
    %>
    <div>
        <div>
            <h2>Добавить студента</h2>
        </div>

        <form method="post">
            <label>Имя:
                <input type="text" name="name"><br />
            </label>
            <label>Фаминия:
                <input type="text" name="surname"><br />
            </label>
            <label>Отчество:
                <input type="text" name="middleName"><br />
            </label>
            <label>Дисциплина:
                <input type="text" name="subject"><br />
            </label>
            <label>Оценка:
                <input type="text" name="mark"><br />
            </label>
            <button type="submit">Добавить</button>
        </form>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Вернуться назад</button>
</div>
</body>
</html>
