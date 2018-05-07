// Ejemplo del tema 2.1, para la prueba de visibilidad y ámbito de los atributos y métodos de una clase

package UnPaquete; 

public class Bicicleta {
    
    //Atributos de ámbito de clase
    private static int NumeroBicicletas = 0; 
    public static final int NUMERORUEDAS = 2; // CONSTANTE
    
    // Atributos de ámbito de instancia
    public int marchas = 5;  
    public String color;
    double kilometrosRecorridos; // Visibilidad PAQUETE  
    private final int NUMEROSERIE; //CONSTANTE
    
    
    // Métodos de ámbito de clase     
    public static int getNumeroBicicletas(){
         //color="blanco"; // Quita este comentario ¿qué ocurre?
        return NumeroBicicletas;
    }    
    private static void incrementarNumeroBicicletas(){
         NumeroBicicletas++;
    }   
    
    // Constructor sin parámetros
    public Bicicleta(){
     	this.marchas=0;
	this.color="gris"; 
        this.kilometrosRecorridos = 0;
        NUMEROSERIE = ++NumeroBicicletas; 
     // Bicicleta.incrementarNumeroBicicletas();
    }
    // Constructor
    Bicicleta(int marcha, String color){
        this.marchas = marcha;  
        this.color = color;
        kilometrosRecorridos = 0;
        NUMEROSERIE = ++NumeroBicicletas;  
        incrementarNumeroBicicletas();
    }
    
    // Método de instancia que accede a una variable de clase
    public int getNumeroRuedas(){
        return NUMERORUEDAS;
    }  
   
    // Métodos de instancia: Consultores básicos
    public String getColor()  {
	  return color;
    }    
    public int getMarchas() {
          return marchas;
    }   
     
    public int getNumeroSerie(){
        return NUMEROSERIE;
    }
    double getKilometros(){
        return kilometrosRecorridos;
    }
    
    // Métodos de instancias: Modificadores 
    public void setColor(String unColor) {
	  color= unColor;
    }
    public void hacerRuta(String lugar, double km)
    {
        this.desplazarse(lugar);
        this.incrementarKilometros(km);
    }
    void desplazarse(String lugar)
    {
        System.out.println("Voy con la bicicleta hasta "+ lugar);
    }
    private void incrementarKilometros(double km){
        kilometrosRecorridos+=km;
    }
    
    
    // Método main() de ámbito de clase
    public static void main(String args[]){
	
     //Acceso a la clase Bicicleta desde la propia clase
        
     //Ve quitando los comentarios, eliminando los posibles errores de compilación y de ejecución e interpreta lo que ocurre. 
     //NO CAMBIES EL CODIGO DE LA CLASE Bicicleta PARA ELIMINAR ERRORES, sólo el código del método main (salvo que se indique lo contrario)
        
//     //Uso de la classe Bicicleta a nivel de clase, sin que existan instanccias de ella.
//        System.out.println("Hay " + Bicicleta.getNumeroBicicletas() +  " bicicletas");
//        System.out.println("Hay " + Bicicleta.NumeroBicicletas +  " bicicletas");
//        System.out.println("Las Bicicletas tienen " + Bicicleta.NUMERORUEDAS +  " ruedas"); // Acceso al atributo de ámbito de clase     
//        Bicicleta.incrementarNumeroBicicletas();
//        System.out.println("Hay " + Bicicleta.getNumeroBicicletas() +  " bicicletas");
        
//     //Ejemplo de uso de constructor por defecto
//     //Comenta lo anterior y descomenta lo siguiente
//        
//        Bicicleta tuBici= new Bicicleta();
//        System.out.println("Color de la bicicleta = " + tuBici.getColor());
//        System.out.println("Número de marchas = " + tuBici.getMarchas());
//        System.out.println("Kilómetros recorridos = " + tuBici.getKilometros());    
//        System.out.println("Número de bicicletas construídas = " + Bicicleta.NumeroBicicletas);
//        tuBici.hacerRuta("La fuente de la teja", 40);
//        System.out.println("Kilómetros recorridos = " + tuBici.getKilometros());
//  
//     //Ejemplo de uso de constructor con parámetros    
//     //Comenta lo anterior y descomenta lo siguiente
//        
//            Bicicleta tuBici= new Bicicleta(4,"roja");
//            System.out.println("Color de la bicicleta = " + tuBici.getColor());
//            System.out.println("Número de marchas = " + tuBici.getMarchas());
//            System.out.println("Kilómetros recorridos = " + tuBici.getKilometros());    
//            System.out.println("Número de bicicletas construídas = " + Bicicleta.NumeroBicicletas);
//            tuBici.hacerRuta("La fuente de la teja", 40);
//            System.out.println("Kilómetros recorridos = " + tuBici.getKilometros());           
//            //Si se ha construido una bicicleta ¿cómo es que dice que se han construido 2? ¿dónde está el fallo? Modifícalo en el código de la clase
        
//     //Prueba de acceso las variables de ámbito de clase y de instancia desde la clase y desde la instancia
//     //Comenta lo anterior y descomenta lo siguiente
//     //Intenta entender todos los errores de compilación que hay y corrígelos 
//        
//            Bicicleta miBici = new Bicicleta(); //           
//            Bicicleta.NUMERORUEDAS = 3;
//            Bicicleta.NumeroBicicletas = 10;
//            miBici.marchas = 3;
//            miBici.NUMEROSERIE = 257363;
//            miBici.kilometrosRecorridos = 40.0;
//            miBici.color = "blanca";
//            miBici.NumeroBicicletas = 20; // CURIOSO!!! desde una instancia (miBici) podemos acceder a una variable de ámbito de clase (NumeroBicicletas)
//            
        
//            //Continúa con todos los ejemplos que se te ocurran para probar el ámbito y visibilidad de los elementos de una clase

    }
 
    
}
