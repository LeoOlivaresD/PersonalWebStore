
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
            <%
                String error = (String)request.getAttribute("error");
                if (error != null && error.equals("true")){
                    out.println("<h3 class='alert alert-danger text-center'>Error de autentificacion</h3>");
                }
            %>
            <form action="${pageContext.request.contextPath}/login" method="post">
                <div class="form-group text-white">
                    <label for="username">Nombre usuario</label>
                    <input type="text" class="form-control" name="username" id="username">

                </div>
                <div class="form-group text-white">
                    <label for="password">Contraseña</label>
                    <input type="password" name="password" class="form-control" id="password">
                </div>
                <button type="submit" class="btn btn-primary">Iniciar Sesion </button>
                <%--<div class="form-group text-white">
                    <label id="errorLbl" style="display: none">Error de login</label>
                </div>--%>
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
<!-- INTEGRACION TAREA JS ALERTA -->
<script src="${pageContext.request.contextPath}/res/js/alertLogin.js"></script>

</body>
</html>
