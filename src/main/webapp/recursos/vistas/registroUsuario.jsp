<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%-- Primer paso en la vista del formulario "agregar esta tablib lo cual diferencia del metodo de hacer llegar los datos a la base de datos cuando estabamos trabajando con singleton --%>

<html>
<head>
    <title>Registro personal web store</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
<header>
    <div class="container">
        <h1 class="text-center text-white"> Formulario de registro </h1>
    </div>
</header>
<div class="container row col-12 justify-content-center">
    <nav>
        <%@include file="menu.jsp" %>
    </nav>
</div>
<article>
    <section>
        <div class="container">

            <%--    Formulario--%>
            <spring:url value="/usuario/save" var="saveURL" htmlEscape="true"/>
            <form:form modelAttribute="usuarioForm" method="post" action="${saveURL}" cssClass="form">
                <form:hidden path="idUsuario"/>
                <div class="form-group text-white">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <form:input path="nombre" cssClass="form-control" id="nombre"/>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellido</label>
                        <form:input path="apellido" cssClass="form-control" id="apellido"/>
                    </div>
                    <label for="correo">Email address</label>
                    <form:input path="correo" cssClass="form-control" id="correo"/>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <form:input type="password" path="password" cssClass="form-control" id="password"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrarse</button>
                </div>
            </form:form>

        </div>
    </section>
</article>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<!-- INTEGRACION  TAREA JS2 CAMBIO DE FONDO EN MENU AL PASAR CLIC ENCIMA -->
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>
</body>
</html>
