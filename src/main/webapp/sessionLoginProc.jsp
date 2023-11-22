
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session1</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String save = request.getParameter("save");
        //세션에 저장
        session.setAttribute("id", id);
        session.setAttribute("pw", pw);

        if (save != null) {
            Cookie cookie = new Cookie("id", id);
            cookie.setMaxAge(60);
            response.addCookie(cookie);
        }
        //세션의 유지시간
        session.setMaxInactiveInterval((60));
        response.sendRedirect("sessionMain.jsp");
    %>
</body>
</html>
