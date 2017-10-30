
package modeloqytetet;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author albertorodriguez
 */
public class Qytetet {
    
    //Singleton
    private static final Qytetet instance = new Qytetet();
    
    public static int MAX_JUGADORES = 4;
    static final int MAX_CARTAS = 10;
    static final int MAX_CASILLAS = 20;
    static final int PRECIO_LIBERTAD = 200;
    static final int SALDO_SALIDA = 1000;
    
    //Atributos de la clase Sorpresa
    private Sorpresa cartaActual=null; 
    private ArrayList<Sorpresa> mazo = new ArrayList();
    
    //Atributo de la clase Tablero
    private Tablero tablero = new Tablero();
    
    //Atributos de la clase Jugador
    private Jugador jugadorActual;
    private ArrayList<Jugador> jugadores = new ArrayList(); 
    
    //Objeto de la clase DADO - Como es singleton solo se puede crear un Objeto.
    Dado dado = Dado.getInstance();
        
    //CONSTRUCTOR PRIVADO PARA ASEGURAR QUE NO SE PUEDE INSTANCIAR
    private Qytetet(){}
    
    public static Qytetet getInstance(){
        instance.inicializarCartasSorpresa();
        instance.inicializarTablero();
        //instance.inicializarJugadores(nombres);
        return instance;
    }
        
    //--------------------------------------------------------------------------------------
    //-----------------------------MODIFICADORES/CONSULTORES--------------------------------

    public static int getMAX_JUGADORES() {
        return MAX_JUGADORES;
    }

    public static int getMAX_CARTAS() {
        return MAX_CARTAS;
    }

    public static int getMAX_CASILLAS() {
        return MAX_CASILLAS;
    }

    public static int getPRECIO_LIBERTAD() {
        return PRECIO_LIBERTAD;
    }

    public static int getSALDO_SALIDA() {
        return SALDO_SALIDA;
    }

    public ArrayList<Sorpresa> getMazo() {
        return mazo;
    }

    public Tablero getTablero() {
        return tablero;
    }

    public ArrayList<Jugador> getJugadores() {
        return jugadores;
    }

    public Dado getDado() {
        return dado;
    }
    
    public Sorpresa getCartaActual(){
        return cartaActual;
    }
    
      
    public Jugador getJugadorActual(){
        return jugadorActual;
    }
    
    
    
    
    //---------------------------------METODOS-------------------------------------
    
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
     
    public boolean hipotecarPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public void inicializarJuego(ArrayList<String> nombres){ 
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean intentarSalirCarcel(MetodoSalirCarcel metodo){ 
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public boolean jugar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    public ArrayList obtenerRanking(){ 
        ArrayList<Jugador> List = new ArrayList();
        
        return List;
    }
    
    public ArrayList propiedadesHipotecadasJugador(boolean hipotecadas){
        //ArrayList<Casilla> casillas = new ArrayList();
        throw new UnsupportedOperationException("Sin Implementar");
        //return casillas;
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
        mazo.add(new Sorpresa("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa.PAGARCOBRAR));
        mazo.add(new Sorpresa("¡Mala Suerte! Dia de impuestos, te toca pagar: ", 50, TipoSorpresa.PAGARCOBRAR));
        mazo.add(new Sorpresa("¡Mala Suerte! Directo a la carcel", tablero.getCarcel().getNumeroCasilla(), TipoSorpresa.IRACASILLA)); //Casilla 5 CARCEL);
        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 12, TipoSorpresa.IRACASILLA));
        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 19, TipoSorpresa.IRACASILLA));
        mazo.add(new Sorpresa("Hacienda te cobra", 200, TipoSorpresa.PORCASAHOTEL));
        mazo.add(new Sorpresa("Hacienda te devuelve", 50, TipoSorpresa.PORCASAHOTEL));
        mazo.add(new Sorpresa("¡Felicidades!, es tu cumpleaños todos los jugadores te pagan ", 50, TipoSorpresa.PORJUGADOR));
        mazo.add(new Sorpresa("Es tu dia de mala suerte, una apuesta te hace pagar a todos los jugadores", 50, TipoSorpresa.PORJUGADOR));
        mazo.add(new Sorpresa("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa.PAGARCOBRAR));
   
        Collections.shuffle(mazo);
    }
   
    private void inicializarJugadores(ArrayList<String> nombres){ 
//       for(int i=0; i<getMAX_JUGADORES(); i++){
//        jugadores.add(new Jugador(nombres.get(i)));
//       }
       int i=0;
       while(nombres.get(i)!=null){
           jugadores.add(new Jugador(nombres.get(i)));
       }
    }
    
    private void inicializarTablero(){
        new Tablero();
    }
    
    private void salidaJugadores(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    //------------------------------------------------------------------------------------------------
    
    @Override
    public String toString() {
        //MODIFICAR MAS ADELANTE PARA MOSTRAR TODO EL JUEGO.
         return "{ \n Max Jugadores: " + MAX_JUGADORES + "\n Max Cartas: " + MAX_CARTAS + "\n Max. Casillas: " + MAX_CASILLAS + "\n Precio Libertad: " + PRECIO_LIBERTAD + "\n Saldo salida: " + SALDO_SALIDA +  " \n}";
    }
    
    
    
    
}
