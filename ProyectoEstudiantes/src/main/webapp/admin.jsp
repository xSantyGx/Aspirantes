<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./admin.css">
<title>Insert title here</title>
</head>
<body>
<a href="./index.jsp" class="btn-flotante">Volver</a>
    <button class="button">ELIMINAR</button>
    <form action="http://localhost:8080/ProyectoEstudiantes/Servlet"
		method="GET">
		<button class="button">LISTAR ESTUDIANTES</button>
	</form>
    <button class="button">ACTUALIZAR</button>
    <button class="button">LISTAR POR CARRERA</button>
</body>
</html>