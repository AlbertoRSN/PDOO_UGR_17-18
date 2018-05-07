
package modeloqytetet;

/**
 *
 * @author albertorodriguez
 */
public class TituloPropiedad {
    
    private String nombre;
    private boolean hipotecada=false;
    private int alquilerBase;
    private float factorRevalorizacion;
    private int hipotecaBase;
    private int precioEdificar;
    
    //Atributo de la clase CASILLA
    private Casilla casilla;
    
    //Atributo de la clase JUGADOR
    private Jugador propietario;
    
    
    //-----------CONSTRUCTOR POR PARAMETROS------------
    //PROPIETARIO AL CREARLO ES NULO
    public TituloPropiedad(String nombre, int alquilerBase, float factorRevalorizacion, int hipotecaBase, int precioEdificar ){
        this.nombre=nombre;
        this.alquilerBase=alquilerBase;
        this.factorRevalorizacion=factorRevalorizacion;
        this.hipotecaBase=hipotecaBase;
        this.precioEdificar=precioEdificar;   
    }
    
    //  CONSTRUCTOR PARA VER SI TIENE PROPIETARIO
    public TituloPropiedad(String nombre, int alquilerBase, float factorRevalorizacion, int hipotecaBase, int precioEdificar, Jugador propiertario, Casilla casilla ){
        this.nombre=nombre;
        this.alquilerBase=alquilerBase;
        this.factorRevalorizacion=factorRevalorizacion;
        this.hipotecaBase=hipotecaBase;
        this.precioEdificar=precioEdificar;
        this.propietario = propietario;
        this.casilla = casilla;
    }

     
    // ---------------METODOS GETS - SETS----------------
    //VISIBILIDAD CAMBIADA A PACKAGE EN LA P2 EN LOS METODOS GET
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    boolean getHipotecada() {
        return hipotecada;
    }

    public void setHipotecada(boolean hipotecada) {
        this.hipotecada = hipotecada;
    }

    int getAlquilerBase() {
        return alquilerBase;
    }
    
    public void setAlquilerBase(int alquilerBase) {
        this.alquilerBase = alquilerBase;
    }

    float getFactorRevalorizacion() {
        return factorRevalorizacion;
    }

    public void setFactorRevalorizacion(float factorRevalorizacion) {
        this.factorRevalorizacion = factorRevalorizacion;
    }

    int getHipotecaBase() {
        return hipotecaBase;
    }

    public void setHipotecaBase(int hipotecaBase) {
        this.hipotecaBase = hipotecaBase;
    }

    int getPrecioEdificar() {
        return precioEdificar;
    }

    public void setPrecioEdificar(int precioEdificar) {
        this.precioEdificar = precioEdificar;
    }
    
    //METODOS NUEVOS P2
    Jugador getPropietario(){
        return propietario;
    }
    
    void setPropietario(Jugador propietario){
        this.propietario = propietario;
    }
    
    Casilla getCasilla(){
        return casilla;
    }
    
    void setCasilla(Casilla casilla){
        this.casilla = casilla;
    }
    
    void cobrarAlquiler(int costeAlquiler){
        propietario.modificarSaldo(costeAlquiler);
    }
    
    boolean propietarioEncarcelado(){
        return propietario.getEncarcelado();
    }
    
    boolean tengoPropietario(){
        return (propietario != null);
    }
    
    
    @Override
    public String toString() {
//        if(tengoPropietario() == true)
            return "{" + "Nombre: " + nombre + ", Hipotecada: " + hipotecada + ", Alquiler Base: " + alquilerBase + ", Factor Revalorizacion=" + factorRevalorizacion + ", Hipoteca Base: " + hipotecaBase + ", Precio Edificar: " + precioEdificar + '}'; //"Propietario: " + propietario.toString() + "Casilla: " + casilla.toString() +'}';
       // else
         //   return "{" + "nombre=" + nombre + ", hipotecada=" + hipotecada + ", alquilerBase=" + alquilerBase + ", factorRevalorizacion=" + factorRevalorizacion + ", hipotecaBase=" + hipotecaBase + ", precioEdificar=" + precioEdificar + '}';
   
    }
    
    
    
    
}
