<%@ page import="model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    MemberDAO mdao = new MemberDAO();
    String p_pw = mdao.getPass(id);

    if (pw.equals(p_pw)) {
        mdao.deleteMember(id);
        response.sendRedirect("memberList.jsp");
    }
    else {
%>
    <script type="text/javascript">
        alert("비밀번호가 일치하지 않습니다.")
        history.go(-1);
    </script>
<%
    }
%>


</body>
</html>
