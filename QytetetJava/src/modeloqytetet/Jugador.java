
package modeloqytetet;

import java.util.ArrayList;

/**
 *
 * @author albertorodriguez
 */
class Jugador {
    
   //Atributo de la clase Sorpresa
    private Sorpresa cartaLibertad = null;
    
    //Atributo de la clase Casilla
    private Casilla casillaActual=null;
    
    //Atributo de TituloPropiedad
    private ArrayList<TituloPropiedad> propiedades = new ArrayList();
    
    //Atributos propios 
    private boolean encarcelado = false;
    private String nombre;
    private int saldo = 7500;
    //LOS INICIALIZO AQUI, O EN EL CONSTRUCTOR?
     
    //--------------------------------------------------------------------------------------
    //-----------------------------------CONSTRUCTORES--------------------------------------
    
    //Se hace el constructor sin parametros privado para que no se pueda crear un jugador vacio
    private Jugador(){}
    
    public Jugador(String nombre){
        this.nombre = nombre;
        this.encarcelado = false;
        this.saldo = 7500;
        this.propiedades = null;
        this.cartaLibertad = null;
        this.casillaActual = new Casilla(0, 0, TipoCasilla.SALIDA);
    }
    
    
    //CONSTRUCTOR DE PRUEBA PARA CREAR JUGADOR EN PRUEBA_QYTETET
    public Jugador(String nombre, int saldo, boolean encarcelado, ArrayList<TituloPropiedad> prop, Sorpresa cartaLibertad, Casilla casillaActual){
        this.nombre = nombre;
        this.encarcelado = encarcelado;
        this.saldo = saldo;
        this.propiedades = prop;
        this.cartaLibertad = cartaLibertad;
        this.casillaActual = casillaActual;
    }
    
    
    //--------------------------------------------------------------------------------------
    //-----------------------------MODIFICADORES/CONSULTORES--------------------------------

    public Sorpresa getCartaLibertad() {
        return cartaLibertad;
    }

    public ArrayList<TituloPropiedad> getPropiedades() {
        return propiedades;
    }

    public String getNombre() {
        return nombre;
    }

    public int getSaldo() {
        return saldo;
    }    
    
    public Casilla getCasillaActual() {
        return casillaActual;
    }

    public boolean getEncarcelado() {
        return encarcelado;
    }
    
    
    void setCasillaActual(Casilla casillaActual) {
        this.casillaActual = casillaActual;
    }

    void setEncarcelado(boolean encarcelado) {
        this.encarcelado = encarcelado;
    }
    
    void setCartaLibertad(Sorpresa carta){
        cartaLibertad = carta;
    }
    
    
    //--------------------------------------------------------------------------------------
    //-------------------------------------METODOS------------------------------------------
    
    public boolean tengoPropiedades(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean actualizarPosicion(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean comprarTitulo(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    Sorpresa devolverCartaLibertad(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    void irACarcel(Casilla casilla){
        //casillaActual =  casilla;
    }
    
    void modificarSaldo(int cantidad){
        saldo=cantidad;
    }
    
    int obtenerCapital(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    ArrayList obtenerPropiedadesHipotecadas(boolean hipotecada){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    void pagarCobrarPorCasaYHotel(int cantidad){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean pagarLibertad(int cantidad){
        throw new UnsupportedOperationException("Sin Implementar"); 
        //precioLibertad = cantidad;
    }
    
    boolean puedoEdificarCasa(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoEdificarHotel(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoHipotecar(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoPagarHipoteca(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoVenderPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean tengoCartaLibertad(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    void venderPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    private int cuantasCasasHotelesTengo(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    private void eliminarDeMisPropiedades(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    private boolean esDeMiPropiedad(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    private boolean tengoSaldo(int Cantidad){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    
    //----------------------------------------------------------------------
    //-----------------------------TO_STRING--------------------------------
    
    @Override
    public String toString(){
        return "\nJUGADOR:{ " + "\n   Nombre: " + nombre + 
                "\n   Saldo: " + Integer.toString(saldo) + 
                "\n   Encarcelado: " + encarcelado +
                "\n   Casilla Actual: " + casillaActual.toString() + 
                "\n   Carta Libertad: " + cartaLibertad.toString() +
                "\n   Propiedades: " + propiedades.toString() + '}';
    }
    
    
}
