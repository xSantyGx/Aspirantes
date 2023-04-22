package co.edu.unbosque.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;

import co.edu.unbosque.model.EstudianteDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Servlet extends HttpServlet{
	private static final long serialVersionUID = -5802602850246755717L;
	private EstudianteDao dao;
	
	
	public Servlet() {
		dao=new EstudianteDao();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String listadocarrera = req.getParameter("listacarrera");
		resp.setContentType("text/html");
		PrintWriter salida = resp.getWriter();
		salida.println("<html>");
		salida.println("<head>");
		salida.println("<link rel=\"stylesheet\" href=\"./bonito.css\">");
//		salida.println("<tittle>");
//		salida.println("Informacion estudiantes");
//		salida.println("</tittle>");
		
		salida.println("</head>");
		
		salida.println("<body>");
		
		
		
//		if(listadocarrera.equals("nada")) {
//			salida.println("<h1>");
//			salida.println("No selecciono ninguna carrera, seleccione una para mostrate el listado de los estudiantes. ");
//			salida.println("</h1>");
//			salida.println("<br><br>");
//			salida.println("<a href=\"./listaCarreras.jsp\" class=\"btn-flotante\">Volver</a>");
//		}else {
//			salida.println("<h1>");
//			salida.println("Aqui puede ver la informacion de todos los estudiantes que han enviado la solicitud de la carrera de "+listadocarrera);
//			salida.println("</h1>");
//			salida.println(dao.listarCarrera(listadocarrera));
			
			if((listadocarrera.equals("nada"))) {
				salida.println("<h1>");
				salida.println("Aqui puede ver la informacion de todos los estudiantes que han enviado la solicitud");
				salida.println("</h1>");
				salida.println(dao.listar());
			} else{
				salida.println("<h1>");
				salida.println("Aqui puede ver la informacion de todos los estudiantes que han enviado la solicitud de la carrera de "+listadocarrera);
				salida.println("</h1>");
				salida.println(dao.listarCarrera(listadocarrera));
				
			}
			
			salida.println("<br><br>");
			salida.println("<a href=\"./admin.jsp\" class=\"btn-flotante\">Volver</a>");
		
		
		
		salida.println("</body>");	
		
		salida.println("</html>");
		salida.close();
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		String nombre = req.getParameter("nombre");
		String colegio = req.getParameter("colegio");
		String homologado = req.getParameter("homologado");
		String carrera= req.getParameter("carrera");
		int estrato = Integer.parseInt(req.getParameter("estrato"));
		LocalDate fechaNacimiento = LocalDate.parse(req.getParameter("fecha"));
		
		Period edad = Period.between(fechaNacimiento, LocalDate.now());
		String Edad = "anos: "+edad.getYears()+" , meses: "+edad.getMonths()+" , dias: "+edad.getDays();

		dao.crear(nombre, colegio, homologado, carrera, estrato, Edad);
		PrintWriter salida = resp.getWriter();
		salida.println("<html>");
		salida.println("<head>");
		salida.println("<link rel=\"stylesheet\" href=\"./style.css\">");
		
		salida.println("<tittle>");
		salida.println("");
		salida.println("</tittle>");
		
		salida.println("</head>");
		
		salida.println("<body>");
		salida.println("<h1>");
		salida.println("Solicitud Enviada");
		salida.println("</h1>");
		salida.println("<a href=\"./index.jsp\" class=\"btn-flotante\">Volver</a>");
		
		salida.println("</body>");
		
		salida.println("</html>");
		salida.close();
		
	}
	

	
}
