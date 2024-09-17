<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Thêm mới sách</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h1 {
            color: #4CAF50;
        }

        form {
            width: 300px;
            margin: 0 auto;
        }

        label {
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0 15px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #1E90FF;
            display: inline-block;
            margin-top: 10px;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<h1>Thêm mới sách</h1>
<form action="books?action=create" method="post">
    <label for="categoryId">Thể loại:</label>
    <select id="categoryId" name="categoryId" required>
        <c:forEach var="category" items="${categories}">
            <option value="${category.id}">${category.name}</option>
        </c:forEach>
    </select><br>

    <label for="name">Tên sách:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="price">Giá:</label>
    <input type="number" id="price" name="price" required><br>

    <label for="stock">Số lượng:</label>
    <input type="number" id="stock" name="stock" required><br>

    <label for="totalPages">Số trang:</label>
    <input type="number" id="totalPages" name="totalPages" required><br>

    <label for="yearCreated">Năm xuất bản:</label>
    <input type="number" id="yearCreated" name="yearCreated" required><br>

    <label for="author">Tác giả:</label>
    <input type="text" id="author" name="author" required><br>

    <label for="status">Trạng thái:</label>
    <select id="status" name="status" required>
        <option value="true">Đang bán</option>
        <option value="false">Ngừng bán</option>
    </select><br>

    <input type="submit" value="Thêm mới">
    <a href="/books?action=list">Quay lại trang chủ</a>
</form>
</body>
</html>
