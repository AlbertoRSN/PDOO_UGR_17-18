 

package el_club;

import java.util.ArrayList;

 
public class Club {
    private String nombre;
    private String direccion;
    private ArrayList<Ciclista> socios = new ArrayList(); // Colección de objetos de la clase Ciclista
    
    public Club(String nombre, String direccion){
        this.nombre = nombre;
        this.direccion = direccion;
    }
    public String getNombre(){
        return nombre;
    }    
    public String getDireccion(){
        return direccion;
    }
    public void nuevoSocio(Ciclista nuevoSocio){
        socios.add(nuevoSocio);
    }
    public void misSocios(){
        System.out.println("Los socios del club son:");
            for (Ciclista socio : socios) {
               System.out.println ("\t Nombre : " + socio.getNombre());                
            }          
    
    }
}