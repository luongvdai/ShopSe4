<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.DAO"%>
<%@page import="java.util.List"%>
<%@page import="entity.Type"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% DAO dao = new DAO(); %>
<% List<Type> listT = dao.getAllType();  %>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="home">Trang chủ<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Loại sản phẩm
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <% for (Type t : listT) {%>
                    <a class="dropdown-item" href="loai?id=<%= t.getId()%>"> <%=t.getName()%></a>
                    <%}%>
                </div>
            </li>
            <form class="form-inline my-2 my-lg-0" action="search" method="post">
                <input class="form-control mr-sm-2" name="txt" type="search" placeholder="tên sản phẩm" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
            </form>
            <li class="nav-item active">
                <a class="nav-link" href="Cart.jsp">Giỏ hàng<span class="sr-only"></span></a>
            </li>
            <c:if test="${sessionScope.acc.manager == 1}">
            <li class="nav-item active">
                <a class="nav-link" href="ManagerProduct.jsp">Quản lý sản phẩm<span class="sr-only"></span></a>
            </li>
        </c:if>
        </ul>
        <c:if test="${sessionScope.acc == null}">
            <div class="right">
                <a class="btn btn-outline-success my-2 my-sm-0" href="Login.jsp">Đăng nhập</a>
                <a class="btn btn-outline-success my-2 my-sm-0" href="SignUp.jsp">Đăng ký</a>
            </div>
        </c:if>
        <c:if test="${sessionScope.acc != null}">
            <div class="row-right">
                <a class="col nav-link" href="#">Chào ${sessionScope.acc.name},</a>
                <a class="col btn btn-outline-success my-2 my-sm-0" href="logout">Đăng xuất</a>
            </div>
        </c:if>

    </div>
</nav>