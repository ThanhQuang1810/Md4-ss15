<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mới danh mục</title>
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
    </style>
</head>
<body>
<h1>Thêm mới danh mục</h1>
<form action="categories?action=create" method="post">
    <label for="name">Tên danh mục:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="status">Trạng thái:</label>
    <select id="status" name="status" required>
        <option value="true">Hoạt động</option>
        <option value="false">Không hoạt động</option>
    </select><br>

    <input type="submit" value="Thêm mới">
</form>
<a href="/categories?action=list">Quay lại danh sách</a>

</body>
</html>
