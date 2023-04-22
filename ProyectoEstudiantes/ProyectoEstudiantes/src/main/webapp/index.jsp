<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pagina con formularios</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<section class="container">
		<header>Universidad El Bosque</header>
		<a href="./admin.jsp" class="btn-flotante">Admin</a>
		<form class="form" action="http://localhost:8080/ProyectoEstudiantes/Servlet"
		method="POST">
			<div class="input-box">
				<label>Nombre Completo</label> <input type="text" name="nombre"
					placeholder="Entre su nombre completo" required />
			</div>

			<div class="input-box">
				<label>Colegio Donde Se Graduó</label> <input type="text" name="colegio"
					placeholder="Ingrese el nombre del colegio donde se graduó"
					required />
			</div>

			<div class="column">
				<div class="input-box">
					<label>Estrato</label> <input type="number" name="estrato"
						placeholder="Seleccione su estrato" required />
				</div>
				<div class="input-box">
					<label>Fecha De Nacimiento</label> <input type="date" name="fecha"
						placeholder="Enter birth date" required />
				</div>
				<div class="input-box">
            <label>Seleccione una foto suya</label>
            <input accept="image/*" type="file" multiple>
          </div>
			</div>
			
			<div class="input-box address">
				<label>¿Es Homologado?</label>
				<div class="column">
					<div class="select-box">
						<select name="homologado">
							<option hidden>Seleccione una Opcion</option>
							<option value="si">SI</option>
							<option value="no">NO</option>
						</select>
					</div>
				</div>
			<div class="input-box address">
				<label>Carrera Que Desea Ingresar</label>
				<div class="column">
					<div class="select-box">
						<select name="carrera">
							<option hidden>Seleccione una Carrera</option>
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
				
				<button>Enviar</button>
		</form>
	</section>
</body>
</html>