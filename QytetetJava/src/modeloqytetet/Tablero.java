
package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author Alberto Rodriguez Santana
 */

public class Tablero {
    
    private static ArrayList<Casilla> casillas; //MAX_CASILLAS - debe ser ordenado por numero de casilla
    private Casilla carcel = new Casilla(5, 0, TipoCasilla.CARCEL);

    
    
    //--------------------------------------------------------------------------------
    
    //----------------------------CONSTRUCTORES---------------------------------------  
    public Tablero(){
        this.inicializar();
    }
    
    
    //-----------------------------CONSULTORES----------------------------------------  
    public static ArrayList<Casilla> getCasillas() {
        return casillas;
    }
    
    //-----------------------------METODOS--------------------------------------------
    
    //Modificado p2 -> Antes era public, ahora package
    Casilla getCarcel() {
        return carcel;
    }

    private void inicializar(){
  
        casillas = new ArrayList();
        
        TituloPropiedad titulo1 = new TituloPropiedad("Abrazamozas", 50, 10, 150, 250);
        TituloPropiedad titulo2 = new TituloPropiedad("Catahuevos", 50, 10, 200, 275);
        TituloPropiedad titulo3 = new TituloPropiedad("Las Flores", 55, 12, 250, 300);
        TituloPropiedad titulo4 = new TituloPropiedad("Animales Salvajes", 60, 12, 300, 350);
        TituloPropiedad titulo5 = new TituloPropiedad("Rompelanzas", 65, 13, 350, 400 );
        TituloPropiedad titulo6 = new TituloPropiedad("Frutos Del Bosque", 70, 14, 400, 450);
        TituloPropiedad titulo7 = new TituloPropiedad("La Alegria de la Huerta", 75, 15, 500, 500);
        TituloPropiedad titulo8 = new TituloPropiedad("Malpensá", 80, 15, 600, 550);
        TituloPropiedad titulo9 = new TituloPropiedad("Del Amor Hermoso", 90, 18, 700, 600);
        TituloPropiedad titulo10 = new TituloPropiedad("Rio Caliente", 95, 18, 800, 650);
        TituloPropiedad titulo11 = new TituloPropiedad("Rompete El Alma", 20, 100, 900, 700);
        TituloPropiedad titulo12 = new TituloPropiedad("Salsipuedes", 100, 20, 1000, 750);
        
        casillas.add(new Casilla(0, 0, TipoCasilla.SALIDA));
        casillas.add(new Casilla(1, 10, TipoCasilla.CALLE, titulo1));
        casillas.add(new Casilla(2, 15, TipoCasilla.CALLE, titulo2));
        casillas.add(new Casilla(3, 0, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(4, 20, TipoCasilla.CALLE, titulo3));
        casillas.add(carcel);
        casillas.add(new Casilla(6, 30, TipoCasilla.CALLE, titulo4));
        casillas.add(new Casilla(7, 40, TipoCasilla.CALLE, titulo5));
        casillas.add(new Casilla(8, 100, TipoCasilla.IMPUESTO));
        casillas.add(new Casilla(9, 59, TipoCasilla.CALLE, titulo6));
        casillas.add(new Casilla(10, 0, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(11, 60, TipoCasilla.CALLE, titulo7));
        casillas.add(new Casilla(12, 0, TipoCasilla.PARKING));
        casillas.add(new Casilla(13, 80, TipoCasilla.CALLE, titulo8));
        casillas.add(new Casilla(14, 90, TipoCasilla.CALLE, titulo9));
        casillas.add(new Casilla(15, 0, TipoCasilla.JUEZ));
        casillas.add(new Casilla(16, 120, TipoCasilla.CALLE, titulo10));
        casillas.add(new Casilla(17, 0, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(18, 130, TipoCasilla.CALLE, titulo11));
        casillas.add(new Casilla(19, 200, TipoCasilla.CALLE, titulo12));
        
        
                
    }
    
    
       
    //METODOS NUEVOS AÑADIDOS PRACTICA 2
    boolean esCasillaCarcel(int numeroCasilla){
        boolean esCarcel = false;
        
        if(numeroCasilla == carcel.getNumeroCasilla())
            esCarcel=true;
        
        return esCarcel;
    }
    
    Casilla obtenerCasillaNumero(int numeroCasilla){
        Casilla casilla = null;
        
        casilla = casillas.get(numeroCasilla);
        
        return casilla;
    }
    
    Casilla obtenerNuevaCasilla(Casilla casilla, int desplazamiento){

        int numCasilla = (casilla.getNumeroCasilla()+desplazamiento)%casillas.size();
        
        return casillas.get(numCasilla);
    }
      
    
    
    //-------------------------TOSTRING---------------------------------- 
    @Override
    public String toString() {
        return "\n- TABLERO - " + casillas.toString() + "\n - TABLERO -";
    }
    
}
