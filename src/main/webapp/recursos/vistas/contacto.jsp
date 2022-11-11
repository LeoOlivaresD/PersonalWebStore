
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contactanos</title>

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
<!-- TITULO DE CONTACTO -->
<header>
    <h1 class="text-white text-center">
        <b
        >Bienvenido, deseas preguntar algo?</b
        >
    </h1>
</header>
<!-- MENU DE NAVEGACION -->
<div class="container row col-12 justify-content-center">
    <%@include file="menu.jsp"%>
</div>
<main>
    <!-- FORMULARIO BOOTSTRAP -->
    <br />
    <hr />
    <br />

    <div class="container ">
        <form>
            <h1 class="text-white text-center">COMPLETE LOS SIGUIENTES DATOS</h1>
            <div class="form-group text-white">
                <%--@declare id="nombre"--%><label for="Nombre">Nombre</label>
                <input
                        type="text"
                        class="form-control"
                        placeholder="Ingrese su Nombre"
                />
                <br>
                <!-- PLUGIN SELEC 2 -->
                <div>
                    <select class="plug" name="state">
                        <option value="AL">Seleciona tu pais</option>
                        <option value="WY">Chile</option>
                        <option value="AL">Argentina</option>
                        <option value="WY">Colombia</option>
                        <option value="AL">Paraguay</option>
                        <option value="WY">Brazil</option>
                        <option value="WY">Peru</option>
                        <option value="WY">Uruguay</option>
                        <option value="WY">Venezuela</option>
                        <option value="WY">Bolivia</option>
                        <option value="WY">Mexico</option>
                        <option value="WY">USA</option>
                        <option value="WY">Francia</option>
                        <option value="WY">Inglaterra</option>
                        <option value="WY">Japon</option>
                        <option value="WY">Indonesia</option>
                        <option value="WY">Rusia</option>
                        <option value="WY">Ucrania</option>
                        <option value="WY">Nueva Zelanda</option>
                    </select>
                </div>
            </div>
            <div class="form-group text-white">
                <label for="exampleInputEmail1">Email</label>
                <input
                        type="email"
                        class="form-control"
                        placeholder="Escriba su Email"
                        id="exampleInputEmail1"
                        aria-describedby="emailHelp"
                />
            </div>

            <div class="form-group text-white">
                <label for="exampleFormControlTextarea1"
                >Dejenos su Comentario</label
                >
                <textarea
                        class="form-control"
                        placeholder="Escribanos su Consulta"
                        id="exampleFormControlTextarea1"
                        rows="8"
                ></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
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
