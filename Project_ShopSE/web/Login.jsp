<%-- 
    Document   : Login
    Created on : Mar 11, 2022, 2:09:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <jsp:include page="Header.jsp"></jsp:include>
    <body>
<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
          <h2>Đăng nhập</h2>
          <form action="login" method="post">
          <!-- Email input -->
          <div class="form-outline mb-4">
              <input type="text" id="form1Example13" class="form-control form-control-lg" placeholder="Tên đăng nhập" name="user" required="" autofocus="" />
          </div>
          <!-- Password input -->
          <div class="form-outline mb-4">
              <input type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Mật khẩu" name="pass" required=""/>
          </div>
          <div class="d-flex justify-content-around align-items-center mb-4">${wrong}
          </div>
          <button type="submit" class="btn btn-primary btn-lg btn-block">Đăng nhập</button>
        </form>
          <p class="mb-5 pb-lg-2" style="color: #393f81;"><a href="SignUp.jsp" style="color: #393f81;">Đăng ký</a></p>
      </div>
    </div>
  </div>
</section>
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
