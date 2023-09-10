<%-- 
    Document   : OperacionesBasicas
    Created on : 09/09/2023, 03:24:06 PM
    Author     : Tony
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones Basicas</title>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.3.1/css/bootstrap.min.css" type="text/css" />
    </head>
<body>
    <div class="container mt-5">
        <div class="alert alert-primary" role="alert">
            Operaciones Básicas

        </div>
        <div class="alert alert-info" role="alert">
            <%@ page import="com.miempresa.funciones.OperacionesBasicas" %>
            <%
                OperacionesBasicas operaciones = new OperacionesBasicas();
                int num1 = Integer.parseInt(request.getParameter("num1"));
                int num2 = Integer.parseInt(request.getParameter("num2"));
                int suma = operaciones.suma(num1, num2);
                int resta = operaciones.resta(num1, num2);
                int multiplicacion = operaciones.multiplicacion(num1, num2);
                double division = operaciones.division(num1, num2);
                out.print("Numero 1 = " + num1);
                out.print("<br>");
                out.print("Numero 2 = " + num2);
                out.print("<br>");
                out.print("RESPUESTAS:" +"<br>");
                out.print("Suma = " + suma + "<br>");
                out.print("Resta = " + resta + "<br>");
                out.print("Multiplicación = " + multiplicacion + "<br>");
                out.print("División = " + division);
            %>
        </div>
        
        <div class="alert alert-dark" role="alert">
            <a class="btn btn-primary" href="enviarBas.html" role="button">Volver a enviar datos</a>
        </div>
    </div>
</body>
</html>

