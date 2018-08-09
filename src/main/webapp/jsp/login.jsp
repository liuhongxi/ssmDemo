<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
</head>
<body>
    <center>
             <h1>登录页面</h1>
            <form action="../user/login" method="post">
                <table border="1">
                    <tr>
                        <td>账号：</td>
                        <td><input type="text" name="account"></td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
                </table>
            <br>
                <input type="submit" value="登录">
            </form>
            <tr>
                <a href="/jsp/register.jsp"><front color="GREEN" >注册新用户</front></a>&nbsp
                <a href="/jsp/updateUser.jsp"><front color="GREEN" >更改密码</front></a>
            </tr>
    </center>
</body>
</html>