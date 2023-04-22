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
							<option value="Biología">Biología</option>
							<option value="Estadística">Estadística</option>
							<option value="Matemáticas">Matemáticas</option>
							<option value="Química Farmacéutica">Química
								Farmacéutica</option>
							<option value="Administración de Empresas">Administración
								de Empresas</option>
							<option value="Negocios Internacionales">Negocios
								Internacionales</option>
							<option value="Contaduría Pública - Modalidad Virtual">Contaduría
								Pública - Modalidad Virtual</option>
							<option value="Finanzas - Modalidad Virtual">Finanzas -
								Modalidad Virtual</option>
							<option
								value="Marketing y Transformación Digital - Modalidad
								Virtual">Marketing
								y Transformación Digital - Modalidad Virtual</option>
							<option value="Economía - Modalidad Virtual">Economía -
								Modalidad Virtual</option>
							<option
								value="Administración de Negocios Sostenibles -
								Modalidad Virtual">Administración
								de Negocios Sostenibles - Modalidad Virtual</option>
							<option
								value="Administración de Producción y Logística
								Internacional - Modalidad Virtual">Administración
								de Producción y Logística Internacional - Modalidad Virtual</option>
							<option value="Ciencia Política y Gobierno">Ciencia
								Política y Gobierno</option>
							<option value="Derecho">Derecho</option>
							<option value="Arquitectura">Arquitectura</option>
							<option value="Arte Dramático">Arte Dramático</option>
							<option value="Artes Plásticas">Artes Plásticas</option>
							<option value="Diseño de Comunicación">Diseño de
								Comunicación</option>
							<option value="Diseño Industrial">Diseño Industrial</option>
							<option value="Formación Musical">Formación Musical</option>
							<option value="Licenciatura en Educación Infantil">Licenciatura
								en Educación Infantil</option>
							<option
								value="Licenciatura en Bilingüismo con Énfasis en la
								Enseñanza del Inglés">Licenciatura
								en Bilingüismo con Énfasis en la Enseñanza del Inglés</option>
							<option value="Enfermería">Enfermería</option>
							<option value="Bioingeniería">Bioingeniería</option>
							<option value="Ingeniería Ambiental">Ingeniería
								Ambiental</option>
							<option value="Ingeniería Electrónica">Ingeniería
								Electrónica</option>
							<option value="Ingeniería Industrial">Ingeniería
								Industrial</option>
							<option value="Ingeniería de Sistemas">Ingeniería de
								Sistemas</option>
							<option value="Instrumentación Quirúrgica">Instrumentación
								Quirúrgica</option>
							<option value="Medicina">Medicina</option>
							<option value="Optometría">Optometría</option>
							<option value="Odontología">Odontología</option>
							<option value="Psicología">Psicología</option>
							<option value="Filosofía">Filosofía</option>
							<option
								value="Intérprete Profesional de la Lengua de Señas
								Colombiana - Modalidad Virtual">Intérprete
								Profesional de la Lengua de Señas Colombiana - Modalidad Virtual</option>

						</select>
					</div>
				</div>
			<button class="button">LISTAR POR CARRERA</button>	
		<button class="button">LISTAR ESTUDIANTES</button>
	</form>
		<a href="./listaCarreras.jsp" class="button">ACTUALIZAR</a>
		
</body>
</html>