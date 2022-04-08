<html>
    <head>
        <title>Farma Mundo/Administrativo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="estilos.css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/e0cfcdd2b0.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <a href="index.html">
                            <img src="Imagenes/Inicio.png" ></a>
    <center><img src="Imagenes/TituloS.png"></center>
        <%
            Connection conexion = null;
            Statement st = null;
            ResultSet rs = null;

        %>
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
                        
                     <th scope="col" >
                         
                         <a href="  Agregar.jsp"><i class="fas fa-book-medical"></i></a>
                    </th>
                    <th scope="col" >
  
                         <i class="fas fa-trash-alt"></i>
                    </th>
                                           
                    </tr>
                </thead>
                <tbody>
                    <%             
                        try {
                        Class.forName("com.mysql.jdbc.Driver");
                        conexion = DriverManager.getConnection("jdbc:mysql://localhost/almacen?user=root");
                        st = conexion.createStatement();
                        rs = st.executeQuery("Select Codigo_medicamento,Nombre_medicamento,Cantidad, Tipo,Peso  From medicamentos");
                        while (rs.next()) {

                %>
                <tr>
                    <th><%=rs.getInt(1)%></th> 
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getInt(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getDouble(5)%></td>
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