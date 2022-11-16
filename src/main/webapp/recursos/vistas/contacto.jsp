<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sprin" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contactanos</title>

    <link rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!--Animaciones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <!-- COLOR DE FONDO CON CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css"/>
</head>
<body>
<!-- TITULO DE CONTACTO -->
<header>
    <h1 class="text-white text-center animate__animated animate__bounce">
        <b
        >Bienvenido, deseas preguntar algo?</b
        >
    </h1>
</header>
<!-- MENU DE NAVEGACION -->
<div class="container row col-12 justify-content-center">
    <%@include file="menu.jsp" %>
</div>
<main>
    <!-- FORMULARIO BOOTSTRAP -->
    <br/>
    <hr/>
    <br/>

    <div class="container ">
        <spring:url value="/formulario/save" var="saveURL" htmlEscape="true"/>
        <form:form modelAttribute="contactoForm" method="post" action="${saveURL}" cssClass="formulario">
            <form:hidden path="idFormulario"/>
        <h1 class="text-white text-center">COMPLETE LOS SIGUIENTES DATOS</h1>
        <div class="form-group text-white">
                <%--@declare id="nombre"--%><label for="nombre">Nombre</label>
            <form:input path="nombre" cssClass="form-control" id="nombre" placeholder="Ingrese su nombre"/>
            <br>
            <div class="form-group text-white">
                <label for="email">Email</label>
                <form:input path="email" cssClass="form-control" id="email" placeholder="ejemplo@gmail.com"/>
            </div>

            <div class="form-group text-white">
                <label for="comentario">Dejenos su Comentario</label>
                <form:textarea path="comentario" cssClass="form-control" id="comentario"
                               placeholder="Escriba un maximo de 250 caracteres" rows="8"/>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
            </form:form>
        </div>
</main>
<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"
></script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"
></script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous"
></script>

<!-- Integracion Plugin selec2 -->
<script src="${pageContext.request.contextPath}/js/plugin%20selec2.js"></script>
<link
        href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
        rel="stylesheet"
/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<!-- INTEGRACION  TAREA JS2 CAMBIO DE FONDO EN MENU AL PASAR CLIC ENCIMA -->
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>
</body>
</html>
