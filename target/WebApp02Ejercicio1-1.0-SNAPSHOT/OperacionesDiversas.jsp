<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.miempresa.funciones.OperacionesDiversas" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Operaciones Diversas</title>
    <link rel="stylesheet" href="webjars/bootstrap/5.3.1/css/bootstrap.min.css" type="text/css" />
</head>
<body>
    <div class="container mt-5">
        <div class="alert alert-primary" role="alert">
            Operaciones Diversas
        </div>
        <div class="alert alert-info" role="alert">
            
            <%
                String numeroo = request.getParameter("numero");
                String operacionn = request.getParameter("operacion");
                out.print("Numero = " + numeroo);
                out.print("<br>");
                out.print("Operacion = " + operacionn);
                out.print("<br>");
                
                OperacionesDiversas operaciones = new OperacionesDiversas();
                double numero = Double.parseDouble(request.getParameter("numero"));
                String operacion = request.getParameter("operacion");
                double resultado = 0;

                switch (operacion) {
                    case "raizCuadrada":
                        resultado = operaciones.calcularRaizCuadrada(numero);
                        break;
                    case "raizCubica":
                        resultado = operaciones.calcularRaizCubica(numero);
                        break;
                    case "potencia":
                        resultado = operaciones.calcularPotencia(numero, 2); // Cambiar el exponente según sea necesario
                        break;
                    case "valorAbsoluto":
                        resultado = Math.abs(numero);
                        break;
                    case "factorial":
                        resultado = operaciones.calcularFactorial((int) numero);
                        break;
                    case "logaritmo":
                        resultado = operaciones.calcularLogaritmo(numero);
                        break;
                    default:
                        out.print("Operación no válida");
                }
                
                out.print("Resultado = " + resultado);
            %>
        </div>
        
        <div class="alert alert-dark" role="alert">
            <a class="btn btn-primary" href="enviarDiv.html" role="button">Volver a enviar datos</a>
        </div>
    </div>
</body>
</html>


