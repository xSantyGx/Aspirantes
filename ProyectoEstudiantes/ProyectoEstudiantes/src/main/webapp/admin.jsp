<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./admin.css">
<title>Admin</title>
</head>
<body>
	<a href="./index.jsp" class="btn-flotante">Volver</a>
		<a href="./listaCarreras.jsp" class="button">ELIMINAR</a>
	<form action="http://localhost:8080/ProyectoEstudiantes/Servlet"
		method="GET">
		<div class="column">
					<div class="select-box">
						<select name="listacarrera">
							<option value="nada" hidden>Seleccione una Carrera</option>
							<option value="Biolog�a">Biolog�a</option>
							<option value="Estad�stica">Estad�stica</option>
							<option value="Matem�ticas">Matem�ticas</option>
							<option value="Qu�mica Farmac�utica">Qu�mica
								Farmac�utica</option>
							<option value="Administraci�n de Empresas">Administraci�n
								de Empresas</option>
							<option value="Negocios Internacionales">Negocios
								Internacionales</option>
							<option value="Contadur�a P�blica - Modalidad Virtual">Contadur�a
								P�blica - Modalidad Virtual</option>
							<option value="Finanzas - Modalidad Virtual">Finanzas -
								Modalidad Virtual</option>
							<option
								value="Marketing y Transformaci�n Digital - Modalidad
								Virtual">Marketing
								y Transformaci�n Digital - Modalidad Virtual</option>
							<option value="Econom�a - Modalidad Virtual">Econom�a -
								Modalidad Virtual</option>
							<option
								value="Administraci�n de Negocios Sostenibles -
								Modalidad Virtual">Administraci�n
								de Negocios Sostenibles - Modalidad Virtual</option>
							<option
								value="Administraci�n de Producci�n y Log�stica
								Internacional - Modalidad Virtual">Administraci�n
								de Producci�n y Log�stica Internacional - Modalidad Virtual</option>
							<option value="Ciencia Pol�tica y Gobierno">Ciencia
								Pol�tica y Gobierno</option>
							<option value="Derecho">Derecho</option>
							<option value="Arquitectura">Arquitectura</option>
							<option value="Arte Dram�tico">Arte Dram�tico</option>
							<option value="Artes Pl�sticas">Artes Pl�sticas</option>
							<option value="Dise�o de Comunicaci�n">Dise�o de
								Comunicaci�n</option>
							<option value="Dise�o Industrial">Dise�o Industrial</option>
							<option value="Formaci�n Musical">Formaci�n Musical</option>
							<option value="Licenciatura en Educaci�n Infantil">Licenciatura
								en Educaci�n Infantil</option>
							<option
								value="Licenciatura en Biling�ismo con �nfasis en la
								Ense�anza del Ingl�s">Licenciatura
								en Biling�ismo con �nfasis en la Ense�anza del Ingl�s</option>
							<option value="Enfermer�a">Enfermer�a</option>
							<option value="Bioingenier�a">Bioingenier�a</option>
							<option value="Ingenier�a Ambiental">Ingenier�a
								Ambiental</option>
							<option value="Ingenier�a Electr�nica">Ingenier�a
								Electr�nica</option>
							<option value="Ingenier�a Industrial">Ingenier�a
								Industrial</option>
							<option value="Ingenier�a de Sistemas">Ingenier�a de
								Sistemas</option>
							<option value="Instrumentaci�n Quir�rgica">Instrumentaci�n
								Quir�rgica</option>
							<option value="Medicina">Medicina</option>
							<option value="Optometr�a">Optometr�a</option>
							<option value="Odontolog�a">Odontolog�a</option>
							<option value="Psicolog�a">Psicolog�a</option>
							<option value="Filosof�a">Filosof�a</option>
							<option
								value="Int�rprete Profesional de la Lengua de Se�as
								Colombiana - Modalidad Virtual">Int�rprete
								Profesional de la Lengua de Se�as Colombiana - Modalidad Virtual</option>

						</select>
					</div>
				</div>
			<button class="button">LISTAR POR CARRERA</button>	
		<button class="button">LISTAR ESTUDIANTES</button>
	</form>
		<a href="./listaCarreras.jsp" class="button">ACTUALIZAR</a>
		
</body>
</html>