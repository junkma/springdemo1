<%--
  Created by IntelliJ IDEA.
  User: jie
  Date: 2019/12/11
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table cellspacing="0" cellpadding="0" border="1">
    <tr>
        <td>姓名</td>
        <td>性别</td>
        <td>电话</td>
    </tr>
<c:forEach items="${users}" var="users">
    <tr>
        <td>${users.username}</td>
        <td>${users.sex==1?"男":"女"}</td>
        <td>${users.mobile}</td>
    </tr>
</c:forEach>
</table>
总共${pageInfo.pages}页&nbsp;&nbsp;${pageInfo.pageNum}/${pageInfo.pages}页&nbsp;&nbsp;${pageInfo.total}条记录
<a href="pageuser?pageNum=${pageInfo.pageNum-1}">上一页</a><a href="pageuser?pageNum=${pageInfo.pageNum+1>=pageInfo.total?pageInfo.total:pageInfo.pageNum+1}">下一页</a>
</body>
</html>
