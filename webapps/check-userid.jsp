<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userId = request.getParameter("userId");



%>
{
    "result": false,
    "message": "<%=userId%>는 이미 존재하는 아이디 입니다."
}
