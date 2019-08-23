/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.DescuentoDL;
import java.util.List;
import model.Descuento;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class DescuentoBL {
    DescuentoDL descuentoDL= new DescuentoDL();
    
    public List  listar(){
        return descuentoDL.Listar();
    }
    public void  insertar (Descuento d){
        descuentoDL.insertar(d);
    }
    public List buscar(int idDescuento){
        return descuentoDL.buscar(idDescuento);
    }
    public void actualizar(Descuento d){
        descuentoDL.actualizar(d);
    }
     public void eliminar(int idDescuento){
        descuentoDL.eliminar(idDescuento);
    }
}
