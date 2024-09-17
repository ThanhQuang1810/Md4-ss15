<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Xóa danh mục</title>
</head>
<body>
<h1>Xóa danh mục</h1>
<form action="/categories?action=delete" method="post">
    <input type="hidden" name="id" value="${category.id}">
    <p>Bạn có chắc chắn muốn xóa danh mục <strong>${category.name}</strong> không?</p>
    <input type="submit" value="Xóa">
    <a href="/categories?action=list">Hủy bỏ</a>
</form>

</body>
</html>
