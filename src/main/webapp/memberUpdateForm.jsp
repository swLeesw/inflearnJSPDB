<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원수정</title>
</head>
<body>
<%
    String find = request.getParameter("id");

    MemberDAO memberDAO = new MemberDAO();
    MemberBean mbean = new MemberBean();
%>

<h1 align="center">회원정보</h1>

<%
    mbean = memberDAO.selectMember(find);

%>
<div align="center">

    <table width="400" border="1">
    <form action="memberUpdateProc.jsp" method="post">
        <tr height="50">
            <td width="100">아이디</td>
            <td width="300">
                <%=mbean.getId()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">비밀번호</td>
            <td width="300">
                <input type="password" name="pw">
            </td>
        </tr>
        <tr height="50">
            <td width="100">이메일</td>
            <td width="300">
                <input type="email" name="email" value="<%=mbean.getEmail()%>">
            </td>
        </tr>
        <tr height="50">
            <td width="100">전화번호</td>
            <td width="300">
                <input type="tel" name="tell" value="<%=mbean.getTell()%>">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="hidden" name="id" value="<%=mbean.getId()%>">
                <input type="submit" value="수정">
    </form>
                <input type="button" value ="회원정보" onclick="location.href='memberInfo.jsp?f=<%=find%>'">
            </td>
        </tr>
    </table>
</div>
</body>
</html>
