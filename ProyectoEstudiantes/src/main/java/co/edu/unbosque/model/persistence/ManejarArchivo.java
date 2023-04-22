package co.edu.unbosque.model.persistence;

	import java.io.BufferedReader;

	import java.io.File;
	import java.io.FileInputStream;
	import java.io.FileNotFoundException;
	import java.io.FileReader;
	import java.io.InputStream;
	import java.io.ObjectInputStream;
	import java.io.PrintWriter;
	import java.io.UnsupportedEncodingException;
	import java.net.URL;
	import java.util.ArrayList;
import co.edu.unbosque.modelo.EstudianteDTO;
	

	public class ManejarArchivo {
		private PrintWriter enviar;
		private BufferedReader br;
		private File f;
		private FileReader fr;
		
		private ArrayList<EstudianteDTO> listado;
		
		private String RUTA = "src/main/java/co/edu/unbosque/model/persistence/datos.dat";
		
		public ManejarArchivo() {
			this.listado = new ArrayList<>();
			this.f = new File(RUTA);
		}
		public void escribir(ArrayList<EstudianteDTO> lista) {
			try {
				this.enviar = new PrintWriter(f, "UTF-8");
				for(int i = 0;i<lista.size();i++) {
					String a = lista.get(i).getNombreEstudiante()+";"+lista.get(i).getColegio()+";"+lista.get(i).getHomologado()+";"+
							lista.get(i).getCarreraCosto()+";"+lista.get(i).getEstrato()+";"+lista.get(i).getEdad();
					this.enviar.println(a);
				}
				this.enviar.close();
				
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		public ArrayList<EstudianteDTO> leerArchivo() {
			String texto = "";
			String completo = "";
			try {
				this.fr = new FileReader(RUTA);
				this.br = new BufferedReader(fr);
				while((texto = br.readLine())!=null) {
					completo= completo+texto+"%";
				}
				System.out.println(completo);
				String separarEspacios[] = completo.split("%");
				System.out.println(separarEspacios[0]);
				for(int i = 0;i<separarEspacios.length;i++) {
					String agregar[] = separarEspacios[i].split(";");
					EstudianteDTO dto = new EstudianteDTO(agregar[0], agregar[1], agregar[2], agregar[3], Integer.parseInt(agregar[4]),agregar[5]);
					this.listado.add(dto);
				}
			}catch(Exception e ) {
				e.printStackTrace();
			}
			return this.listado;
		}
		public PrintWriter getEnviar() {
			return enviar;
		}
		public void setEnviar(PrintWriter enviar) {
			this.enviar = enviar;
		}
		public ArrayList<EstudianteDTO> getListado() {
			return listado;
		}
		public void setListado(ArrayList<EstudianteDTO> listado) {
			this.listado = listado;
		}
		
	}
