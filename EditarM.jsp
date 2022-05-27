<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String Codigo_medicamento=request.getParameter("Codigo_medicamento");///No funciona por conversion s String a enteros
        String Nombre_medicamento=request.getParameter("Nombre_medicamento");
        String Cantidad=request.getParameter("Cantidad");
        String Tipo=request.getParameter("Tipo");
        String Peso=request.getParameter("Peso");
        
        %>
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
        
        
        Connection conexion = null;
            Statement st = null;
    
            try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/farmacia?user=root");
                        st = conexion.createStatement();
         
                        st.executeUpdate(" update medicamentos set Nombre_medicamento='"+Nombre_medicamento+"', Cantidad='"+Cantidad+"' Tipo='"+Tipo+"', where Codigo_medicamento='"+Codigo_medicamento+"';");
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

=======
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
<%
String Codigo_medicamento=request.getParameter("Codigo_medicamento");///No funciona por conversion s String a enteros
String Nombre_medicamento=request.getParameter("Nombre_medicamento");
String Cantidad=request.getParameter("Cantidad");
String Tipo=request.getParameter("Tipo");
String Peso=request.getParameter("Peso");
%>
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

Connection conexion = null;
Statement st = null;
try {
Class.forName("com.mysql.jdbc.Driver");
conexion = DriverManager.getConnection("jdbc:mysql://localhost/farmacia?user=root");
st = conexion.createStatement();
st.executeUpdate(" update medicamentos set Nombre_medicamento='"+Nombre_medicamento+"', Cantidad='"+Cantidad+"' Tipo='"+Tipo+"', where Codigo_medicamento='"+Codigo_medicamento+"';");
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
>>>>>>> 846c728666ef46f66ed30d7e4e1d709774eea2dd

</style>
</html>