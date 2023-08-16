<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/menu.css">
    <title>Menu</title>
</head>
<body> 
<h1><%=new String("Elije Una Opcion :3").toUpperCase() %></h1>
<div class="container">

<!--!Vegetta-->     
    <div class="card">
        <div class="personaje">

            <div class="imagen_personaje"></div>
                <div class="detalle">
                    <h2>Registrar</h2>
                    <p>En Este Apartado Se Mostrara Un Formulario Para El Registro De Un Usuario</p>
                    <div class="btn"><a href="controler?enviar=register">Register</a></div>
                </div>
        </div>
    </div>

<!--!Goku-->
    <div class="card">

        <div class="personaje_2">

            <div class="imagen_personaje_2"></div>
                <div class="detalle_2">
                    <h2>Consult</h2>
                    <p>En El Apartado De Consultar Se Podra Ver Los Usuarios Registrados Ademas Se Podra Actualizar Y Elimianr</p>
                    <div class="btn"><a href="controler?enviar=consultar">Consult</a></div>
                </div>
        </div>
    </div>

    

</div>


    <a href="controler?enviar=update">Update</a>
    

</body>
</html>
