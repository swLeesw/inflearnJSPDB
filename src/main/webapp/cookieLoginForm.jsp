<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        //사용자 컴퓨터의 쿠키 불러오기
        Cookie[] cookies = request.getCookies();
        String userId = "";
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("userId")) {//변수 이름
                    userId = cookies[i].getValue();//변수 값 할당.
                    break;
                }
            }
        }
    %>


<h2>쿠키 로그인</h2>
<center>
<form action="cookieLoginProc.jsp" method="post">
    <table width="400" border="1">
        <tr height="50">
            <td width="150">아이디</td>
            <td width="250"><input type="text" name="id" value="<%=userId%>"></td>
        </tr>
        <tr height="50">
            <td width="150">패스워드</td>
            <td width="250"><input type="password" name="id"></td>
        </tr>
        <tr height="50">
            <td align="center" width="150" colspan="2"><input type="checkbox" name="save">아이디 저장</td>
        </tr>
        <tr height="50">
            <td align="center" width="150" colspan="2"><input type="submit" value="로그인"></td>
        </tr>
    </table>


</form>
</center>





</body>
</html>
