// Ejemplo de uso de colecciones de objetos.

package el_club;
 
public class PruebaClub {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        Club unClub = new Club("los intrépidos", "trevenque 2, bajo B");
        Bicicleta miBici = new Bicicleta();
        Ciclista unCiclista = new Ciclista("Pepe",30,miBici,unClub);
        Bicicleta otraBici = new Bicicleta (5, "negra");
        Ciclista otroCiclista = new Ciclista("Ana", 40, otraBici,unClub);
        unClub.nuevoSocio(otroCiclista);
        unClub.nuevoSocio(unCiclista);
        unClub.misSocios();
        
    }
    
}
