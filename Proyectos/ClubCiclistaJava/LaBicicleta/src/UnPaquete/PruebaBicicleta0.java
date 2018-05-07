
// Acceso a la clase Bicicleta desde otra clase en el mismo paquete
package UnPaquete;
    
public class PruebaBicicleta0{ 
    
    // Método de instancia 
    public void verEstadoBicicleta(Bicicleta tuBici){
        // Modifica el código eliminando los errores de compilación de la forma más adecuada,
        // sabiendo que es interesante conocer el número de bicicletas que hay desde fuera de la clase y 
        // que no se debe modificar el número de bicicletas fuera de la clase.
        
//        System.out.println("Hay " + Bicicleta.NumeroBicicletas +  " bicicletas");
//        System.out.println("Las Bicicletas tienen " + Bicicleta.NUMERORUEDAS +  " ruedas"); // Acceso al atributo de ámbito de clase     
//        Bicicleta.incrementarNumeroBicicletas();
//        System.out.println("Hay " + Bicicleta.getNumeroBicicletas() +  " bicicletas"); 
//               
//        System.out.println("Color de tu bicicleta = " + tuBici.getColor());
//        System.out.println("Número de marchas = " + tuBici.getMarchas());
//        System.out.println("Kilómetros recorridos = " + tuBici.getKilometros());  
//        tuBici.hacerRuta("La fuente de la teja", 40);
//        System.out.println("Kilometros recorridos = " + tuBici.getKilometros());
        
    }
        
    // Método de clase (main)
    public static void main(String[] args){         
    
        
    // Ve quitando los comentarios, eliminando los posibles errores de compilación y de ejecución e interpreta lo que ocurre. 
    // NO CAMBIES EL CODIGO DE LA CLASE Bicicleta PARA ELIMINAR ERRORES  a no ser que se diga explícitamente       
    // Uso de la classe Bicicleta a nivel de clase, sin que existan instancias de la clase (objetos Bicicleta).
        
//        System.out.println("Hay " + Bicicleta.getNumeroBicicletas() +  " bicicletas");
//        System.out.println("Hay " + Bicicleta.NumeroBicicletas +  " bicicletas");
//        System.out.println("Las Bicicletas tienen " + Bicicleta.NUMERORUEDAS +  " ruedas"); // Acceso al atributo de ámbito de clase     
//        Bicicleta.incrementarNumeroBicicletas(); //Modifica la visibilidad del método en la clase Bicicleta
//        System.out.println("Hay " + Bicicleta.getNumeroBicicletas() +  " bicicletas");
     
  
    // Ejemplo de uso de constructor con parámetros    
    // Comenta lo anterior y descomenta lo siguiente
        
//            Bicicleta tuBici= new Bicicleta(4,"roja");
//            System.out.println("color de la bicicleta = " + tuBici.getColor());
//            System.out.println("numero de marchas = " + tuBici.getMarchas());
//            System.out.println("Kilometros recorridos = " + tuBici.getKilometros());           
//            tuBici.incrementarKilometros(40); // Modifica la visibilidad en la clase Bicicleta
//            System.out.println("Kilometros recorridos = " + tuBici.getKilometros());  
//            PruebaBicicleta0 miPrueba = new PruebaBicicleta0();
//            miPrueba.verEstadoBicicleta(tuBici);
          
    // Prueba de acceso las variables de ámbito de clase y de instancia desde la clase y desde la instancia
    // Comenta lo anterior y descomenta lo siguiente
    // Intenta entender y corregir todos los errores de compilación 
        
//            Bicicleta miBici = new Bicicleta();  
//            Bicicleta.NumeroBicicletas = 10;
//            miBici.marchas = 3;
//            miBici.NUMEROSERIE = 257363;
//            miBici.kilometrosRecorridos = 40.0;
//            miBici.color = "blanca";
//            miBici.NUMERORUEDAS = 3;
//            miBici.NumeroBicicletas = 20; //  El error es por ser privado pero no por acceder a un atributo de clase desde la instancia.
        
     //Continúa con todos los ejemplos que se te ocurran para probar el ámbito y visibilidad de los elementos de una clase

            }   
       }
 
