package co.edu.unbosque.persistence;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;

import co.edu.unbosque.model.Estudiante;

public class FileHandler {
	private FileWriter writer;
	private BufferedWriter bWriter;
	private ArrayList<String> auxList;
	private ArrayList<Estudiante> lista;
	private Scanner sc;

	public FileHandler() {
		this.auxList = new ArrayList<>();
		this.lista = new ArrayList<>();
	}

	public void escribirDatos(ArrayList<Estudiante> lista, File file) throws IOException {
		int prueba = lista.size();
		this.writer = new FileWriter(file, true);
		for (int i = 0; i < lista.size(); i++) {
			this.writer.write(lista.get(i).toString() + "\n");
		}
		this.writer.close();
	}

	public void leerDatos(File file) throws IOException {
		try {
			this.sc = new Scanner(new File("estudiantes.csv"));
			while(this.sc.hasNextLine()) {
				this.auxList.add(this.sc.nextLine());
			}
			this.sc.close();
			for(int i= 0;i<this.auxList.size();i++) {
				String datos = this.auxList.get(i);
				String[] a = datos.split(";");
				this.lista.add(new Estudiante(a[0], a[1], a[2], a[3], Integer.parseInt(a[4]), a[5]));
			}
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("Fallo al leer el archivo");
		}
		
	}

	public ArrayList<Estudiante> getLista() {
		return lista;
	}

	public void setLista(ArrayList<Estudiante> lista) {
		this.lista = lista;
	}
	
}
