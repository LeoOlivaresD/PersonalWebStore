<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personal Web Store</title>
    <!-- BOOTSTRAP -->
    <link
            rel="stylesheet"
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

<header>
    <div class="container">
        <div class="container mx-auto row col-12 text-white justify-content-center">
            <h1 class="animate__animated animate__slow animate__pulse" id="titulo"><b>BIENVENIDO A PERSONAL WEB STORE</b></h1>
        </div>
    </div>
    <br/>
    <!-- DESCRIPCION DE LA WEB -->
    <div class="container mx-auto row text-white justify-content-center animate__animated animate__slow animate__zoomIn" style="text-align: center">
        <p>
            Mi nombre es Leonardo Olivares, soy fundador de "Personal Web Store" y a traves de ella te voy a ayudar
            a llevar tu negocio o pequeña empresa a otro nivel
        </p>
    </div>
</header>
<hr/>

<!-- MENU DE NAVEGACION -->
<br/>
<div class="container row col-12 justify-content-center">
    <%@include file="menu.jsp" %>
</div>

<div class="container row col-12 justify-content-center"></div>
<main>
    <br/>
    <hr/>
    <!-- MISION DE LA WEB -->
    <div class="container row mx-auto text-white justify-content-center">
        <br/>
        <p class="col-12">
            Nuestra compañia se encarga de hacer publicidad a tu proyecto para
            que este tenga mayor visibilidad en el mercado.
        </p>

        <p class="col-12">
            Es para ello que tenemos una vision orientada al desarrallo de las
            ideas de nuestros clientes, con el fin de que estas se puedan
            concretar.
        </p>

        <br/>

        <p class="col-12">
            Contamos con un equipo increible el cual esta en la vanguardia de
            las mejores tecnologías del mercado para asegurar un exito seguro.
        </p>
    </div>
    <section>
        <!-- IMAGENES DE EJEMPLO DE DISEÑOS WEB -->
        <br/>
        <div class="container row mx-auto">
            <div class="col-6 col-sm-3 animate__animated animate__slower  animate__flip">
                <img
                        src="https://i.ibb.co/VJPj9Tn/kisspng-online-shopping-computer-icons-e-commerce-business-online-shop-5ac3868fc83cc3-97194906152276.png"
                        class="img-fluid"
                        alt="Responsive image"/>
            </div>
            <div class="col-6 col-sm-3 animate__animated animate__slower animate__delay-1s  animate__flip">
                <img
                        src="https://i.ibb.co/R9Vpk1f/tienda-online-para-principiantes-1-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"/>
            </div>
            <div class="col-6 col-sm-3 animate__animated animate__slower animate__delay-2s  animate__flip">
                <img
                        src="https://i.ibb.co/48fxykp/ecommerce-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"/>
            </div>
            <div class="col-6 col-sm-3 animate__animated animate__slower animate__delay-3s  animate__flip">
                <img
                        src="https://i.ibb.co/mD1Nx3n/tienda-online-removebg-preview.png"
                        class="img-fluid"
                        alt="Responsive image"/>
            </div>
        </div>
    </section>
</main>

<br/>
<hr/>
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
    <br/>
    <div class="container row col-12 text-white">
        <b>Autor Leonardo Olivares / cspraword@gmail.com</b>
    </div>
</footer>


<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">

</script>
<script
        src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous">

</script>
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous">

</script>
<!-- INTEGRACION  TAREA JS2 CAMBIO DE FONDO EN MENU AL PASAR CLIC ENCIMA -->
<script src="${pageContext.request.contextPath}/res/js/colorMenu.js"></script>
</body>
</html>
