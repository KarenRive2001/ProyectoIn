%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Farma Mundo/Ingresar</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="estilos.css" >

<script src="https://kit.fontawesome.com/e0cfcdd2b0.js" crossorigin="anonymous"></script>
</head>
<body>

<form class="formulario">
<h1>Iniciar Sesión</h1>
<div class=""contenedor">
<div class="input-contenedor">
<i class="fas fa-id-card"></i>
<input type="text" name="Usuario" placeholder="Numero de Identificación">
</div>
<div class="input-contenedor">
<i class="fas fa-unlock-alt"></i>
<input type="password" name="Contra" placeholder="Contraseña">
</div>
<input type="submit" value="Ingresar" name="Boton" class="button">
</div>
</form>
</body>
<%
if (request.getParameter("Boton")!=null){
String user=request.getParameter ("Usuario");
String password=request.getParameter ("Contra");
HttpSession sesion=request.getSession();
if(user.equals("123456789") && password.equals("123456789")){
sesion.setAttribute("logueado", "1");
sesion.setAttribute("user", user);
response.sendRedirect("Administrativo.jsp");
}
else{
out.print("Datos incorrectos");
}
}
%>
<style>
body{
font-family:cursive,Helvetica,sans-serif;
margin:0;
background:url(Imagenes/FondoFM.jpg);
background-size:cover;
background-attachment: fixed;
}
*{box-sizing: border-box
}
.contenedor{
width: 100%;
padding:15px;
}
.formulario{
background: #ffffff;
margin-top:150px;
padding:5px;
}
h1{
text-align:center;
color: #1a2537;
font-size: 40px
}
input[type="text"],
input[type="password"]{
font-size: 20px;
width: 82%;
padding: 10px;
border: none;
}
.input-contenedor{
margin-bottom: 15px;
border:1px solid #aaa;
}
.icon{
min-width: 50px;
text-align: center;
color: #999;
}
.button{
border: none;
width: 100%;
color: white;
font-size: 20px;
background: #1a2537;
padding: 15px 20px;
border-radius: 5px;
cursor:pointer;
}
.button:hover{
background: cadetblue;
}
@media(min-width:768px){
.formulario{
margin:auto;
width: 500px;
margin-top: 150px;
border-radius: 2%;
}
}


</style>
</html>