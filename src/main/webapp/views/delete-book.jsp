<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xóa sách</title>
</head>
<body>
<h1>Xác nhận xóa sách</h1>

<c:if test="${not empty book}">
    <p>Bạn có chắc chắn muốn xóa cuốn sách <strong>${book.name}</strong> (ID: ${book.id}) không?</p>

    <form action="/books?action=delete" method="post">
        <input type="hidden" name="action" value="book.id">
        <input type="hidden" name="id" value="${book.id}">
        <input type="submit" value="Xóa">
        <a href="books?action=view">Hủy bỏ</a>
    </form>
</c:if>

<c:if test="${empty book}">
    <p>Không tìm thấy thông tin sách để xóa.</p>
    <a href="books?action=view">Trở về danh sách sách</a>
</c:if>
</body>
</html>
