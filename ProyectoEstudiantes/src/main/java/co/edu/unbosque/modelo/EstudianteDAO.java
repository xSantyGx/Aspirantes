package co.edu.unbosque.modelo;
import java.util.ArrayList;

public class EstudianteDAO {
	private ArrayList<EstudianteDTO> list;

	public EstudianteDAO() {
		list = new ArrayList<>();
	}


	public void crear(String nombreEstudiante, String colegio, String homologado, String carreraCosto, int estrato,
			String edad) {
		list.add(new EstudianteDTO(nombreEstudiante, colegio, homologado, carreraCosto, estrato, edad));
		
	}
	

	public String listar() {
		StringBuilder sb = new StringBuilder("");
		for (EstudianteDTO persona : list) {
			sb.append(persona.toString());
			
		}
		return sb.toString();
	}

	

	
	public ArrayList<EstudianteDTO> getList() {
		return list;
	}

	
	public void setList(ArrayList<EstudianteDTO> list) {
		this.list = list;
	}
}
