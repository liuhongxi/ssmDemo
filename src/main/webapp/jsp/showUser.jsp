<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/6
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<center>
    <h1>用户信息</h1>
    <FORM style="align: center">
        <TABLE border="1">
            <tr>
                <td>登录用户：</td>
                <td>${sessionScope.user.name}</td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>${sessionScope.user.sex}</td>
            </tr>
            <tr>
                <td>手机号：</td>
                <td>${sessionScope.user.phonenum}</td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>${sessionScope.user.name}</td>
            </tr>
            <tr>
                <td>居住地址：</td>
                <td>${sessionScope.user.address}</td>
            </tr>
            <tr>
                <td>公司名称：</td>
                <td>${sessionScope.user.company}</td>
            </tr>
        </TABLE>
    </FORM>
    <a href="/jsp/login.jsp"><front color="GREEN" >切换账号</front></a>
</center>
</body>
</html>
