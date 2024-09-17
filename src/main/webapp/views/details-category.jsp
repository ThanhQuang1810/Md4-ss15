<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết danh mục</title>
</head>
<body>
<h1>Chi tiết danh mục</h1>
<p><strong>ID:</strong> ${category.id}</p>
<p><strong>Tên danh mục:</strong> ${category.name}</p>
<p><strong>Trạng thái:</strong> ${category.status ? "Hoạt động" : "Không hoạt động"}</p>
<a href="/categories?action=list">Quay lại danh sách</a>
</body>
</html>
