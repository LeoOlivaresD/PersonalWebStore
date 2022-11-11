<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 04-10-2022
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tipos de paginas web</title>

    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"
    />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- COLOR DE FONDO CON CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/estilos.css" />
</head>
<body>
<div>
    <div class="container row col justify-content-center text-center">
        <h1>
            <b class="text-white"
            >Porque nosotros nos adaptamos a tu necesidad, elige el mejor
                paquete que se acomode a tu negocio</b
            >
        </h1>
    </div>
    <!-- MENU NAVEGACION -->
    <br />
    <br />
    <div class="container row col-12 justify-content-center">
        <%@include file="menu.jsp"%>
    </div>
    <!-- TIPOS DE PAGINAS WEBS -->
    <main>
        <hr />
        <br />
        <p class="text-white text-center">
            <b> ¿Cual es el tipo de web que necesitas ?</b>
        </p>
        <br />
        <div class="container text-white text-center border">
            <div class="row">
                <div class="col-4 border bg-primary">
                    <div class="centrar">
                        <div>
                            <h3>Página Web de Presentación</h3>
                            <p>
                                Le entregamos un sitio web que incluye solo página de
                                presentación y catálogo de productos o servicios (Sin Carro
                                de Compras)
                            </p>
                        </div>
                        <div class="border justify-content-center">
                            <h3>$30.000</h3>
                        </div>
                    </div>
                </div>

                <div class="col-4 border bg-danger">
                    <div class="centrar">
                        <div>
                            <h3>Web Corporativa.</h3>
                            <p>
                                Página web con un mínimo de 3 a 5 secciones, ideal para
                                presentar tu empresa con sus objetivos claros.
                            </p>
                        </div>
                        <br />
                        <br />
                        <div class="border justify-content-center">
                            <h3>$60.000</h3>
                        </div>
                    </div>
                </div>
                <div class="col-4 border bg-warning">
                    <div class="centrar">
                        <div>
                            <h3>Página Web con Tienda Online</h3>
                            <p>
                                Le entregamos un sitio web que incluye página de
                                presentación y catálogo de productos o servicios con un
                                completo sistema de tienda virtual
                            </p>
                        </div>
                        <div class="border justify-content-center">
                            <h3>$80.000</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <hr />
        <br />
        <div class="container row mx-auto">
            <div class="col-3">
                <img
                        src="https://i.ibb.co/VJPj9Tn/kisspng-online-shopping-computer-icons-e-commerce-business-online-shop-5ac3868fc83cc3-97194906152276.png"
                        class="img-fluid"
                        alt="Responsive image"
                />
            </div>
            <div class="col-3">
                <img
                        src="https://i.ibb.co/R9Vpk1f/tienda-online-para-principiantes-1-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"
                />
            </div>
            <div class="col-3">
                <img
                        src="https://i.ibb.co/48fxykp/ecommerce-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"
                />
            </div>
            <div class="col-3">
                <img
                        src="https://i.ibb.co/mD1Nx3n/tienda-online-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"
                />
            </div>
        </div>
    </main>
    <br />
    <hr />
    <!-- FOOTER -->
    <footer>
        <div class="container row col-12 justify-content-center text-white">
            <p>
                <b>
                    Con la ayuda de nosotros podras elegir el tipo de web o tienda
                    virtual que tienes en mente
                </b>
            </p>
        </div>
        <br />
        <div class="container row col-12 text-white">
            <b>Autor Leonardo Olivares / cspraword@gmail.com</b>
        </div>
    </footer>
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
</body>
</html>

