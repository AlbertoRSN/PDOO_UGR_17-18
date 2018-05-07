// Ejemplo del tema 2.1, para la prueba de visibilidad y ámbito de los atributos y métodos de una clase

package el_club; 

public class Bicicleta {
    
    //Atributos de ámbito de clase
    private static int NumeroBicicletas = 0; 
    public static final int NUMERORUEDAS = 2; // CONSTANTE
    
    // Atributos de ámbito de instancia todos privados
    private int marchas = 5;  
    private String color;
    private double kilometrosRecorridos; 
    private final int NUMEROSERIE; //CONSTANTE, no debe cambiar
    
    
    // Métodos de ámbito de clase     
    public static int getNumeroBicicletas(){        
        return NumeroBicicletas;
    } 
    public static int getNumeroRuedas(){
        return NUMERORUEDAS;
    } 
    private static void incrementarNumeroBicicletas(){
         NumeroBicicletas++;
    }   
    
    // Constructor por defecto
    public Bicicleta(){
     	this.marchas=0;
	this.color="gris"; 
        this.kilometrosRecorridos = 0;
        NUMEROSERIE = NumeroBicicletas; 
        Bicicleta.incrementarNumeroBicicletas();
    }
    // Construtor
    Bicicleta(int marcha, String color){
        this.marchas = marcha;  
        this.color = color;
        this.kilometrosRecorridos = 0;
        NUMEROSERIE = NumeroBicicletas;  
        Bicicleta.incrementarNumeroBicicletas();
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
    public void incrementarKilometros(double km){
        kilometrosRecorridos+=km;
    }
    public String toString(){
        return " color " + color + " he recorrido " + kilometrosRecorridos + " km";
    }
    
}
