<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Farma Mundo/Administrativo/EditarU</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/e0cfcdd2b0.js" crossorigin="anonymous"></script>
    </head>

    <body>
          <%
        String Nombre=request.getParameter("Nombre");
        String Apellido=request.getParameter("Apellido");
        String Identificacion=request.getParameter("Identificacion");
        String Contraseña=request.getParameter("Contraseña");
        %>
    <center><img src="Imagenes/TituloS.png"></center>
          
    <div class="container mt-5">
        <div class="row">
            <form action="EditarU.jsp" method="get"> 
                <%-- --%>
                <div class="mb-3">
                    <label for="Nombre" class="form-label">Nombre</label>
                    <input type="text" name=Nombre class="form-control" id="Codigo" value="<%=Nombre%>" required="required">
                </div>
                <%-- --%>
                <div class="mb-3">
                    <label for="Apellido" class="form-label">Apellido</label>
                    <input type="text" name=Apellido class="form-control" id="Nombre" value="<%=Apellido%>" aria-describedby="emailHelp">
                </div>
                <%-- --%>
                <div class="mb-3">
                    <label for="Identificacion" class="form-label">Identificacion</label>
                    <input type="text" name=Identificacion class="form-control" id="Cantidad" value="<%=Identificacion%>" aria-describedby="emailHelp">
                <%--lllllllllllllllllllllllllllll --%>
                </div>
                   <div class="mb-3">
                    <label for="Contraseña" class="form-label">Contraseña</label>
                    <input type="Password" name=Contraseña class="form-control" id="Tipo" aria-describedby="emailHelp">
                </div>
                <a href="Administrativo.jsp" class="btn btn-danger">Cancelar<i class="fa fa-ban" aria-hidden="true"></i></a><%-- --%>
                
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
                        out.print("Aqui queda");
                        st.executeUpdate(" update Usuarios set Nombre='"+Nombre+"', Apellido='"+Apellido+"', Identificacion='"+Identificacion+"' where Contraseña='"+Contraseña+"';");
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