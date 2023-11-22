<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String userId = "";
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals("userId")) {
                userId = cookies[i].getValue();
                break;
            }
        }
    }
%>

<center>
    <table border="1">
        <form action="sessionLoginProc.jsp" method="post">
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" name="id" value="<%=userId%>">
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td>
                    <input type="password" name="pw">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="checkbox" name="save">아이디 저장<hr>
                    <input type="submit" value="로그인">
                </td>
            </tr>
        </form>
    </table>
</center>

</body>
</html>
