<%@ page import="ru.dstu.lab11.entities.Student" %><%--
  Created by IntelliJ IDEA.
  User: sasha
  Date: 20.02.2021
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String title = "Добавить студента";
    Student student = null;
    String studentName = "";
    String studentSurname = "";
    String studentMiddleName = "";
    String subject = "";
    String mark = "";
    if(request.getAttribute("student") != null){
        title = "Изменить студента";
        student = (Student) request.getAttribute("student");
        studentName = student.getName();
        studentSurname = student.getSurname();
        studentMiddleName = student.getMiddleName();
        subject = student.getSubject();
        mark = student.getMark();
    }
    if(request.getAttribute("updated") != null){
        if((boolean)request.getAttribute("updated")){
            if (request.getAttribute("studentName") != null) {
                if(request.getAttribute("studentName").equals("")){
                    out.println("<p>Поля должны быть заполнены!</p>");
                }else {
                    out.println("<p>Студент '" + request.getAttribute("studentName") + "' Добавлен!</p>");
                }
            }
        }else{
            out.println("<p>Невозможно изменнить данные!</p>");
        }
    }

%>
<html>
<head>
    <%
        out.println("<title>"+title+"</title>");
    %>
</head>
<body>
<div>
    <h1>Лабораторная 11</h1>
</div>
<div>
    <div>
        <div>
            <%
                out.println("<h2>"+title+"</h2>");
            %>
        </div>
        <form method="post">
            <label>Имя:
                <%
                    out.println("<input type=\"text\" name=\"name\" value=\""+studentName+"\"><br />");
                %>
            </label>
            <label>Фаминия:
                <%
                    out.println("<input type=\"text\" name=\"surname\" value=\""+studentSurname+"\"><br />");
                %>
            </label>
            <label>Отчество:
                <%
                    out.println("<input type=\"text\" name=\"middleName\" value=\""+studentMiddleName+"\"><br />");
                %>
            </label>
            <label>Дисциплина:
                <%
                    out.println("<input type=\"text\" name=\"subject\" value=\""+subject+"\"><br />");
                %>
            </label>
            <label>Оценка:
                <%
                    out.println("<input type=\"text\" name=\"mark\" value=\""+mark+"\"><br />");
                %>
            </label>
            <button type="submit" onclick="location.href='list/'">Добавить</button>
        </form>
    </div>
</div>
<div>
    <button onclick="location.href='/'">Вернуться назад</button>
</div>
</body>
</html>
