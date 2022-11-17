<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listado de usuarios</title>
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"/>
    <!--Animaciones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
<div class="container text-white text-center animate__animated animate__zoomIn animate__slow">
    <h1>Usuarios registrados en base </h1>
</div>
<div class="container row col-12 justify-content-center animate__animated animate__slideInLeft animate__slow">
    <nav>
        <%@include file="menu.jsp" %>
    </nav>
</div>
<div class="container">
    <table class="table text-white">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Correo</th>
            <th>Password</th>
            <th style="text-align:right">Opciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${usuarios}" var="usuarios">
            <tr>
                <td>
                    <c:out value="${usuarios.getIdUsuario()}"/>
                </td>
                <td>
                    <c:out value="${usuarios.getNombre()}"/>
                </td>
                    <%--Importamte los get deben coincidir con el nombre de los atributos de la clase llamada en este caso RegistroUsuario--%>
                <td>
                    <c:out value="${usuarios.getApellido()}"/>
                </td>
                <td>
                    <c:out value="${usuarios.getCorreo()}"/>
                </td>
                <td>
                    <c:out value="${usuarios.getPassword()}"/>
                </td>
                <td>
                    <spring:url value="/usuario/delete/${usuarios.idUsuario}" var="deleteURL"/>
                    <a class="btn btn-primary" href="${deleteURL}" role="button">Eliminar</a>

                </td>
                <td>
                    <spring:url value="/usuario/editar/${usuarios.idUsuario}" var="editURL"/>
                    <a class="btn btn-primary" href="${editURL}" role="button">Editar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
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
<!-- INTEGRACION  TAREA JS2 CAMBIO DE FONDO EN MENU AL PASAR CLIC ENCIMA -->
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>
</body>
</html>
