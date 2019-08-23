/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.DescuentoBL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Descuento;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class DescuentoController {
    ModelAndView mav=new ModelAndView();
    DescuentoBL descuentoBL=new DescuentoBL();
    int idDescuento;
    List datos;
     @RequestMapping("indexDescuento.htm")
    public ModelAndView Listar(){
        datos = descuentoBL.listar();
        mav.addObject("lista", datos);
        mav.setViewName("indexDescuento");
        return mav;
    }
    
    @RequestMapping(value="agregarDescuento.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new Descuento());
       mav.setViewName("agregarDescuento");
       return mav;
   }
   
   @RequestMapping(value="agregarDescuento.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(Descuento d){
       descuentoBL.insertar(d);
       return new ModelAndView("redirect:/indexDescuento.htm");
   }
   
   @RequestMapping(value="editarDescuento.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
    idDescuento=Integer.parseInt(request.getParameter("idDescuento"));
     datos=descuentoBL.buscar(idDescuento);
     mav.addObject("lista",datos);
     mav.setViewName("editarDescuento");
     return mav;
   }
   
   @RequestMapping(value="editarDescuento.htm",method=RequestMethod.POST)
   public ModelAndView Editar(Descuento d){
       descuentoBL.actualizar(d);
       return new ModelAndView("redirect:/indexDescuento.htm");
   }
   
   @RequestMapping("deleteDescuento.htm")
    public ModelAndView Delete(HttpServletRequest  request){
        idDescuento = Integer.parseInt(request.getParameter("idDescuento"));
        descuentoBL.eliminar(idDescuento);
        return new ModelAndView("redirect:/indexDescuento.htm");
    }
}
