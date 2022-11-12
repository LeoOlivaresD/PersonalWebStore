<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 12-10-2022
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>

    <!--Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <!-- Fondo -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css" />
</head>
<body>
<header>
    <div class="container justify-content-center">
        <h2 class="text-center text-white">
            Por favor ingresa tu nombre de usuario y contraseña
        </h2>
    </div>
    <div class="container row col-12 justify-content-center">
        <%@include file="menu.jsp"%>
    </div>
</header>
<main>
    <section>
        <div class="container justify-content-center">
            <form method="post">
                <div class="form-group text-white">
                    <label for="user">User Name</label>
                    <input type="text" class="form-control" name="usuario" id="user">

                </div>
                <div class="form-group text-white">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" id="password">
                </div>
                <button type="submit" class="btn btn-primary">Iniciar Sesion </button>
            </form>
        </div>
    </section>
</main>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"
></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>

</body>
</html>