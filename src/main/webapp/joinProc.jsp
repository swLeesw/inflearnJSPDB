<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="model.MemberDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    //취미는 별도로 읽어드려 다시 빈클래스에 저장
    String[] hobby = request.getParameterValues("hobby");
    //배열의 내용을 하나의 스트링으로 저장
    String texthobby = "";
    for (String s : hobby) {
        texthobby += s + ' ';
    }

%>
    <!-- useBean을 이용-->
    <jsp:useBean id="mbean" class="model.MemberBean">
        <jsp:setProperty name="mbean" property="*"/>
    </jsp:useBean>
<%
    mbean.setHobby(texthobby);//배열 형식은 이렇게 다시 넣어줘야한다.
    //사용자 정의 클래스이 memberDAO 생성
    MemberDAO mdao = new MemberDAO();
    mdao.insertMember(mbean);//데이터 삽입

    response.sendRedirect("memberList.jsp");
%>
</body>
</html>
