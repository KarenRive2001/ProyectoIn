<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
       <%
            Connection conexion = null;
            Statement st = null;
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/farmacia?user=root");
                st = conexion.createStatement();
                st.executeUpdate("delete FROM usuarios where Codigo_medicamento='"+request.getParameter("Codigo_medicamento")+"';");
                request.getRequestDispatcher("Administrativo.jsp").forward(request, response); 
            } catch (Exception e) {
                        out.print("Error MySQL"+ e);
                    }
            


        %>
    </body>
</html>
