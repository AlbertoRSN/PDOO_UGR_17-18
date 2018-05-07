/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package InterfazTextualQytetet;

import modeloqytetet.*;
import java.util.*;
/**
 *
 * @author albertorodriguez
 */
public class ControladorQytetet {

    Qytetet juego = Qytetet.getInstance();
    VistaTextualQytetet vista = new VistaTextualQytetet();
    
    
    public void inicializarJuego(){
    
    }
    
    public void desarrolloJuego(){
    
    }
    
//    private Casilla elegirPropiedad(ArrayList<Casilla> propiedades){
//         Casilla c = null; 
//         return c;
//    }
    
       public Casilla elegirPropiedad(ArrayList<Casilla> propiedades){ 
        //este metodo toma una lista de propiedades y genera una lista de strings, con el numero y nombre de las propiedades
        //luego llama a la vista para que el usuario pueda elegir.
        vista.mostrar("\tCasilla\tTitulo");
        int seleccion;
        ArrayList<String> listaPropiedades= new ArrayList();
        for ( Casilla casilla: propiedades) {
                listaPropiedades.add( "\t"+casilla.getNumeroCasilla()+"\t"+casilla.getTituloPropiedad().getNombre()); 
        }
        seleccion=vista.menuElegirPropiedad(listaPropiedades);  
        return propiedades.get(seleccion);
         }
 

    
        public static void main(String[] args){
            
        }

}