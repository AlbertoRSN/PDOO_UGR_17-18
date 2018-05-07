
package CompararObjetosRedefiniendoEquals; 
 
public class PruebasCompararRedefiniendoEquals {
   public static void main(String argsString[]) throws CloneNotSupportedException {

    Direccion d1= new Direccion("Calle del Agua", 58, "18888", "Murcia");

    Persona p1 = new Persona("Juan", 30, d1); 
    Persona p2 =  p1;
    Persona p3 = new Persona ("Juan", 30,d1);     

    System.out.println("p1 es identido a p2: " + (p1 == p2)  );
    System.out.println("p1 es identido a p3: " + (p1 == p3)  );
    System.out.println("P2 es identido a p3: " + (p2 == p3)  ); 
    
    System.out.println("p1 es igual a p2: " + (p1.equals(p2))  );
    System.out.println("p1 es igual a p3: " + (p1.equals(p3))  );
    System.out.println("P2 es igual a p3: " + (p2.equals(p3))  ); 
    
    }  
} 
    

