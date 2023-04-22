package co.edu.unbosque.model;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import co.edu.unbosque.persistence.FileHandler;

public class EstudianteDao {
	private ArrayList<Estudiante> list;
	private FileHandler archivo;
	private File file = new File("estudiantes.csv");

	public EstudianteDao() {
		list = new ArrayList<>();
		this.archivo = new FileHandler();
	}


	public void crear(String nombreEstudiante, String colegio, String homologado, String carreraCosto, int estrato,
			String edad) {
		list.add(new Estudiante(nombreEstudiante, colegio, homologado, carreraCosto, estrato, edad));
		try {
			this.archivo.escribirDatos(list, file);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public String listar() {
		StringBuilder sb = new StringBuilder("");
		for (Estudiante persona : list) {
			sb.append(persona.toString());
			
		}
		return sb.toString();
	}

	public String listarCarrera(String carrera){
		StringBuilder sb = new StringBuilder("");
		for (int i = 0; i < list.size(); i++) {
			if(carrera.equals(list.get(i).getCarreraCosto())) {
				sb.append(list.get(i).toString());
			}
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
