
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
    private ArrayList<TituloPropiedad> propiedades = null; //new ArrayList();
    
    //Atributos propios 
    private boolean encarcelado = false;
    private String nombre;
    private int saldo = 7500;
    
    //--------------------------------------------------------------------------------------
    //-----------------------------------CONSTRUCTORES--------------------------------------
    
    //Se hace el constructor sin parametros privado para que no se pueda crear un jugador vacio
    
    public Jugador(String nombre){
        this.nombre = nombre;
        this.encarcelado = false;
        this.saldo = 7500;
        this.propiedades = null;
        this.cartaLibertad = null;
        this.casillaActual = new Casilla(0, 0, TipoCasilla.SALIDA);
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
//        boolean tiene = false;
//        
//        for(TituloPropiedad p: propiedades)
//            if(p.getPropietario() == this)
//               tiene = true;
//        
//        return tiene;
        
        return (propiedades != null);
    }
    
    boolean actualizarPosicion(Casilla casilla){
        boolean tienePropietario;
        int costeAlquiler, coste;
        
        if(casilla.getNumeroCasilla() < casillaActual.getNumeroCasilla()){
            modificarSaldo(Qytetet.SALDO_SALIDA);
        }
        tienePropietario = false;
        setCasillaActual(casilla);
        
        if(casilla.soyEdificable()){
            tienePropietario = casilla.tengoPropietario();
            
            if(tienePropietario){
                this.encarcelado = casilla.propietarioEncarcelado();
                
                if(!(this.encarcelado)){
                    costeAlquiler = casilla.cobrarAlquiler();
                    modificarSaldo(-costeAlquiler);
                }
            }
        }
        else{
            if(casilla.getTipo() == TipoCasilla.IMPUESTO){
                coste = casilla.getCoste();
                modificarSaldo(coste);
            }
        }
        
        return tienePropietario;
    }
    
    boolean comprarTitulo(){
        boolean puedoComprar = false;
        boolean tengoPropietario;
        int costeCompra;
        TituloPropiedad titulo;
        
        if(casillaActual.soyEdificable()){
            tengoPropietario = casillaActual.tengoPropietario();
            if(!tengoPropietario){
                costeCompra = casillaActual.getCoste();
                if(costeCompra<=saldo){
                    titulo = casillaActual.asignarPropietario(this);
                    propiedades.add(titulo);
                    modificarSaldo(-costeCompra);
                    puedoComprar = true;
                }
            }
        }
        
        return puedoComprar;
    }
    
    Sorpresa devolverCartaLibertad(){
        Sorpresa s = cartaLibertad;
        
        if(cartaLibertad!=null){
            cartaLibertad = null;
        }
        else
            cartaLibertad = new Sorpresa("Hola", 0, TipoSorpresa.IRACASILLA);
        return cartaLibertad;
    }
    
    void irACarcel(Casilla casilla){
        setCasillaActual(casilla);
        setEncarcelado(true);
    }
    
    void modificarSaldo(int cantidad){
        if(cantidad > 0)
            saldo+=cantidad;
        else
            saldo -=cantidad;
    }
    
    int obtenerCapital(){
        int capitalTotal = saldo;
        int costeTotal = 0;
        int numCasasyHoteles = cuantasCasasHotelesTengo();
        
        for(TituloPropiedad p: propiedades){
            costeTotal += p.getCasilla().getCoste(); //Coste de la propiedad
            capitalTotal = costeTotal + (numCasasyHoteles * p.getCasilla().getPrecioEdificar());
            if(p.getHipotecada())
                capitalTotal -= p.getHipotecaBase();
        }
        
        return capitalTotal;
    }
    
    ArrayList<TituloPropiedad> obtenerPropiedadesHipotecadas(boolean hipotecada){
        ArrayList<TituloPropiedad> props = new ArrayList(); //o a null
        
        for(TituloPropiedad p: propiedades){
            if(p.getHipotecada() == hipotecada)
                props.add(p);                
        }
        
        return props;
    }
    
    void pagarCobrarPorCasaYHotel(int cantidad){
        int numeroTotal = cuantasCasasHotelesTengo();
        modificarSaldo(cantidad*numeroTotal);
    }
    
    boolean pagarLibertad(int cantidad){
        boolean tengo;
        tengo = tengoSaldo(cantidad);
        
        if(tengo){
            modificarSaldo(cantidad);
        }
        return tengo;
    }
    
    boolean puedoEdificarCasa(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoEdificarHotel(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoHipotecar(Casilla casilla){
        boolean esMia;
        esMia = esDeMiPropiedad(casilla);
        return esMia;
    }
    
    boolean puedoPagarHipoteca(Casilla casilla){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean puedoVenderPropiedad(Casilla casilla){
        boolean puedoVender = false;
        boolean esMia = esDeMiPropiedad(casilla);
        boolean hipotecada = casilla.estaHipotecada();
        
        if(esMia && !hipotecada)
            puedoVender = true;
  
        return puedoVender;
    }
    
    boolean tengoCartaLibertad(){
        boolean tengoLibertad = false;
        
        if(cartaLibertad != null)
            tengoLibertad = true;
        
        return tengoLibertad;
    }
    
    void venderPropiedad(Casilla casilla){
        int precioVenta = casilla.venderTitulo();
        modificarSaldo(precioVenta);
        eliminarDeMisPropiedades(casilla);
    }
    
    //DEVUELVE EL TOTAL DE CASAS Y HOTELES DE TODAS LA PROPIEDADES DEL JUGADOR.
    private int cuantasCasasHotelesTengo(){
        int total=0;
        
        for (TituloPropiedad p: propiedades){
           total += p.getCasilla().getNumCasas();
           total += p.getCasilla().getNumHoteles();
        }
        
        return total;
    }
    
    private void eliminarDeMisPropiedades(Casilla casilla){
        for(TituloPropiedad p: propiedades)
            if(p.getCasilla() == casilla)
                propiedades.remove(propiedades.indexOf(p.getCasilla()));
    }
    
    private boolean esDeMiPropiedad(Casilla casilla){
        boolean esPropiedad = false;
        
        for(TituloPropiedad p: propiedades)
            if(p.getCasilla().getTituloPropiedad() == casilla.getTituloPropiedad())
                esPropiedad = true;
        
        return esPropiedad;
    }
    
    private boolean tengoSaldo(int cantidad){
        return (saldo >= cantidad);
    }
    
    
    //----------------------------------------------------------------------
    //-----------------------------TO_STRING--------------------------------
    
    @Override
    public String toString(){
        return "\nJUGADOR:{ " + "\n   Nombre: " + nombre + 
                "\n   Saldo: " + Integer.toString(saldo) + 
                "\n   Encarcelado: " + encarcelado +
                "\n   Casilla Actual: " + casillaActual.toString() + 
                "\n   Carta Libertad: " + cartaLibertad +
                "\n   Propiedades: " + propiedades + "\n}";
        
        //AÑADIR A UN STRING LO QUE QUIERO IMPRIMIR
    }
    
    
}
