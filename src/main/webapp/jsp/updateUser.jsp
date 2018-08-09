<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>注册用户</title>
    <meta name="description" content="a simple demo to Web APP">
    <meta name="content-type" content="text/html; charset=UTF-8">

</head>

<body>

<h2 align=center>修改密码</h2>
<center>

    <form action="../user/changePwd" method="post">
        <table border="1">
            <tr>
                <td>用户名：</td>
                <td><input name="userName"></td>
            </tr>
            <tr>
                <td>新密码：</td>
                <td><input name="password" type="password"></td>
            </tr>
            <tr>
                <td>重复新密码：</td>
                <td><input name="conPassword" type="password"></td>
            </tr>
            <tr>
            <td>手机号：</td>
                <td><input name="phonenum"></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="修改"></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
