<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function rFun() {
            window.history.back();
        }
    </script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String save = request.getParameter("save");//체크하지 않으면 null, 체크시 1이 반환됨.
    //cookie클래스 생성
    if (save != null) {
        //쿠키 클래스 생성
        Cookie cookie = new Cookie("userId", id);//1번째 key 2번째 value
        //쿠키 유효시간
        cookie.setMaxAge(60 * 2);//1초 단위
        //사용자에게 쿠키 값을 넘겨줌
        response.addCookie(cookie);
        out.write("쿠키 생성 완료.");
    }
%>
    <button onclick="rFun()">뒤로가기</button>


</body>
</html>
