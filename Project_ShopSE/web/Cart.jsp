<%-- 
    Document   : Cart
    Created on : Mar 13, 2022, 12:47:45 AM
    Author     : HP
--%>

<%@page import="java.sql.Array"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page import="dao.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Giỏ hàng</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <% int index = 0; %>
        <jsp:include page="Header.jsp"></jsp:include>
        <% float total = 0; %>
        <table class="table">
            <h2>Giỏ hàng</h2>
            <thead>
                <tr>
                    <th scope="col">Mã</th>
                    <th scope="col">Sản phẩm</th>
                    <th scope="col">Giá cả</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Hủy</th>
                </tr>
            </thead>
            <tbody>
                <c:if test="${cart != null}">
                    <c:forEach items="${cart}" var="o">        
                        <tr>
                            <th scope="row">${o.getPid()}</th>
                            <td>${o.getName()}</td>
                            <td>${o.getPrice()}</td>
                            <td>${o.getNumber()}</td>
                            <td>
                                <a href="remove?id=<%= index++%>" class="btn btn-danger">xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                    <% ArrayList<Cart> lst = (ArrayList<Cart>) session.getAttribute("cart"); %>
                    <% for (Cart o : lst) { %>
                    <% total += o.getPrice() * o.getNumber();%>
                    <%}%>
                <th scope="row"></th>
                <td></td>
                <td>Tổng tiền : <%= total%> </td>
                <td></td>
                <c:if test="${acc!=null}">
                <td><a href="buy" class="btn btn-success">Mua</a></td>
                </c:if>
        </c:if>
                <th></th>
                <th>${mess}</th>
        </tbody>
    </table>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
