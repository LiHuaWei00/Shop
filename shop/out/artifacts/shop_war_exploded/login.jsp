<%--
  Created by IntelliJ IDEA.
  User: Huazi
  Date: 2017/10/11
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!-- Head -->
<head>

    <title>登录表单</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
     <link rel="stylesheet" href="css/style1.css" type="text/css" media="all">
</head>
<body>

<h1>登录表单</h1>

<div class="container w3layouts agileits">

    <div class="login w3layouts agileits">
        <h2>登 录</h2>
        <form action="loginServlet" method="post">
            <input type="text" Name="Username" placeholder="用户名" required="">
            <input type="password" Name="Password" placeholder="密码" required="">


        <div class="send-button w3layouts agileits">
            <input type="submit" value="登 录">
        </div>
        </form>
        <div class="clear"></div>
    </div>


    <div class="register w3layouts agileits">
        <h2>注 册</h2>
        <form action="SignUpServlet" method="post">
            <input type="text" Name="Name" placeholder="用户名" required="">
            <input type="text" Name="Email" placeholder="邮箱" required="">
            <input type="password" Name="Password" placeholder="密码" required="">
            <input type="password" Name="rePassword" placeholder="再次输入密码" required="">
            <input type="text" Name="PhoneNumber" placeholder="手机号码" required="">
        <div class="send-button w3layouts agileits">
            <input type="submit" value="免费注册">
        </div>
        </form>
        <div class="clear"></div>
    </div>

    <div class="clear"></div>

</div>



</body>
<!-- //Body -->

</html>
