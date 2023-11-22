<%@ page import="javafx.scene.control.Alert" %>
<%@ page import="model.MemberDAO" %>
<%@ page import="model.MemberBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="mbean" class="model.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<%

    MemberDAO mdao = new MemberDAO();
    String pw = mdao.getPass(mbean.getId());
    if (pw.equals(mbean.getPw())) {
        mdao.updateMember(mbean);
        response.sendRedirect("memberList.jsp");
    }
    else {
%>
    <script type="text/javascript">
        alert("패스워드가 일치하지 않습니다");
        history.go(-1);
    </script>
<%
    }
%>


</body>
</html>
