<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cards.css">
    <title>Listado de Usuarios</title>
</head>
<body>
    <h1>Listado de Usuarios</h1>
    <a href="controler?enviar=index">Consult</a>
    
    <%-- Importar la clase UsuarioVo y UsuarioDao --%>
    <%@ page import="model.UsuarioVo" %>
    <%@ page import="model.UsuarioDao" %>

    <%-- Obtener la lista de usuarios desde la base de datos --%>
    <% List<UsuarioVo> usuarios = null;
        try {
            usuarios = new UsuarioDao().listar();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <%-- Verificar si hay usuarios y mostrarlos --%>
    <% if (usuarios != null && !usuarios.isEmpty()) { %>
            <%-- Recorrer la lista de usuarios y mostrar sus detalles --%>
            <div class="card__container">
                <% if (usuarios != null && !usuarios.isEmpty()) { %>
                    <% for (UsuarioVo usuario : usuarios) { %>
                        <div class="card">
                            <div class="card--img">
                                <img src="img/icons8-usuario-100.png" alt="a" width="150px" height="150px">
                            </div>
                            <div class="card--info">
                                <p class="card--subtittle">NOMBRE</p>
                                <p id="user_firstname_<%= usuario.getUser_id() %>" class="cardname"><%= usuario.getUser_firstname() %></id=></p>
                                <p class="card--subtittle">APELLIDO</p>
                                <p id="user_lastname_<%= usuario.getUser_id() %>" class="cardlastname"><%= usuario.getUser_lastname() %></p>
                                <p class="card--subtittle">CORREO</p>
                                <p id="user_email_<%= usuario.getUser_id() %>" class="cardemail"><%= usuario.getUser_email() %></p>
                                <p class="card--subtittle">CONTRASEÑA</p>
                                <p id="user_password_<%= usuario.getUser_id() %>" class="cardpassword"><%= usuario.getUser_password() %></p>
                                <form action="controler" method="post">
                                    <input type="hidden" name="enviar" value="eliminar">
                                    <input type="hidden" name="user_id" value="<%= usuario.getUser_id() %>">
                                    <button type="submit" class="btn-delete">Eliminar</button>
                                </form>
                            <button class="btncal" data-user-id="<%= usuario.getUser_id() %>">Actualizar</button>
                            </div>
                            
                        </div>
                    <% } %>
                <% } else { %>
                    <div class="card">
                        <p>No se encontraron usuarios.</p>
                    </div>
                <% } %>
                <% } %>
            </div>
</body>

<div id="myModal1" class="modal1">
    <div class="modal-content1">
    <span class="close1">X</span>

    <h2>Actualizar Usuario</h2>
    <form action="controler" method="post">

        <label for="user_id"> ID</label>
        <input type="text" name="user_id" id="user_id"  placeholder="Ingrese Su Id">

        <label for="user_firstname"> Nombre </label>
        <input type="text" name="user_firstname" id="user_firstname" placeholder="Ingrese Su Edad">

        <label for="user_lastname"> Apellido</label>
        <input type="text" name="user_lastname" id="user_lastname"  placeholder="Ingrese Su Apellido">

        <label for="user_email"> Correo</label>
        <input type="text" name="user_email" id="user_email"  placeholder="Ingrese Su Correo">

        <label for="user_password"> Contraseña</label>
        <input type="password" name="user_password" id="user_password"  placeholder="Ingrese Su Contraseña">

        <button id="btncal" class="ov-btn-grow-skew" name="enviar" value="update">Enviar</button>

    </form>
    </div>
    </div>
    <script type="text/javascript" src="js/modal.js"></script>
</body>
</html>