<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách danh mục</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: left;
        }

        td {
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            text-decoration: none;
            color: #1E90FF;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>Danh sách danh mục</h1>
<a href="categories?action=create">Thêm mới danh mục</a>
<a href="/">Quay trở lại trang chủ</a>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Tên danh mục</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td>${category.status ? "Hoạt động" : "Không hoạt động"}</td>
            <td>
                <a href="categories?action=details&id=${category.id}">Detail</a> |
                <a href="categories?action=update&id=${category.id}">Update</a> |
                <a href="categories?action=delete&id=${category.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
