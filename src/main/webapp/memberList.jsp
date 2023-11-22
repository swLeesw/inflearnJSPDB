<%@ page import="model.MemberDAO" %>
<%@ page import="java.util.Vector" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>모든 회원 정보</h2>
    <%
        MemberDAO mdao = new MemberDAO();
        //회원들의 정보가 얼마나 저장되어 있는지 모르기에 가변 길이인 Vector를 이용
        Vector<MemberBean> v = mdao.allSelectMember();
    %>
    <div align="center">
        <table width="1000" border="1">
            <tr height="50">
                <td align="center" width="150">정보</td>
                <td align="center" width="150">아이디</td>
                <td align="center" width="250">이메일</td>
                <td align="center" width="200">전화번호</td>
                <td align="center" width="200">취미</td>
                <td align="center" width="200">정보</td>
            </tr>
            <%
                for (int i = 0; i < v.size(); i++) {
                MemberBean bean = v.get(i);
            %>
            <tr height="50">
                <td align="center" width="150"><a href="memberInfo.jsp?f=<%=bean.getId()%>">
                    <%=bean.getId()%></a></td>
                <td align="center" width="150"><%=bean.getId()%></td>
                <td align="center" width="250"><%=bean.getEmail()%></td>
                <td align="center" width="200"><%=bean.getTell()%></td>
                <td align="center" width="200"><%=bean.getHobby()%></td>
                <td align="center" width="200"><%=bean.getInfo()%></td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>
