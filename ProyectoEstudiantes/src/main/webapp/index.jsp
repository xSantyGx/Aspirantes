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
				<label>Colegio Donde Se Gradu�</label> <input type="text" name="colegio"
					placeholder="Ingrese el nombre del colegio donde se gradu�"
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
				<label>�Es Homologado?</label>
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
				
				<button>Enviar</button>
		</form>
	</section>
</body>
</html>