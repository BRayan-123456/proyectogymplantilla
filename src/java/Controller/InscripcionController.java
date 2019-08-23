/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import Business.DescuentoBL;
import Business.InscripcionBL;
import Business.NivelBL;
import Business.PersonaBL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.Inscripcion;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Adrian Stuar
 */
public class InscripcionController {
    
      ModelAndView mav=new ModelAndView();
   NivelBL nivelBL=new NivelBL();
   InscripcionBL inscripcionBL=new InscripcionBL();
    DescuentoBL descuentoBL=new DescuentoBL();
    PersonaBL personaBL=new PersonaBL();
   int id;
   List datos;
   
   @RequestMapping("indexInscripcion.htm")
    public ModelAndView Listar(){
        datos = inscripcionBL.listar();
        mav.addObject("lista", datos);
        mav.setViewName("indexInscripcion");
        return mav;
    }
   @RequestMapping(value="agregarInscripcion.htm",method=RequestMethod.GET)
   public ModelAndView Agregar(){
       mav.addObject(new Inscripcion());
       datos=nivelBL.listar();
       mav.addObject("listaNi", datos);
       datos=descuentoBL.listar();
       mav.addObject("listaD", datos);
       datos=personaBL.listar();
       mav.addObject("listaPe", datos);
       mav.setViewName("agregarInscripcion");
       return mav;
   }
   @RequestMapping(value="agregarInscripcion.htm",method=RequestMethod.POST)
   public ModelAndView Agregar(Inscripcion i){
       inscripcionBL.insertar(i);
       return new ModelAndView("redirect:/indexInscripcion.htm");
   }
   @RequestMapping(value="editarInscripcion.htm",method=RequestMethod.GET)
   public ModelAndView Editar(HttpServletRequest request){
     id =Integer.parseInt(request.getParameter("idInscripcion"));
     datos=nivelBL.listar();
       mav.addObject("listaNi", datos);
     datos= inscripcionBL.buscar(id);
     mav.addObject("lista",datos);
     datos=descuentoBL.listar();
      mav.addObject("listaD",datos);
     datos=personaBL.listar();
       mav.addObject("listaPe", datos);
     mav.setViewName("editarInscripcion");
     return mav;
   }
   @RequestMapping(value="editarInscripcion.htm",method=RequestMethod.POST)
   public ModelAndView Editar(Inscripcion i){
       inscripcionBL.actualizar(i);
       return new ModelAndView("redirect:/indexInscripcion.htm");
   }
   
     @RequestMapping("deleteInscripcion.htm")
    public ModelAndView Delete(HttpServletRequest  request){
        id = Integer.parseInt(request.getParameter("idInscripcion"));
        inscripcionBL.eliminar(id);
        return new ModelAndView("redirect:/indexInscripcion.htm");
    }
    
    @RequestMapping (value="eliminarInscripcion.htm",method = RequestMethod.GET)
    public @ResponseBody String eliminarInscripcion (HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("idInscripcion"));
        datos=inscripcionBL.listarI(id);
        String mensaje="";
        Iterator itInscripcion;
        itInscripcion=datos.iterator();
        while(itInscripcion.hasNext() ){
            Object eliminarIns=((Map)itInscripcion.next());
            String[] arr=eliminarIns.toString().split(",");
            String cantidad=arr[0];
            cantidad=cantidad.substring(cantidad.indexOf("=")+1);
            cantidad=cantidad.substring(cantidad.length()-2,cantidad.length()-1);
            
            if(Integer.parseInt(cantidad)>0){
                mensaje="La inscripcion no se puede eliminar";
            }
            else{
                
                  inscripcionBL.eliminar(id);
            }
            
            
        }
        return mensaje;
    }
}
