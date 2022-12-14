<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Consultas registradas</title>
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
<%--Titulo--%>
<div class="container text-white text-center animate__animated animate__zoomIn animate__slow">
    <h1>Consultas realizadas por visitantes</h1>
</div>
<%--Menu--%>
<div class="container row col-12 justify-content-center animate__animated animate__slideInLeft animate__slow">
    <nav>
        <%@include file="menu.jsp" %>
    </nav>
</div>
<article>
    <section>
        <div class="container">
            <table class="table text-white">
                <thead>
                <tr>
                    <th>Id Formulario</th>
                    <th>Nombre </th>
                    <th>Email</th>
                    <th>Comentario/consulta</th>
                    <th style="text-align: right">Opciones</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${contacto}" var="contacto">
                    <tr>
                        <td>
                            <c:out value="${contacto.getIdFormulario()}"/>
                        </td>
                        <td>
                            <c:out value="${contacto.getNombre()}"/>
                        </td>
                        <td>
                            <c:out value="${contacto.getEmail()}"/>
                        </td>
                        <td>
                            <c:out value="${contacto.getComentario()}"/>
                        </td>
                        <td>
                            <spring:url value="/formulario/delete/${contacto.idFormulario}" var="deleteURL"/>
                            <a class="btn btn-primary" href="${deleteURL}" role="button">Eliminar</a>

                        </td>
                        <td>
                            <spring:url value="/formulario/editar/${contacto.idFormulario}" var="editURL"/>
                            <a class="btn btn-primary" href="${editURL}" role="button">Editar</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </section>
</article>
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
