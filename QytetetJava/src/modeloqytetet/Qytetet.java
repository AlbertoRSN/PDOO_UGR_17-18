
package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author albertorodriguez
 */
public class Qytetet {
    
    //Singleton
    private static final Qytetet instance = new Qytetet();
    
    public static int MAX_JUGADORES = 4;
    private static int MAX_CARTAS = 10;
    private static int MAX_CASILLAS = 20;
    private static int PRECIO_LIBERTAD = 200;
    private static int SALDO_SALIDA = 1000;
    
    //Atributos de la clase Sorpresa
    public Sorpresa cartaActual=null;
    public Sorpresa mazo;
    
    //Atributo de la clase Tablero
    public Tablero t;
    
    //Atributos de la clase Jugador
    public Jugador jugadorActual;
    public ArrayList<Jugador> jugadores = new ArrayList(); //COMO MINIMO 2 JUGADORES ¿Como se indica?
    
    //Objeto de la clase DADO - Como es singleton solo se puede crear un Objeto.
    Dado dado = Dado.getInstance();
    
    
    //CONSTRUCTOR PRIVADO PARA ASEGURAR QUE NO SE PUEDE INSTANCIAR
    private Qytetet(){}
    
    public static Qytetet getInstance(){
        return instance;
    }
    
    
    //------------------------------------------------------------------------------------------------
    
    //METODOS
    
    public boolean aplicarSorpresa(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    public boolean cancelarHipoteca(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    public boolean comprarTituloPropiedad(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean edificarCasa(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean edificarHotel(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public Sorpresa getCartaActual(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public Jugador getJugadorActual(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean hipotecarPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public void inicializarJuego(String [] nombres){ // CUANDO DICE EN TAMAÑO ARRAY 2-MAXJUGADORES, COMO SE INDICA AL PASAR POR PARAMETRO?
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean intentarSalirCarcel(MetodoSalirCarcel metodo){ //SI METODO SALIR CARCEL ES ENUMERADO, COMO PASO METODO?
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean jugar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public ArrayList obtenerRanking(){ //COMO SE DEFINE EL TIPO LIST[2..MAXJUGADORES]
        ArrayList<Jugador> List = new ArrayList();
        
        return List;
    }
    
    public ArrayList propiedadesHipotecadasJugador(boolean hipotecadas){
        ArrayList<Casilla> casillas = new ArrayList();
            
        return casillas;
    }
    
    public Jugador siguienteJugador(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean venderPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void encarcelarJugador(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void inicializarCartasSorpresa(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void inicializarJugadores(String [] nombres){ //A QUE SE REFIERE CON MAX JUGADORES -CONSULTADO ANTERIORMENTE-
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void inicializarTablero(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void salidaJugadores(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    //------------------------------------------------------------------------------------------------
    
    
    
    
    
    
}
