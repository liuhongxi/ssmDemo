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

<h2 align=center>注册用户</h2>
<center>

    <form action="../user/register" method="post">
        <table border="1">
            <tr>
                <td>登录名：</td>
                <td><input name="userName"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input name="password" type="password"></td>
            </tr>
            <tr>
                <td>重复密码：</td>
                <td><input name="conPassword" type="password"></td>
            </tr>
            <tr>
                <td>手机号：</td>
                <td><input name="phonenum"></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input name="age"></td>
            </tr>
             <tr>
                  <td>性别：</td>
                  <td><input name="sex"></td>
            </tr>
            <tr>
                <td>居住地：</td>
                <td><input name="address"></td>]


            </tr>
            <tr>
                <td>所在公司：</td>
                <td><input name="company"></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="提交注册"></td>
            </tr>
        </table>
    </form>
    您已有账号？<a href="/jsp/login.jsp"><front color="GREEN" >点击直接登录</front></a>
</center>
</body>
</html>
