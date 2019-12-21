<%--
  Created by IntelliJ IDEA.
  User: jie
  Date: 2019/11/29
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<script type="text/javascript" src="static/js/jquery-1.8.3.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有商品</title>
</head>
<style type="text/css">
    #top{
        float:left;
        margin-left: 30px;
        padding:0;
    }
#foot{
    margin:0 auto;
    padding:0;
    margin-top:400px;
    padding-left:390px;
}
</style>
<body>
<c:if test="${empty products}">
    <c:redirect url="allProducts"></c:redirect>
</c:if>
全部商品
<hr/>

<c:forEach items="${products}" var="product">
  <div id="top">
      <a href="productDetail?id=${product.id}"><img src="front/static/images/${product.filename}" width="150" height="150"/></a><br/>
      <a href="productDetail?id=${product.id}">${product.name}</a><br/>
      ￥${product.price}

  </div>
</c:forEach>
<div id="foot">
    共${pageInfo.total}条记录&nbsp;&nbsp;&nbsp;&nbsp;${pageInfo.pageNum}/${pageInfo.pages}页<br/>
    <a href="allProducts?pagenum=1">[首页]</a>&nbsp;&nbsp;<a href="allProducts?pagenum=${pageInfo.pageNum-1}">[上一页]</a>&nbsp;&nbsp;<a href="allProducts?pagenum=2">[2]</a>&nbsp;&nbsp;<a href="allProducts?pagenum=3">[3]</a>&nbsp;&nbsp;<a href="allProducts?pagenum=${pageInfo.pageNum+1}">[下一页]</a>&nbsp;&nbsp;<a href="allProducts?pagenum=${pageInfo.pages}">[尾页]</a>
</div>
</body>
</html>
