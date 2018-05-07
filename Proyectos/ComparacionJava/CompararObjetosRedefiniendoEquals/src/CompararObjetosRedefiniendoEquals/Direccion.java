
package CompararObjetosRedefiniendoEquals; 

 
 class Direccion implements Cloneable{
      String calle;
      int numero;
      String codigoPostal;
      String ciudad;

    Direccion(String calle, int num, String cp, String ciudad) {
        this.calle = calle;
        this.numero = num;
        this.codigoPostal = cp;
        this.ciudad = ciudad;    
    } 
     
 
}
