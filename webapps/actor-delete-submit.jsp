<%@ page import="db.ActorService" %>
<%@ page import="db.Actor" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 112
  Date: 2023-05-22
  Time: 오후 4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = request.getParameter("code");

    ActorService actorService = new ActorService();
    actorService.deleteActor(code);
%>
<html>
<head>
    <title>Title</title>
    <style>
        th, td { border: solid 1px #000;}
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.js"
            integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script>
        alert(' 삭제가 되었습니다. ');
        location.href = 'actor.jsp';
    </script>
</head>
<body>
</body>
</html>
