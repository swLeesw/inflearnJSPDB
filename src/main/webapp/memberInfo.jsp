<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원정보</title>
</head>
<body>
<%
    String find = request.getParameter("f");

    MemberDAO memberDAO = new MemberDAO();
    MemberBean mbean = new MemberBean();
%>

<h1 align="center">회원정보</h1>

<%
    mbean = memberDAO.selectMember(find);

%>
<div align="center">
    <table width="400" border="1">
        <tr height="50">
            <td width="100">아이디</td>
            <td width="300">
                <%=mbean.getId()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">비밀번호</td>
            <td width="300">
                <%=mbean.getPw()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">이메일</td>
            <td width="300">
                <%=mbean.getEmail()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">전화번호</td>
            <td width="300">
                <%=mbean.getTell()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">취미</td>
            <td width="300">
                <%=mbean.getHobby()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">직업</td>
            <td width="300">
                <%=mbean.getJob()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">나이</td>
            <td width="300">
                <%=mbean.getAge()%>
            </td>
        </tr>
        <tr height="50">
            <td width="100">추가정보</td>
            <td width="300">
                <%=mbean.getInfo()%>
            </td>
        </tr>
        <tr height="50">
            <td colspan="2" align="center">
                <!--
                <button onclick="location.href='MemberUpdateForm.jsp'"> 수정 </button>;
                -->
                <input type="button" value="회원수정" onclick="location.href='memberUpdateForm.jsp?id=<%=mbean.getId()%>'">
                <input type="button" value="회원삭제" onclick="location.href='memberDeleteForm.jsp?id=<%=mbean.getId()%>'">
                <input type="button" value="목록이동" onclick="location.href='memberList.jsp'">
                <input type="button" value="회원가입" onclick="location.href='join.jsp'">
            </td>
        </tr>
    </table>
</div>
</body>
</html>
