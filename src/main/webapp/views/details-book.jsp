<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sách</title>
</head>
<body>
<h1>Chi tiết sách</h1>

    <table border="1">
        <tr>
            <th>ID</th>
            <td>${book.id}</td>
        </tr>
        <tr>
            <th>Tên sách</th>
            <td>${book.name}</td>
        </tr>
        <tr>
            <th>Thể loại</th>
            <td>${book.categoryId.name}</td>
        </tr>
        <tr>
            <th>Giá</th>
            <td>${book.price}</td>
        </tr>
        <tr>
            <th>Số lượng</th>
            <td>${book.stock}</td>
        </tr>
        <tr>
            <th>Số trang</th>
            <td>${book.totalPages}</td>
        </tr>
        <tr>
            <th>Năm xuất bản</th>
            <td>${book.yearCreated}</td>
        </tr>
        <tr>
            <th>Tác giả</th>
            <td>${book.author}</td>
        </tr>
        <tr>
            <th>Trạng thái</th>
            <td>${book.status ? "action" : "inactive"}</td>
        </tr>
    </table>


    <a href="books?action=view">Trở về danh sách sách</a>



</body>
</html>
