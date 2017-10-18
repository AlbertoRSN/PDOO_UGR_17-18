/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author albertorodriguez
 */
public class Tablero {
    
    private static ArrayList<Casilla> casillas = new ArrayList();
    private Casilla carcel;

    public Tablero(){
//         casillas = new ArrayList(20);
//         casillas.add(Casilla)
    }
    
    public Casilla getCarcel() {
        return carcel;
    }

    private void inicializar(){
        
        casillas = new ArrayList();
        
        TituloPropiedad titulo1 = new TituloPropiedad("Abrazamozas", 75, 10, 150, 250);
        TituloPropiedad titulo2 = new TituloPropiedad("Catahuevos", 75, 10, 150, 250);
        TituloPropiedad titulo3 = new TituloPropiedad("Las Flores", 75, 10, 150, 250);
        TituloPropiedad titulo4 = new TituloPropiedad("AnimalesSalvajes", 75, 10, 150, 250);
        TituloPropiedad titulo5 = new TituloPropiedad("Rompelanzas", 75, 10, 150, 250);
        TituloPropiedad titulo6 = new TituloPropiedad("Frutos Del Bosque", 75, 10, 150, 250);
        TituloPropiedad titulo7 = new TituloPropiedad("La Alegria de la Huerta", 75, 10, 150, 250);
        TituloPropiedad titulo8 = new TituloPropiedad("Malpensá", 75, 10, 150, 250);
        TituloPropiedad titulo9 = new TituloPropiedad("Del Amor Hermoso", 75, 10, 150, 250);
        TituloPropiedad titulo10 = new TituloPropiedad("Rio Caliente", 75, 10, 150, 250);
        TituloPropiedad titulo11 = new TituloPropiedad("Rompete El Alma", 75, 10, 150, 250);
        TituloPropiedad titulo12 = new TituloPropiedad("Salsipuedes", 75, 10, 150, 250);
        
        casillas.add(new Casilla(0, TipoCasilla.SALIDA));
        casillas.add(new Casilla(1,10, 2, 2,TipoCasilla.CALLE, titulo1));
        
    }
    
    
    
}
