<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head><!-- Title and other stuffs --> <title>百知后台登录页面</title> <!-- Stylesheets 样式 -->
    <link href="http://system.tjldsd.com:80/style/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" href="http://system.tjldsd.com:80/style/animate.css"/>
    <link href="http://system.tjldsd.com:80/style/loginstyle.css" rel="stylesheet"/>
    <script type="text/javascript"></script>
</head>

<body class="gray-bg">
<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>

        <div><h1 class="logo-name">BZ</h1></div>
        <h3>百知仓库后台管理系统</h3>

        <c:if test="${message!=null}">
        <div class="alert alert-danger" >
            <strong>${message}</strong>
        </div>
        </c:if>
        <form class="m-t" action="${pageContext.request.contextPath}/admin/login" method="post">
            <div class="form-group"><input type="text" name="name" class="form-control" placeholder="用户名"/></div>
            <div class="form-group"><input type="password" name="password" class="form-control" placeholder="密码"/>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
        </form>
    </div>
</div>
</body>
</html>