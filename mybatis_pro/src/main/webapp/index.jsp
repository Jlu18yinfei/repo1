<%@ page import="com.damu.entity.Users" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2020/8/29
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>慕课网用户管理中心</title>
    <link rel="stylesheet" href="lib/css/bootstrap.min.css">
    <script src="lib/js/bootstrap.min.js"></script>
    <script src="lib/js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="page-header">
                <h1>慕课网后台管理系统 <small>用户数据管理中心</small></h1>
            </div>
        </div>
        <div class="row">
            <div class="jumbotron">
                <h1>MyBatis basic learning</h1>
                <p>use a project to achieve basic learning for basic</p>
                <p><a class="btn btn-primary btn-lg">leanrn more, ask yf!</a></p>
            </div>
        </div>
        <div class="row">
            <table class="table table-hover table-striped">
                <tr>
                    <th>用户编号</th>
                    <th>登录账号</th>
                    <th>用户昵称</th>
                    <th>邮箱</th>
                    <th>联系方式</th>
                    <th>账号创建时间</th>
                    <th>用户状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach var="user" items="${usersList}">
                <tr>
                    <td>1</td>
                    <td>admin</td>
                    <td>小穆</td>
                    <td>1833746144@qq.com</td>
                    <td>1338888888888</td>
                    <td>2017-05-15</td>
                    <td>正常</td>
                    <td>
                        <a href="">查看</a>
                        <a href="">修改</a>
                        <a href="">删除</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>

</body>
</html>
