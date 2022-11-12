<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 27-10-2022
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul id="menu" class="nav nav-tabs bg-primary">
    <li class="nav-item">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/">Inicio</a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white bg-primary"
           data-toggle="dropdown"
           href="#"
           role="button"
           aria-haspopup="true"
           aria-expanded="false">Iniciar/Salir</a>
        <div class="dropdown-menu bg-primary">
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/login">Abrir sesion</a>
            <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/logout">Cerrar sesion</a>
        </div>
    </li>

    <li class="nav-item bg-primary">
        <a class="nav-link Inicio text-white" href="${pageContext.request.contextPath}/usuario/crear">Registrarse</a>
    </li>

    <li class="nav-item dropdown ">
        <a class="nav-link dropdown-toggle text-white bg-primary"
           data-toggle="dropdown"
           href="#"
           role="button"
           aria-haspopup="true"
           aria-expanded="false"
        >Tipos de Web</a
        >
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
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-white bg-primary"
           data-toggle="dropdown"
           href="#"
           role="button"
           aria-haspopup="true"
           aria-expanded="false">Registros</a>
        <div class="dropdown-menu bg-primary">
            <sec:autorize access="hasAnyAuthority('ADMIN')">
                <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/usuario/listar">Lista
                    usuarios</a>
            </sec:autorize>
            <sec:autorize access="hasAnyAuthority('ADMIN')">
                <a class="dropdown-item text-white" href="${pageContext.request.contextPath}/formulario/listar">Lista
                    consultas /comentarios</a>
            </sec:autorize>
        </div>
    </li>
    <li class="nav-item bg-primary">
        <sec:autorize access="hasAnyAuthority('ADMIN','USUARIO')">
            <a class="nav-link text-white" href="${pageContext.request.contextPath}/galeria">Galeria</a>
        </sec:autorize>
    </li>
    <li class="nav-item bg-primary">
        <a class="nav-link text-white" href="${pageContext.request.contextPath}/formulario/crear">Contacto</a>
    </li>
    <li class="nav-item bg-primary">
        <a class="nav-link text-white" href="https://www.tres.pe/blog/beneficios-tienda-virtual/" target="_blank">Articulos
            de Interes</a>
    </li>
</ul>

