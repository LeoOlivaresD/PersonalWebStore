<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 04-10-2022
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Galeria</title>

    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!--Animaciones -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <!-- COLOR DE FONDO CON CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css"/>
    <!-- Estilos Carrusel -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/carrusel.css">
</head>
<body>
<header>
    <h1 class="text-white text-center img-fluid animate__animated animate__zoomIn animate__slow"><b>Algunos de nuestros diseños</b></h1>
</header>
<hr>
<br/>

<div class="container row col-12 justify-content-center animate__animated animate__slideInLeft animate__slow">
    <%@include file="menu.jsp"%>
</div>
<hr/>
<br/>
<div id="contenedor-slider" class="contenedor-slider img-fluid animate__animated animate__zoomIn animate__slow">
    <div id="slider" class="slider">
        <section class="slider__section"><img
                src="https://i.ibb.co/R9TxQ48/cdd8f89178883ca13123200d47de10f5c919f20c25f2fdeaa0c75f6fe40db8af.jpg"
                class="slider__img"></section>
        <section class="slider__section"><img
                src="https://i.ibb.co/K9jD9CY/disen-o-de-pa-ginas-web-para-cli-nicas-dentales-y-dentistas-disen-o-web-murcia-posicionamiento-web-s.jpg"
                class="slider__img"></section>
        <section class="slider__section"><img
                src="https://i.ibb.co/Fb4PNZJ/ejemplos-de-landing-page-en-web-de-servicios-inicio.webp"
                class="slider__img"></section>
        <section class="slider__section"><img src="https://i.ibb.co/dKQNJkD/planeta-huerto.png" class="slider__img">
        </section>
        <section class="slider__section"><img src="https://i.ibb.co/2k5jm8Y/WEB-PORTADA.png" class="slider__img">
        </section>
        <section class="slider__section"><img
                src="https://i.ibb.co/wQ5KMBf/weight-loss-diet-solution-video-call-to-action-and-lead-capture-landing-page-design-template-038.webp"
                class="slider__img"></section>
    </div>
    <div id="btn-prev" class="btn-prev">&#60;</div>
    <div id="btn-next" class="btn-next">&#62;</div>
</div>
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
<!-- INTEGRACION  TAREA JS2 CAMBIO DE FONDO EN MENU AL PASAR CLIC ENCIMA -->
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>
<script src="${pageContext.request.contextPath}/res/js/carrusel.js"></script>

</body>
</html>
