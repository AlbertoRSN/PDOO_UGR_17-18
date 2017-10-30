
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
    private TituloPropiedad(){}
    
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
    String getNombre() {
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
    
    void cobrarAlquiler(int coste){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean propietarioEncarcelado(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    boolean tengoPropietario(){
        throw new UnsupportedOperationException("Sin Implementar"); 
    }
    
    
    // --------------- ---------------- ----------------
    
    
//    
//    
//    TituloPropiedad titulo1 = new TituloPropiedad("Abrazamozas", 50, 10, 150, 250);
//    TituloPropiedad titulo2 = new TituloPropiedad("Catahuevos", 50, 10, 200, 275);
//    TituloPropiedad titulo3 = new TituloPropiedad("Las Flores", 55, 12, 250, 300);
//    TituloPropiedad titulo4 = new TituloPropiedad("Animales Salvajes", 60, 12, 300, 350);
//    TituloPropiedad titulo5 = new TituloPropiedad("Rompelanzas", 65, 13, 350, 400 );
//    TituloPropiedad titulo6 = new TituloPropiedad("Frutos Del Bosque", 70, 14, 400, 450);
//    TituloPropiedad titulo7 = new TituloPropiedad("La Alegria de la Huerta", 75, 15, 500, 500);
//    TituloPropiedad titulo8 = new TituloPropiedad("Malpensá", 80, 15, 600, 550);
//    TituloPropiedad titulo9 = new TituloPropiedad("Del Amor Hermoso", 90, 18, 700, 600);
//    TituloPropiedad titulo10 = new TituloPropiedad("Rio Caliente", 95, 18, 800, 650);
//    TituloPropiedad titulo11 = new TituloPropiedad("Rompete El Alma", 20, 100, 900, 700);
//    TituloPropiedad titulo12 = new TituloPropiedad("Salsipuedes", 100, 20, 1000, 750);
//    

    @Override
    public String toString() {
//        if(tengoPropietario() == true)
            return "{" + "Nombre: " + nombre + ", Hipotecada: " + hipotecada + ", Alquiler Base: " + alquilerBase + ", Factor Revalorizacion=" + factorRevalorizacion + ", Hipoteca Base: " + hipotecaBase + ", Precio Edificar: " + precioEdificar + '}'; //"Propietario: " + propietario.toString() + "Casilla: " + casilla.toString() +'}';
       // else
         //   return "{" + "nombre=" + nombre + ", hipotecada=" + hipotecada + ", alquilerBase=" + alquilerBase + ", factorRevalorizacion=" + factorRevalorizacion + ", hipotecaBase=" + hipotecaBase + ", precioEdificar=" + precioEdificar + '}';
   
    }
    
    
    
    
}
