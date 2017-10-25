/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloqytetet;

/**
 *
 * @author albertorodriguez
 */
public class Sorpresa {
    
    private String texto;
    private TipoSorpresa tipo; //PORQUE ESTE ATRIBUTO ES PRIVADO, SI ES DE LA CLASE TIPOSORPRESA
    private int valor;
    
    public Sorpresa(String texto, int valor, TipoSorpresa tipo){
        this.texto=texto;
        this.valor=valor;
        this.tipo=tipo;
    }
    
    String getTexto(){
        return this.texto;
    }
    
    TipoSorpresa getTipo(){
        return this.tipo;
    }
    
    int getValor(){
        return this.valor;
    }
    
    
    @Override
        public String toString() {
             return "Sorpresa{" + "texto=" + texto + ", valor=" +
                   Integer.toString(valor) + ", tipo=" + tipo + "}";
    }
    
    
    
    
}
