
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String id = (String)session.getAttribute("id");
%>

<!--top-->
<table width="800">
    <tr height="100">
        <td colspan="2" align="center" width="200">
            <img src="img/logo.jpg" width="200" height="70">
        </td>
        <td colspan="5" align="center">
            <font size="10">낭만 캠핑</font>
        </td>
    </tr>
    <tr height="50">
        <td width="100" align="center">텐트</td>
        <td width="100" align="center">의자</td>
        <td width="100" align="center">식기류</td>
        <td width="100" align="center">침낭</td>
        <td width="100" align="center">테이블</td>
        <td width="100" align="center">화롯대</td>
        <td width="200" align="center">
    <%
        if (id != null) {
    %>
        <%=id %>님
            <button onclick="location.href='sessionLogout.jsp'">로그아웃</button>
    <%
        } else {
    %>
            <button onclick="location.href='sessionMain.jsp?center=sessionLoginForm.jsp'">로그인</button>
    <%
        }
    %>
        </td>
    </tr>
</table>

</body>
</html>
