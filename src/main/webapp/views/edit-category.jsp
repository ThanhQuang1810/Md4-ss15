<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa danh mục</title>
</head>
<body>
<h1>Chỉnh sửa danh mục</h1>

<form action="categories?action=update" method="post">
    <input type="hidden" name="id" value="${category.id}">

    <label for="name">Tên danh mục:</label>
    <input type="text" id="name" name="name" value="${category.name}" required><br><br>

    <label for="status">Trạng thái:</label>
    <select id="status" name="status">
        <option value="true" ${category.status ? "selected" : ""}>Hoạt động</option>
        <option value="false" ${!category.status ? "selected" : ""}>Không hoạt động</option>
    </select><br><br>
    <button type="submit">Cập nhật</button>
</form>


<a href="/categories?action=list">Quay lại danh sách</a>

</body>
</html>
