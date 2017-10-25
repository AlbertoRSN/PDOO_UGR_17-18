
package modeloqytetet;

/**
 *
 * @author albertorodriguez
 */
class Dado {
    
    
    //AL SER UNA CLASE SINGLETON, COMO DEVOLVER EL OBJETO.
    
    private static final Dado instance = new Dado();
    
    //Constructor privado
    private Dado(){}
    
    public static Dado getInstance(){
        return instance;
    }
    
    int tirar(){
      throw new UnsupportedOperationException("Sin Implementar");
    }
    
    
    
}
