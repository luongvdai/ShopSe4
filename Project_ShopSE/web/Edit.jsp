<%-- 
    Document   : Edit
    Created on : Mar 13, 2022, 10:42:19 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="edit" method="post">
            <table border="1px">
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Loại</th>
                <th>Giá cả</th>
                <th>Hình ảnh</th>
                <th>mô tả</th>
                <tr>
                    <td><input type="text" name="id" value="${product.id}" readonly required></td>
                    <td><input type="text" name="name" value="${product.name}"></td>
                    <td><input type="text" name="loai" value="${product.cid}"></td>
                    <td><input type="text" name="gia"value="${product.price}"></td>
                    <td><input type="text" name="hinhanh" value="${product.image}"></td>
                    <td><input type="text" name="mota" value="${product.description}"></td>
            </table>
            <input type="submit" value="sửa">
        </form>
    </body>
</html>
