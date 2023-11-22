<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //Center값을 변경해주기 위해서 request객체를 이용
    String center = request.getParameter("center");

    //처음 sessionMain.jsp를 실행하면 null값이 실행되기때문에 null처리
    if (center == null) {
        center = "center.jsp";
    }
%>
    <center>
        <table border="1" width="800">
            <!--top-->
            <tr height="150">
                <td align="center" colspan="2">
                    <jsp:include page="top.jsp"/>
                </td>
            </tr>
            <!--left-->
            <tr height="400">
                <td align="center" width="200">
                    <jsp:include page="left.jsp"/>
                </td>
            <!--center-->
                <td align="center" width="600">
                    <jsp:include page="<%=center %>"/>
                </td>
            </tr>
            <!--bottom-->
            <tr height="100">
                <td align="center" colspan="2">
                    <jsp:include page="bottom.jsp"/>
                </td>
            </tr>

        </table>

    </center>


</body>
</html>
