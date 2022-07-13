<%-- 
    Document   : Insert
    Created on : Mar 13, 2022, 5:16:23 PM
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
        <form action="insert" method="post">
            <table border="1px">
                <th>Tên sản phẩm</th>
                <th>Loại</th>
                <th>Giá cả</th>
                <th>Số lượng</th>
                <th>Mô tả</th>
                <th>Hình ảnh</th>
                <tr>
                    <td><input type="text" name="name"></td>
                    <td><input type="text" name="loai"></td>
                    <td><input type="text" name="price"></td>
                    <td><input type="text" name="number"></td>
                    <td><input type="text" name="mota"></td>
                    <td><input type="text" name="image"></td>
            </table>
            <input type="submit" value="Thêm">
        </form>
    </body>
</html>
