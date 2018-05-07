package modeloqytetet;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author albertorodriguez
 */


public class PruebaQytetet {
    
    //ATRIBUTO DE CLASE MAZO DE TIPO ARRAYLIST QUE CONTIENE CARTAS SORPRESAS
    static ArrayList<Sorpresa> mazo = new ArrayList();
     

    //ATRIBUTO DE CLASE DE TIPO TABLERO QUE CONTIENE TABLERO
    static Tablero tablero;//= new Tablero();
    
    public static void main(String[] args) {
        
        //Metemos las cartas en el mazo
        //inicializarSorpresas(); 
        
        Dado dado = Dado.getInstance();
        Qytetet qytetet = Qytetet.getInstance();
        mazo = qytetet.getMazo();
        tablero = qytetet.getTablero();
        
        
        //PARA CREAR JUGADOR CON PARAMETROS (CONSTRUCTOR CREADO PARA PROBAR)
        ArrayList<TituloPropiedad> props = new ArrayList();
        props.add(new TituloPropiedad("Salsipuedes", 100, 20, 1000, 750));
        
        //Jugador jugador = new Jugador("Alberto", 100, false, props, new Sorpresa("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa.PAGARCOBRAR), new Casilla(0, 0, TipoCasilla.SALIDA) );
        
        //ERROR SI CREO EL JUGADOR DE LA SIGUIENTE MANERA:
        Jugador jugador = new Jugador("Alberto");
        
        ArrayList<Jugador> jugadores = qytetet.getJugadores();
        
        
        
        System.out.println("---------------------MUESTRA JUGADOR--------------------------\n");
        System.out.println(jugador);
        System.out.println("\n--------------------------------------------------------------");
        
        System.out.println("\n---------------------MUESTRA MAZO CARTAS----------------------\n");
        //Imprimir por lineas
        for(int i=0; i<mazo.size(); i++){
            System.out.println(mazo.get(i) + "\n");
        }
        System.out.println("\n----------------------------------------------------\n\n");
        //System.out.println((mazo)); IMPRIMIR TODO EN LA MISMA LINEA
       
        //MUESTRA DONDE ESTA LA CARCEL
        System.out.println("------------------CASILLA CARCEL--------------------");
        System.out.println(tablero.getCarcel());
        System.out.println("\n----------------------------------------------------");
        
        
        System.out.println("\n\n------------------MOSTRAR TABLERO--------------------");
        System.out.println(tablero);
        System.out.println("-----------------------------------------------------");
    
        //MOSTRAR OBJETO CLASE QYTETET SINGLETON
        System.out.println("\n\n------------------MOSTRAR QYTETET--------------------");
        //Qytetet q = Qytetet.getInstance();
        System.out.println(qytetet);
        
        
        System.out.println("\n\n------------------TIRAR DADO--------------------");
        int n = dado.tirar();
        System.out.println(n);
        
        
    
    }
    
    //5.2 Metodos
    
    //METODO 1 - Sorpresas que tienen un valor mayor que 0.
    static private ArrayList metodo1(){
        ArrayList<Sorpresa> array = new ArrayList();
        
        for(int i=0; i<10; i++){
            if(mazo.get(i).getValor()>0)
                array.add(mazo.get(i));
        }
        
        return array;
    }
    
    //METODO 2: Sorpresas de TipoSorpresa IRACASILLA
    static private ArrayList metodo2(){
        ArrayList<Sorpresa> array = new ArrayList();
        
        for(int i=0; i<10; i++)
            if(mazo.get(i).getTipo()==TipoSorpresa.IRACASILLA) //Compara si la carta sorpresa es de tipo IRACASILLA
                array.add(mazo.get(i)); //Añade la carta
        
        return array;
    }
    
     //METODO 3: Sorpresas del TipoSorpresa especificado en el argumento del método.
    static private ArrayList metodo3(TipoSorpresa t){
        ArrayList<Sorpresa> array = new ArrayList();
        
        for(int i=0; i<10; i++)
            if(mazo.get(i).getTipo()==t) //Compara si la carta sorpresa es de tipo t (Argumento)
                array.add(mazo.get(i)); //Añade la carta
        
        return array;
    }
    
    //4.B)
    //METODO DE CLASE PRIVADO PARA INICIALIZAR SORPRESAS
//    static private void inicializarSorpresas(){
//        mazo.add(new Sorpresa("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa.PAGARCOBRAR));
//        mazo.add(new Sorpresa("¡Mala Suerte! Dia de impuestos, te toca pagar: ", 50, TipoSorpresa.PAGARCOBRAR));
//        mazo.add(new Sorpresa("¡Mala Suerte! Directo a la carcel", tablero.getCarcel().getNumeroCasilla(), TipoSorpresa.IRACASILLA)); //Casilla 5 CARCEL);
//        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 12, TipoSorpresa.IRACASILLA));
//        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 19, TipoSorpresa.IRACASILLA));
//        mazo.add(new Sorpresa("Hacienda te cobra", 200, TipoSorpresa.PORCASAHOTEL));
//        mazo.add(new Sorpresa("Hacienda te devuelve", 50, TipoSorpresa.PORCASAHOTEL));
//        mazo.add(new Sorpresa("¡Felicidades!, es tu cumpleaños todos los jugadores te pagan ", 50, TipoSorpresa.PORJUGADOR));
//        mazo.add(new Sorpresa("Es tu dia de mala suerte, una apuesta te hace pagar a todos los jugadores", 50, TipoSorpresa.PORJUGADOR));
//        mazo.add(new Sorpresa("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa.PAGARCOBRAR));
//    
//        Collections.shuffle(mazo);
//    }
    
}
