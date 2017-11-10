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
    private TipoSorpresa tipo;
    private int valor;
    
    
    //----------------------------CONSTRUCTOR--------------------------------    
    public Sorpresa(String texto, int valor, TipoSorpresa tipo){
        this.texto=texto;
        this.valor=valor;
        this.tipo=tipo;
    }


    //-------------------------CONSULTORES----------------------------------

    String getTexto(){
        return this.texto;
    }
    
    TipoSorpresa getTipo(){
        return this.tipo;
    }
    
    int getValor(){
        return this.valor;
    }
    
    
    //-------------------------TOSTRING---------------------------------- 
    @Override
        public String toString() {
             return "Sorpresa{" + "texto=" + texto + ", valor=" +
                   Integer.toString(valor) + ", tipo=" + tipo + "}";
    }
    
    
    
    
}
