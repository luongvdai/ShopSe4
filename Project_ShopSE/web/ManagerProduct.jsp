<%-- 
    Document   : ManagerProduct
    Created on : Mar 12, 2022, 10:28:40 PM
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page import="dao.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <% DAO dao = new DAO();%>
    <% List<Product> list = dao.getAllProduct(); %>
    <head>
        <title>Quản lý</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <form style='margin-top: 20px'>
                <table class="table">
                    <div class="row">
                        <h2 class="col-md-10">Danh sách sản phẩm</h2>
                        <div class="col-md-2">
                            <a href="Insert.jsp"class="btn btn-primary ">Thêm sản phẩm</a>
                        </div>
                    </div>
                    <thead>
                        <tr>
                            <th scope="col">Mã sản phẩm</th>
                            <th scope="col">Tên sản phẩm</th>
                            <th scope="col">Loại</th>
                            <th scope="col">Giá cả</th>
                            <th scope="col">số lượng</th>
                            <th scope="col">mô tả</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <% for (Product o : list) {%>       
                    <tr>
                        <th scope="row"><%= o.getId()%></th>
                        <td><%= o.getName()%></td>
                        <td><%= o.getCid()%></td>
                        <td><%= o.getPrice()%></td>
                        <td><%= o.getNumber()%></td>
                        <td><%= o.getDescription()%></td>
                        <td><a href="productedit?id=<%= o.getId()%>" class="btn btn-success">Sửa</a>
                            <a href="delete?id=<%= o.getId()%>" class="btn btn-danger">xóa</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
