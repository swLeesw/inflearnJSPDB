<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--div style="text-align: center;"></div-->
<center>
    <h2>회원가입</h2>
    <form action="joinProc.jsp" method="post">

        <table width="400" border="1">
            <tr height="50">
                <td width="150" align="center">아이디</td>
                <td width="150" align="center">
                    <input type="text" name="id" size="25">
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">패스워드</td>
                <td width="150" align="center">
                    <input type="password" name="pw" size="25">
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">패스워드 확인</td>
                <td width="150" align="center">
                    <input type="password" name="pwCheck" size="25">
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">이메일</td>
                <td width="150" align="center">
                    <input type="email" name="email" size="25">
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">전화번호</td>
                <td width="150" align="center">
                    <input type="tel" name="tell" size="25">
                </td>
            </tr>
            <tr height="50">
                <td width="150" aligh="center">관심분야</td>
                <td width="150" aligh="center">
                    &nbsp;
                    <input type="checkbox" name="hobby" value="app">앱개발 &nbsp;
                    <input type="checkbox" name="hobby" value="web">웹개발 &nbsp;
                    <input type="checkbox" name="hobby" value="em">임베디드 &nbsp;
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">직업</td>
                <td width="150" align="center">
                    <select name="job">
                        <option value="교사">교사</option>
                        <option value="변호사">변호사</option>
                        <option value="의사">의사</option>
                    </select>
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">나이</td>
                <td width="150">
                    <input type="radio" name="age" value="10">10대 &nbsp;
                    <input type="radio" name="age" value="20">20대 &nbsp;
                    <input type="radio" name="age" value="30">30대 &nbsp;
                </td>
            </tr>
            <tr height="50">
                <td width="150" align="center">추가정보</td>
                <td width="150" align="center">
                    <textarea rows="5" cols="40" name="info"></textarea>
                </td>
            </tr>
            <tr height="50">
                <td align="center" colspan="2">
                    <input type="reset" value="초기화">
                    <input type="submit" value="회원가입">
                </td>
            </tr>

        </table>
    </form>
</center>
</body>
</html>
