import java.util.ArrayList;

public class EstudianteDao {
	private ArrayList<Estudiante> list;

	public EstudianteDao() {
		list = new ArrayList<>();
	}


	public void crear(String nombreEstudiante, String colegio, String homologado, String carreraCosto, int estrato,
			String edad) {
		list.add(new Estudiante(nombreEstudiante, colegio, homologado, carreraCosto, estrato, edad));
		
	}
	

	public String listar() {
		StringBuilder sb = new StringBuilder("");
		for (Estudiante persona : list) {
			sb.append(persona.toString());
			
		}
		return sb.toString();
	}

	

	
	public ArrayList<Estudiante> getList() {
		return list;
	}

	
	public void setList(ArrayList<Estudiante> list) {
		this.list = list;
	}
}
