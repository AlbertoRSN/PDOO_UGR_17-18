/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloqytetet;

/**
 *
 * @author albertorodriguez
 */
public class Casilla {
    
    private int numeroCasilla;
    private int coste;
    private int numHoteles;
    private int numCasas;
    private TipoCasilla tipo;
    private TituloPropiedad titulo = null; //inicializado a null porque en la asociacion indica que puede ser 0..1
    
    
    //---------------------------------------------------------------------------------------
    //--------------------------------CONSTRUCTORES---------------------------------------
    //Constructor para casillas que no son de tipo calle
    public Casilla(int numeroCasilla, TipoCasilla tipo){
        this.numeroCasilla=numeroCasilla;
        this.tipo=tipo;
    }
    
    //CONSTRUCTOR PARA LA CASILLA DE TIPO IMPUESTO
    public Casilla(int numeroCasilla, int coste, TipoCasilla tipo){
        this.numeroCasilla=numeroCasilla;
        this.coste=coste;
        this.tipo=tipo;
    }

    public Casilla(int numeroCasilla, int coste, TipoCasilla tipo, TituloPropiedad titulo) {
        this.numeroCasilla = numeroCasilla;
        this.coste = coste;
        this.numHoteles = 0;
        this.numCasas = 0;
        this.tipo = tipo;
        this.titulo = titulo;
    } 
    //---------------------------------------------------------------------------------------
  

    @Override
    public String toString() {
        if(tipo==TipoCasilla.CALLE)
            return "\nCasilla{" + "numeroCasilla=" + numeroCasilla + ", coste=" + coste + ", numHoteles=" + numHoteles + ", numCasas=" + numCasas + ", tipo=" + tipo + ", titulo=" + titulo + '}';
        else
            return "\nCasilla{" + "numeroCasilla=" + numeroCasilla + ", tipo=" + tipo + '}';
    }
    
 
    
    private void setTituloPropiedad(TituloPropiedad titulo){
        this.titulo=titulo;
    }
    
    //modidificada la visibilidad en P2 de public a package
    int getNumeroCasilla() {
        return numeroCasilla;
    }

    //modidificada la visibilidad en P2 de public a package
    int getCoste() {
        return coste;
    }
    
    //modidificada la visibilidad en P2 de public a package
    int getNumHoteles() {
        return numHoteles;
    }

    //modidificada la visibilidad en P2 de public a package
    int getNumCasas() {
        return numCasas;
    }

    public TipoCasilla getTipo() {
        return tipo;
    }

    public TituloPropiedad getTitulo() {
        return titulo;
    }

    //modidificada la visibilidad en P2 de public a package
    void setNumHoteles(int nuevoNumero) {
        numHoteles = nuevoNumero;
    }

    //modidificada la visibilidad en P2 de public a package
    void setNumCasas(int nuevoNumero) {
        numCasas = nuevoNumero;
    }

    //---------------------------------------------------------------------------------------
    //--------------------------------METODOS AÑADIDOS P2------------------------------------
    TituloPropiedad asignarPropietario(Jugador jugador){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int calcularValorHipoteca(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int cancelarHipoteca(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int cobrarAlquiler(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int edificarCasa(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int edificarHotel(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean estaHipotecada(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int getCosteHipoteca(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int getPrecioEdificar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int hipotecar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int precioTotalComprar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean propietarioEncarcelado(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean sePuedeEdificarCasa(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean sePuedeEdificarHotel(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean soyEdificable(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean tengoPropietario(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int venderTitulo(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    private void asignarTituloPropiedad(){
        throw new UnsupportedOperationException("Sin Implementar");
    }


}

