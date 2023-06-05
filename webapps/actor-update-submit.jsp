<%@ page import="db.ActorService" %>
<%@ page import="db.Actor" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = request.getParameter("code");
    String name = request.getParameter("name");
    String engName = request.getParameter("engName");

    ActorService actorService = new ActorService();
    actorService.updateActor(code, name, engName);
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
        alert(' 수정이 되었습니다. ');
        location.href = 'actor.jsp';
    </script>
</head>
<body>
</body>
</html>
