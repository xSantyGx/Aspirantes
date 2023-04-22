package co.edu.unbosque.model;

public class Estudiante {
	private String nombreEstudiante, colegio, homologado, carreraCosto;
	private int estrato;
	private String edad;
	public Estudiante(String nombreEstudiante, String colegio, String homologado, String carreraCosto, int estrato,
			String edad) {
		this.nombreEstudiante = nombreEstudiante;
		this.colegio = colegio;
		this.homologado = homologado;
		this.carreraCosto = carreraCosto;
		this.estrato = estrato;
		this.edad = edad;
	}
	public String getNombreEstudiante() {
		return nombreEstudiante;
	}
	public void setNombreEstudiante(String nombreEstudiante) {
		this.nombreEstudiante = nombreEstudiante;
	}
	public String getColegio() {
		return colegio;
	}
	public void setColegio(String colegio) {
		this.colegio = colegio;
	}
	public String getHomologado() {
		return homologado;
	}
	public void setHomologado(String homologado) {
		this.homologado = homologado;
	}
	public String getCarreraCosto() {
		return carreraCosto;
	}
	public void setCarreraCosto(String carreraCosto) {
		this.carreraCosto = carreraCosto;
	}
	public int getEstrato() {
		return estrato;
	}
	public void setEstrato(int estrato) {
		this.estrato = estrato;
	}
	public String getEdad() {
		return edad;
	}
	public void setEdad(String edad) {
		this.edad = edad;
	}
	@Override
	public String toString() {
		return "Estudiante [nombreEstudiante=" + nombreEstudiante + ", colegio=" + colegio + ", homologado="
				+ homologado + ", carrera=" + carreraCosto + ", estrato=" + estrato + ", edad="
				+ edad + "]"+"<br><br>";
	}
	
}
