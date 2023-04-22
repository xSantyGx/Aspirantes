import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;

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
		resp.setContentType("text/html");
		PrintWriter salida = resp.getWriter();
		salida.println("<html>");
		salida.println("<head>");
		
		salida.println("<tittle>");
		salida.println("Informacion pasaportes comprados");
		salida.println("</tittle>");
		
		salida.println("</head>");
		
		salida.println("<body>");
		salida.println("<h1>");
		salida.println("Aqui puede ver la informacion de todos los pasaportes que se han comprado");
		salida.println("</h1>");
		salida.println(dao.listar());
		
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
		
		salida.println("<tittle>");
		salida.println("SOLICITUD ENVIADA");
		salida.println("</tittle>");
		
		salida.println("</head>");
		
		salida.println("<body>");
		salida.println("<h1>");
		salida.println("Solicitud Enviada");
		salida.println("</h1>");
		
		
		salida.println("</body>");
		
		salida.println("</html>");
		salida.close();
		
	}
	

	
}
