<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //id에 null값 부여 후 세션 유효시간 0으로 초기화
    session.setAttribute("id", null);
    session.setMaxInactiveInterval(0);
    //session을 완전 삭제하는 방법
    /*
    session.removeAttribute("id");
    session.removeAttribute("pw");
    */
    response.sendRedirect("sessionMain.jsp");
%>
</body>
</html>
