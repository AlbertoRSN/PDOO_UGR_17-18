
package modeloqytetet;

import java.util.Random;

/**
 *
 * @author alberto Rodriguez
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
      Random rnd = new Random();
      int dado = (int) (rnd.nextDouble() * 6 + 1);
      return dado;
    }
    
    
    
}
