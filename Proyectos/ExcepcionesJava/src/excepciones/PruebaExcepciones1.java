
package excepciones; 

public class PruebaExcepciones1 {
     public static void main(String argsString[])   {
         
         try{
            Direccion d1= new Direccion("Calle del Agua", 58, "18888", "Murcia");
            System.out.println("Constructor usado con valores correctos");
            d1.setCodigoPostal("1234");
            System.out.println("modificador usado con valor erróneo");
         } catch(Exception e){
             System.err.println(e);
         } 
     }
}
