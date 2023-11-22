<%@ page import="model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">회원정보</h1>

<%
    String id = request.getParameter("id");
%>

<div align="center">
        <form action="memberDeleteProc.jsp" method="post">
    <table width="400" border="1">
        <tr height="50">
            <td width="100">아이디</td>
            <td width="300">
                <%=id%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">비밀번호</td>
            <td width="300">
                <input type="password" name="pw">
            </td>
        </tr>
        <tr height="50">
            <td colspan="2" align="center">
                <input type="hidden" name="id" value="<%=id%>">
                <input type="submit" value="회원삭제">
                <input type="button" value="목록이동" onclick="location.href='memberList.jsp'">
            </td>
        </tr>
    </table>
        </form>
</div>
</body>
</html>
