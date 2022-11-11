<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 27-10-2022
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul id="menu" class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/">Inicio</a>
    </li>
    <li class="nav-item">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/login">Ingresar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/usuario/crear">Registrarse</a>
    </li>
    <li class="nav-item">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/usuario/listar">Ver Lista Usuario</a>
    </li>
    <li class="nav-item dropdown">
        <a
                class="nav-link dropdown-toggle text-white bg-primary"
                data-toggle="dropdown"
                href="#"
                role="button"
                aria-haspopup="true"
                aria-expanded="false"
        >Tipos de Web</a
        >
        <!-- aca debemos anexar con los servlet y NO con los JSP -->
        <div class="dropdown-menu bg-primary">
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/tiposDeWebs"
            >Web institucional</a
            >
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/tiposDeWebs"
            >Tienda Online</a
            >
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/tiposDeWebs"
            >Promociones</a
            >
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/tiposDeWebs"
            >Comienza Ahora</a
            >
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link text-white" href="${pageContext.request.contextPath}/galeria">Galeria</a>
    </li>
    <li class="nav-item">
        <a class="nav-link text-white" href="${pageContext.request.contextPath}/contacto">Contacto</a>
    </li>
    <li class="nav-item">
        <a
                class="nav-link text-white"
                href="https://www.tres.pe/blog/beneficios-tienda-virtual/"
                target="_blank"
        >Articulos de Interes</a
        >
    </li>
</ul>

