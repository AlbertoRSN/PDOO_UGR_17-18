
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
    
    
    //-----------CONSTRUCTOR POR PARAMETROS------------
    public TituloPropiedad(String nombre, int alquilerBase, float factorRevalorizacion, int hipotecaBase, int precioEdificar ){
        this.nombre=nombre;
        this.alquilerBase=alquilerBase;
        this.factorRevalorizacion=factorRevalorizacion;
        this.hipotecaBase=hipotecaBase;
        this.precioEdificar=precioEdificar;   
    }

     
    // ---------------METODOS GETS - SETS----------------
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public boolean isHipotecada() {
        return hipotecada;
    }

    public void setHipotecada(boolean hipotecada) {
        this.hipotecada = hipotecada;
    }

    public int getAlquilerBase() {
        return alquilerBase;
    }

    public void setAlquilerBase(int alquilerBase) {
        this.alquilerBase = alquilerBase;
    }

    public float getFactorRevalorizacion() {
        return factorRevalorizacion;
    }

    public void setFactorRevalorizacion(float factorRevalorizacion) {
        this.factorRevalorizacion = factorRevalorizacion;
    }

    public int getHipotecaBase() {
        return hipotecaBase;
    }

    public void setHipotecaBase(int hipotecaBase) {
        this.hipotecaBase = hipotecaBase;
    }

    public int getPrecioEdificar() {
        return precioEdificar;
    }

    public void setPrecioEdificar(int precioEdificar) {
        this.precioEdificar = precioEdificar;
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
        return "{" + "nombre=" + nombre + ", hipotecada=" + hipotecada + ", alquilerBase=" + alquilerBase + ", factorRevalorizacion=" + factorRevalorizacion + ", hipotecaBase=" + hipotecaBase + ", precioEdificar=" + precioEdificar + '}';
    }
    
    
    
    
}
