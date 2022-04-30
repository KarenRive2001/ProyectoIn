<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
<title>Farma Mundo/Consulta</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/e0cfcdd2b0.js" crossorigin="anonymous"></script>

 </head>

 <body>
<%
Connection conexion = null;
Statement st = null;
ResultSet rs = null;

 %>
<center><img src="Imagenes/TituloS.png"></center>
<a href="index.html">
<center><img src="Imagenes/Inicio.png" ></a></center>
<form action="">
<h2>Cosulta de Medicamentos</h2>
<input type="text " name="Nombre" placeholder="Nombre del medicamento">
<input type="submit" value="Buscar" name="Buscar" class="button">

 </form>

 <div class="container mt-5">
<div class="row">
<table class="table">
<thead>
<tr>
<th scope="col">Codigo</th>
<th scope="col">Nombre</th>
<th scope="col">Cantidad</th>
<th scope="col">Tipo</th>
<th scope="col">Peso</th>
<th ></th>
</tr>
</thead>
<tbody>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
conexion = DriverManager.getConnection("jdbc:mysql://localhost/almacen?user=root");
st = conexion.createStatement();
rs = st.executeQuery("Select * From medicamentos where nombre_medicamento='"+request.getParameter("Nombre")+"';");
while (rs.next()) {

 %>
<tr>
<th><%=rs.getInt(1)%></th>
<td><%=rs.getString(2)%></td>
<td><%=rs.getInt(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getDouble(5)%></td>
<td></td>
</tr>
<%
}
} catch (Exception e) {
out.print("Error MySQL");
}
%>

</tbody>
</table>
</div>
</div>
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
font-size: 15px;
}
.button{
background: #1a2537;
color: #fff;
padding: 10px;
}
.button:hover{
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