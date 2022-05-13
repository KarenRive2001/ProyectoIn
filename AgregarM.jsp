<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Farma Mundo/Administrativo/Agregar</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="estilos.css" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/e0cfcdd2b0.js" crossorigin="anonymous"></script>
</head>



<body>
<center><img src="Imagenes/TituloS.png"></center>
<div class="container mt-5">
<div class="row">
<form action="Agregar.jsp" method="post">
<%-- --%>
<div class="mb-3">
<label for="Codigo" class="form-label">Codigo</label>
<input type="text" class="form-control" id="Codigo" required="required">
</div>
<%-- --%>
<div class="mb-3">
<label for="Nombre" class="form-label">Nombre</label>
<input type="text" class="form-control" id="Nombre" aria-describedby="emailHelp">
</div>
<%-- --%>
<div class="mb-3">
<label for="Cantidad" class="form-label">Cantidad</label>
<input type="text" class="form-control" id="Cantidad" aria-describedby="emailHelp">
</div>
<%-- <select class="form-select" aria-label="Default select example">
<option selected>Selecciona</option>
<option value="1">Tableta</option>
<option value="2">Jarabe</option>
<option value="3">Solución</option>
<option value="4">Crema</option>



</select>--%><div class="mb-3">
<label for="Tipo" class="form-label">Tipo</label>
<input type="text" class="form-control" id="Tipo" aria-describedby="emailHelp">
</div>



<%-- --%>
<div class="mb-3">
<label for="Peso" class="form-label">Peso</label>
<input type="" class="form-control" id="Peso" >
</div>




<button type="submit" name="guardar" class="btn btn-primary">Guardar <i class="far fa-save"></i></button>
</form>



</div>
</div>

<%
if(request.getParameter("guardar")!=null){
String codigo=request.getParameter("Codigo");// Nio lo realiza porque todos son String y hay enteros tambien
String nombre=request.getParameter("Nombre");
String cantidad=request.getParameter("Cantidad");
String tipo=request.getParameter("Tipo");
String peso=request.getParameter("Peso");

Connection conexion = null;
Statement st = null;
try {
Class.forName("com.mysql.jdbc.Driver");
conexion = DriverManager.getConnection("jdbc:mysql://localhost/farmacia?user=root");
st = conexion.createStatement();
st.executeUpdate("INSERT INTO medicamentos(Codigo_medicamento, nombre_medicamento, cantidad, tipo, peso)VALUES ('"+codigo+"','"+nombre+"','"+cantidad+"','"+tipo+"','"+codigo+"');");
request.getRequestDispatcher("Administrativo.jsp").forward(request, response);


} catch (Exception e) {
out.print("Error MySQL"+ e);
}

}
%>
</body>
<style>
body{
background-color:#cbd5f4;
}
form{
width: 420px;
margin:auto;
background: rgba(0,0,0,0,2);
padding:10px 20px;
box-sizing: borderbox;
margin-top: 20px;
border-radius: 7px
}
h2{
color: #fff;
text-align: center;
margin:0;
font-size: 30px;
margin-bottom: 10px;
}
input,textarea{
width: 100%;
margin-bottom: 20px;
padding: 7%;
box-sizing: border-box;
font-size: 17px;
}
#boton{
background: #1a2537;
color: #fff;
padding: 20px;
}
#boton:hover{
cursor:pointer;
background: cadetblue;
}
@media(min-width:768px){
.form{
margin:auto;
width: 500px;
margin-top: 150px;
border-radius: 2%;
}
}




</style>
</html>