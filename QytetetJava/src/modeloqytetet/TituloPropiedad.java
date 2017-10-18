
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
    
}
