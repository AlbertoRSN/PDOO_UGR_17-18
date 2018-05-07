package el_club;

// Ejemplo de acceso a los elementos de una clase desde métodos de instancia de otra clase. 
// Quita los comentarios  y prueba
public class Ciclista {
    
    private String nombre;
    private int edad;
    private Club miClub;    
    private Bicicleta miBicicleta;
    
    public Ciclista(String nom,int edad, Bicicleta bici, Club club){
        this.setNombre(nom);
        this.setEdad(edad);
        this.setBicicleta(bici);
        this.setClub(club);
    }
    
    public String getNombre(){
        return nombre;
    }
    
     public void setNombre(String nom){     
         nombre = nom;    
     }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public void setBicicleta(Bicicleta bici) {
       miBicicleta = bici;
    }
    public void setClub(Club club){
        this.miClub = club;
    }
    public void salirEnBici(double km){
      miBicicleta.incrementarKilometros(km);
    }
    public double cuantoskilometros(){
        return miBicicleta.getKilometros();    
    }
    public int ruedasDeMiBici(){
       return miBicicleta.NUMERORUEDAS;   
    }
    
    public String toString(){
        return "Me llamo " + nombre + " tengo " +edad+ " años " + 
                " pertenezco al club de ciclismo " + miClub.getNombre() + 
                " tengo una bici " + miBicicleta.toString();
    
    }
     
}
