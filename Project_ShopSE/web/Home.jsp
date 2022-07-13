<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Type"%>
<%@page import="java.util.List"%>
<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <% List<Product> listP = (List<Product>) request.getAttribute("lstP"); %>

    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                <% for (Product o : listP) {%>
                <div class="card col-md-3">
                    <div class="row">
                        <img class="col card-img " src="<%= o.getImage()%>" alt="Card image cap" style="width: 150px;margin-top: 10px" >
                        <div class="col">
                            <h5 class="row-card-title " style="margin-top: 10px"><%= o.getName()%></h5>
                            <a class="col" style="color: red"><%= o.getPrice()%></a>
                            <% if (o.getNumber() != 0) {%>
                            <div class="row-btn btn-primary" style="text-align: center" >còn hàng</div>  
                            <%}%>
                            <% if (o.getNumber() == 0) {%>
                            <div class="row-btn btn-danger" style="text-align: center" >hết hàng</div>  
                            <%}%>
                        </div>
                    </div> 
                    <div class="card-body">
                        <a href="addcart?id=<%= o.getId()%>" class="btn btn-success">Thêm</a>
                        <a href="info?id=<%= o.getId()%>"class="btn btn-primary">Thông tin</a>                    
                    </div>
                </div>
                <%}%>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
