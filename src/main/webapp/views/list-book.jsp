<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Books</title>
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
<h1>List of Books</h1>
<a href="/books?action=create">Create new Book</a>
<a href="/">Quay lại trang chủ</a>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Category</th>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Year Created</th>
        <th>Author</th>
        <th>Status</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.id}</td>
            <td>${book.categoryId.name}</td>
            <td>${book.name}</td>
            <td>${book.price}</td>
            <td>${book.stock}</td>
            <td>${book.yearCreated}</td>
            <td>${book.author}</td>
            <td>${book.status ? 'Available' : 'Not Available'}</td>
            <td>
                <a href="/books?action=details&id=${book.id}">Details</a> |
                <a href="/books?action=update&id=${book.id}">Edit</a> |
                <a href="/books?action=delete&id=${book.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
