<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<script type="text/javascript" src="static/js/jquery-1.8.3.min.js"></script>
<%--<link rel="stylesheet" href="static/css/layout.css">--%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">易买网后台管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="commentManager" target="right">留言管理</a></li>
            <li class="layui-nav-item"><a href="userManager" target="right">用户管理</a></li>
            <li class="layui-nav-item"><a href="newsManager" target="right">新闻管理</a></li>
            <li class="layui-nav-item"><a href="orderManager" target="right">订单管理</a></li>
            <li class="layui-nav-item"><a href="productManager" target="right">商品管理</a></li>
            <li class="layui-nav-item"><a href="typeManager" target="right">分类管理</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="index">首页</a></li>&nbsp;&nbsp;
            <li class="layui-nav-item">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${user.loginname}
            </li>
            <li class="layui-nav-item"><a href="off">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item"><a href="commentManager" target="right">留言管理</a></li>
                <li class="layui-nav-item"><a href="userManager" target="right">用户管理</a></li>
                <li class="layui-nav-item"><a href="newsManager" target="right">新闻管理</a></li>
                <li class="layui-nav-item"><a href="orderManager" target="right">订单管理</a></li>
                <li class="layui-nav-item"><a href="productManager" target="right">商品管理</a></li>
                <li class="layui-nav-item"><a href="typeManager" target="right">分类管理</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe scrolling="auto" rameborder="0"  name="right" width="100%" height="100%" ></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="static/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>