
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
    private Casilla(){}
    
   //Constructor para casillas que no son de tipo calle
    public Casilla(int numeroCasilla, int coste, TipoCasilla tipo){
        this.numeroCasilla=numeroCasilla;
        this.coste=coste;
        this.tipo=tipo;
    }

    //CONSTRUCTOR PARA CASILLAS DE TIPO CALLE
    public Casilla(int numeroCasilla, int coste, TipoCasilla tipo, TituloPropiedad titulo) {
        this.numeroCasilla = numeroCasilla;
        this.coste = coste;
        this.numHoteles = 0;
        this.numCasas = 0;
        this.tipo = tipo;
        this.titulo = titulo;
    } 
    //---------------------------------------------------------------------------------------
  
    //----------------------------CONSULTORES/MODIFICADORES---------------------------------
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

    public TituloPropiedad getTituloPropiedad() {
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
        titulo.setPropietario(jugador);
        return titulo;
    }
    
    int calcularValorHipoteca(){
        int cantidad;
        int hipotecaBase = titulo.getHipotecaBase();
        cantidad = hipotecaBase + (int)(numCasas*0.5*hipotecaBase + numHoteles*hipotecaBase);
        return cantidad;
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
        boolean hipotecada;
        hipotecada = this.titulo.getHipotecada();
        return hipotecada;
    }
    
    int getCosteHipoteca(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int getPrecioEdificar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    int hipotecar(){
        int cantidadRecibida;
        titulo.setHipotecada(true);
        cantidadRecibida = calcularValorHipoteca();
        return cantidadRecibida;
    }
    
    int precioTotalComprar(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean propietarioEncarcelado(){
       return titulo.propietarioEncarcelado();
    }
    
    boolean sePuedeEdificarCasa(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean sePuedeEdificarHotel(){
        throw new UnsupportedOperationException("Sin Implementar");
    }
    
    boolean soyEdificable(){
        boolean edificable=false;
        if(this.tipo == TipoCasilla.CALLE)
            edificable=true;
        return edificable;
    }
    
    boolean tengoPropietario(){
        return titulo.tengoPropietario();
    }
    
    int venderTitulo(){
        int precioVenta, precioCompra;
        titulo.setPropietario(null);
        setNumCasas(0);
        setNumHoteles(0);
        
        precioCompra = coste + (numCasas + numHoteles)*titulo.getPrecioEdificar();
        precioVenta = precioCompra + (int)titulo.getFactorRevalorizacion()*precioCompra;
        
        return precioVenta;
    }
    
    private void asignarTituloPropiedad(){
        throw new UnsupportedOperationException("Sin Implementar");
    }


    //--------------------------------TOSTRING---------------------------------------
    @Override
    public String toString() {
        if(tipo==TipoCasilla.CALLE)
            return "\n\tCasilla{" + "numeroCasilla=" + numeroCasilla + ", coste=" + coste + ", numHoteles=" + numHoteles + ", numCasas=" + numCasas + ", tipo=" + tipo + ", titulo=" + titulo + '}';
        else
            return "\n\tCasilla{" + "numeroCasilla=" + numeroCasilla + ", tipo=" + tipo + '}';
    }
    
    
    
}

