
package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author Alberto Rodriguez Santana
 */
public class Tablero {
    
    private static ArrayList<Casilla> casillas;
    private Casilla carcel = new Casilla(5, TipoCasilla.CARCEL);

    public Tablero(){
        this.inicializar();
    }
    
    public Casilla getCarcel() {
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
        
        //TENEMOS QUE CREAR LAS CARTAS SORPRESAS
        
        casillas.add(new Casilla(0, TipoCasilla.SALIDA));
        casillas.add(new Casilla(1, 10, 2, 2, TipoCasilla.CALLE, titulo1));
        casillas.add(new Casilla(2, 15, 2, 2, TipoCasilla.CALLE, titulo2));
        casillas.add(new Casilla(3, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(4, 20, 3, 1, TipoCasilla.CALLE, titulo3));
        casillas.add(carcel);
        casillas.add(new Casilla(6, 30, 1, 3, TipoCasilla.CALLE, titulo4));
        casillas.add(new Casilla(7, 40, 2, 2, TipoCasilla.CALLE, titulo5));
        casillas.add(new Casilla(8, TipoCasilla.IMPUESTO));
        casillas.add(new Casilla(9, 59, 2, 2, TipoCasilla.CALLE, titulo6));
        casillas.add(new Casilla(10, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(11, 60, 1, 3, TipoCasilla.CALLE, titulo7));
        casillas.add(new Casilla(12, TipoCasilla.PARKING));
        casillas.add(new Casilla(13, 80, 2, 2, TipoCasilla.CALLE, titulo8));
        casillas.add(new Casilla(14, 90, 2, 2, TipoCasilla.CALLE, titulo9));
        casillas.add(new Casilla(15, TipoCasilla.JUEZ));
        casillas.add(new Casilla(16, 120, 2, 2, TipoCasilla.CALLE, titulo10));
        casillas.add(new Casilla(17, TipoCasilla.SORPRESA));
        casillas.add(new Casilla(18, 130, 2, 2, TipoCasilla.CALLE, titulo11));
        casillas.add(new Casilla(19, 200, 2, 2, TipoCasilla.CALLE, titulo12));
        
        
                
    }

    //QUE MOSTRAR EN ESTE TOSTRING
    @Override
    public String toString() {
        return "\n- TABLERO - " + casillas.toString() + "\n - TABLERO -";
    }
    
    
    
}
