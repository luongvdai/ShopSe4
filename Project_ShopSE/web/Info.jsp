<%-- 
    Document   : Info
    Created on : Mar 12, 2022, 1:10:11 AM
    Author     : HP
--%>

<%@page import="entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sản phẩm</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <% Product p = (Product) request.getAttribute("getproduct");%>
        <jsp:include page="Header.jsp"></jsp:include>
            <div class="container py-4 my-4 mx-auto d-flex flex-column">
                <div class="container-body ">
                    <div class="row">
                        <div class="col-md-7"> <img src="<%= p.getImage()%>" width="90%" height="95%"> </div>
                    <div class="col-md-5">
                        <ul style="list-style-type: none">
                            <li><h2><%= p.getName()%></h2></li>
                            <li><%= p.getDescription()%></li>
                            <li><b>Giá cả: </b><%= p.getPrice()%></li>
                            <li><b>Số lượng: </b><%= p.getNumber()%></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="row">
                    <a href="addcart?id=<%= p.getId()%>" class="btn btn-success mt-5 mr-5 ml-auto">Thêm vào giỏ hàng</a>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
