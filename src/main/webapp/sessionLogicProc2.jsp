<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session2</title>
</head>
<body>
<%
    String id = (String)session.getAttribute("id");
    String pw = (String)session.getAttribute("pw");
%>


<h2>당신의 아이디는 <%=id%> 입니다</h2>
</body>
</html>
