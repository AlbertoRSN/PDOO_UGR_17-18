package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author albertorodriguez
 */


public class PruebaQytetet {
    
    //ATRIBUTO DE CLASE MAZO DE TIPO ARRAYLIST QUE CONTIENE CARTAS SORPRESAS
    static ArrayList<Sorpresa> mazo = new ArrayList();
    
    public static void main(String[] args) {
        
        //Metemos las cartas en el mazo
        inicializarSorpresas();
        
        //Imprimir por lineas
        for(int i=0; i<mazo.size(); i++){
            System.out.println(mazo.get(i) + "\n");
        }
        //System.out.println((mazo)); IMPRIMIR TODO EN LA MISMA LINEA
        
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
    static private void inicializarSorpresas(){
        mazo.add(new Sorpresa("¡Felicidades! Hoy es dia de pago, recibes: ", 100, TipoSorpresa.PAGARCOBRAR));
        mazo.add(new Sorpresa("¡Mala Suerte! Dia de impuestos, te toca pagar: ", 50, TipoSorpresa.PAGARCOBRAR));
        mazo.add(new Sorpresa("¡Mala Suerte! Directo a la carcel", 5, TipoSorpresa.IRACASILLA)); //Casilla 5 CARCEL);
        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 12, TipoSorpresa.IRACASILLA));
        mazo.add(new Sorpresa("El mazo de cartas te manda a la casilla numero ", 19, TipoSorpresa.IRACASILLA));
        mazo.add(new Sorpresa("Hacienda te cobra", 200, TipoSorpresa.PORCASAHOTEL));
        mazo.add(new Sorpresa("Hacienda te devuelve", 50, TipoSorpresa.PORCASAHOTEL));
        mazo.add(new Sorpresa("¡Felicidades!, es tu cumpleaños todos los jugadores te pagan ", 50, TipoSorpresa.PORJUGADOR));
        mazo.add(new Sorpresa("Es tu dia de mala suerte, una apuesta te hace pagar a todos los jugadores", 50, TipoSorpresa.PORJUGADOR));
        mazo.add(new Sorpresa("¡Enhorabuena!, quedas en libertad ", 0, TipoSorpresa.PAGARCOBRAR));
    }

    
    
}
