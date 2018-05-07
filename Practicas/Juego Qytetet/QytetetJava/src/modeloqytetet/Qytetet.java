
package modeloqytetet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
        //instance.inicializarTablero();
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
        boolean tienePropietario = false;
        boolean esCarcel;
        Casilla nuevaCasilla;
        Jugador jugador = null;
        
        if(cartaActual.getTipo() == TipoSorpresa.PAGARCOBRAR){
            jugadorActual.modificarSaldo(cartaActual.getValor());
        }
        
        if(cartaActual.getTipo() == TipoSorpresa.IRACASILLA){
            esCarcel = tablero.esCasillaCarcel(cartaActual.getValor());
            
            if(esCarcel){
                encarcelarJugador();
            }
            else{
                nuevaCasilla = tablero.obtenerCasillaNumero(cartaActual.getValor());
                tienePropietario = jugadorActual.actualizarPosicion(nuevaCasilla);
            }  
        }
        
        if(cartaActual.getTipo() == TipoSorpresa.PORCASAHOTEL){
            jugadorActual.pagarCobrarPorCasaYHotel(cartaActual.getValor());
        }
        
        if(cartaActual.getTipo() == TipoSorpresa.PORJUGADOR){
            
            for(Jugador j: jugadores){
                if(j == jugadorActual){
                    j.modificarSaldo(cartaActual.getValor());
                    jugadorActual.modificarSaldo(-cartaActual.getValor());
                }
            }
        }
        
        if(cartaActual.getTipo() != TipoSorpresa.SALIRCARCEL){
            jugadorActual.setCartaLibertad(cartaActual);
        }

        return tienePropietario;
    }
    
    public boolean cancelarHipoteca(Casilla casilla){
        boolean puedoCancelar = false;
        
        if(jugadorActual.getSaldo() > casilla.cancelarHipoteca()){
            puedoCancelar = true;
            jugadorActual.modificarSaldo(-casilla.cancelarHipoteca());
            casilla.getTituloPropiedad().setHipotecada(false);
        }
        
        return puedoCancelar;
    }
    
    public boolean comprarTituloPropiedad(){
        boolean puedoComprar = false;
        puedoComprar = jugadorActual.comprarTitulo();
        return puedoComprar;
    }
 
    public boolean edificarCasa(Casilla casilla){
        boolean sePuedeEdificar;
        boolean puedoEdificar = false;
        boolean puedoEdificarCasa;
        int costeEdificarCasa;
        
        if(casilla.soyEdificable()){
            sePuedeEdificar = casilla.sePuedeEdificarCasa();
            
            if(sePuedeEdificar){
                puedoEdificar = jugadorActual.puedoEdificarCasa(casilla);
            
                if(puedoEdificar){
                    costeEdificarCasa = casilla.edificarCasa();
                    jugadorActual.modificarSaldo(-costeEdificarCasa);
                }
            }
        }
        
        return puedoEdificarCasa = puedoEdificar;
    }
    
    public boolean edificarHotel(Casilla casilla){
        boolean sePuedeEdificar;
        boolean puedoEdificar = false;
        boolean puedoEdificarHotel;
        int costeEdificarHotel;
        
        if(casilla.soyEdificable()){
            sePuedeEdificar = casilla.sePuedeEdificarHotel();
            
            if(sePuedeEdificar){
                puedoEdificar = jugadorActual.puedoEdificarHotel(casilla);
            
                if(puedoEdificar){
                    costeEdificarHotel = casilla.edificarHotel();
                    jugadorActual.modificarSaldo(-costeEdificarHotel);
                }
            }
        }
        
        return puedoEdificarHotel = puedoEdificar;
    }
     
    public boolean hipotecarPropiedad(Casilla casilla){
        boolean puedoHipotecarPropiedad = false;
        boolean sePuedeHipotecar;
        int cantidadRecibida;
        
        if(casilla.soyEdificable()){
            sePuedeHipotecar = (!casilla.estaHipotecada());
            
            if(sePuedeHipotecar){
                puedoHipotecarPropiedad = jugadorActual.puedoHipotecar(casilla);
                
                if(puedoHipotecarPropiedad){
                    cantidadRecibida = casilla.hipotecar();
                    jugadorActual.modificarSaldo(cantidadRecibida);
                }                
            }
        }
        return puedoHipotecarPropiedad;
    }
    
    public void inicializarJuego(ArrayList<String> nombres){ 
        inicializarJugadores(nombres);
        inicializarCartasSorpresa();
        inicializarTablero();
        salidaJugadores();
    }
    
    public boolean intentarSalirCarcel(MetodoSalirCarcel metodo){ 
        boolean libre = false;
        int valorDado;
        boolean tengoSaldo;
        
        if(metodo == MetodoSalirCarcel.TIRANDODADO){
            valorDado = dado.tirar();
            libre = (valorDado > 5);
        }
        else{
            if(metodo == MetodoSalirCarcel.PAGANDOLIBERTAD){
                tengoSaldo = jugadorActual.pagarLibertad(-PRECIO_LIBERTAD);
                libre=tengoSaldo;
            }
        }
        
        if(libre)
            jugadorActual.setEncarcelado(false);
        
        return libre;
    }
    
    public boolean jugar(){
        boolean tienePropietario;
        int valorDado = dado.tirar();
        Casilla casillaPosicion;
        Casilla nuevaCasilla;
        
        casillaPosicion = jugadorActual.getCasillaActual();
        nuevaCasilla = tablero.obtenerNuevaCasilla(casillaPosicion, valorDado);
        tienePropietario = jugadorActual.actualizarPosicion(nuevaCasilla);
        
        if(!nuevaCasilla.soyEdificable()){
            if(nuevaCasilla.getTipo() == TipoCasilla.JUEZ){
                encarcelarJugador();
            }
            else if(nuevaCasilla.getTipo() == TipoCasilla.SORPRESA){
                cartaActual = mazo.remove(0);
            }
        }
        
        return tienePropietario;
    }
    
    public ArrayList obtenerRanking(){ 
        ArrayList<Jugador> ranking = new ArrayList();
        int capital;
        
        for(int i=1; i<jugadores.size(); i++){
            siguienteJugador();
            capital = jugadorActual.obtenerCapital();
            //ranking.add(jugadorActual.getNombre(), capital);
            
        }

        return ranking;
    }
    
    
    public ArrayList propiedadesHipotecadasJugador(boolean hipotecadas){

        ArrayList<TituloPropiedad> propiedades = jugadorActual.obtenerPropiedadesHipotecadas(hipotecadas); //llamar al metodo obtenerPropiedas
        
        ArrayList<Casilla> propiedadesHipotecadas=null;
        
        for (TituloPropiedad t: propiedades) 
            propiedadesHipotecadas.add(t.getCasilla());  
        
        return propiedadesHipotecadas;
    }

    //DEVUELVE EL SIGUIENTE JUGADOR, SI ES EL ULTIMO, DEVUELVE EL PRIMERO.
    public Jugador siguienteJugador(){
               
        if(jugadores.indexOf(jugadorActual) == jugadores.size())
            jugadorActual = jugadores.get(0);
        else
            jugadorActual = jugadores.get(jugadores.indexOf(jugadorActual)+1);
            
        return jugadorActual;
    }
    
    
    
    public boolean venderPropiedad(Casilla casilla){
        boolean puedoVender = false;
        
        if(casilla.soyEdificable()){
            puedoVender = jugadorActual.puedoVenderPropiedad(casilla);
            if(puedoVender){
                jugadorActual.venderPropiedad(casilla);
            }
        }
        return puedoVender;
    }
    
    private void encarcelarJugador(){
       Casilla casillaCarcel;
       Sorpresa carta;
        if(!jugadorActual.tengoCartaLibertad()){
            casillaCarcel = tablero.getCarcel();
            jugadorActual.irACarcel(casillaCarcel);
        }
        else{
            carta = jugadorActual.devolverCartaLibertad();
            mazo.add(carta);
        }
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
        mazo.add(new Sorpresa("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa.SALIRCARCEL));
   
        Collections.shuffle(mazo);
    }
   
    private void inicializarJugadores(ArrayList<String> nombres){ 
        for (String s: nombres)
           jugadores.add(new Jugador(s));     
    }
    
    private void inicializarTablero(){
        new Tablero();
    }
    
    private void salidaJugadores(){
        
        Casilla salida = new Casilla(0, 0, TipoCasilla.SALIDA);
        int saldoInicial = 7500;
        
        for(Jugador j: jugadores){
            j.actualizarPosicion(salida);
            j.modificarSaldo(saldoInicial);
        }
       
        //Asigna de forma aleatoria el jugador que sale
        Collections.shuffle(jugadores);
        jugadorActual = jugadores.get(0);
    }
    
    //------------------------------------------------------------------------------------------------
    
    @Override
    public String toString() {
        //MODIFICAR MAS ADELANTE PARA MOSTRAR TODO EL JUEGO.
         return "{ \n Max Jugadores: " + MAX_JUGADORES + 
                 "\n Max Cartas: " + MAX_CARTAS + 
                 "\n Max. Casillas: " + MAX_CASILLAS + 
                 "\n Precio Libertad: " + PRECIO_LIBERTAD + 
                 "\n Saldo salida: " + SALDO_SALIDA +  
                 "\n Carta Actual: " + cartaActual +
                 "\n Jugador Actual: " + jugadorActual +
                 "\n Jugadores: " + jugadores +
                 "\n Tablero: " + tablero +
                 "\n Mazo: " + mazo +
                 " \n}";
    }
    
    
    
    
}
