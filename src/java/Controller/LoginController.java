/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.LoginBL;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import model.Persona;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Usuario
 */
public class LoginController {
    ModelAndView mav = new ModelAndView();
    LoginBL loginbl = new LoginBL();
    List datos;

    //----Nombre para la url del navegador----
     @RequestMapping(value = "login.htm", method = RequestMethod.GET)
     
       public ModelAndView Listar() {
        mav.setViewName("login");
        return mav;
    }
    
    @RequestMapping(value = "login.htm", method = RequestMethod.POST)
    public ModelAndView Autenticar(Persona p) {
      datos = loginbl.Autenticar(p);
        Iterator itUsuario;
        itUsuario=datos.iterator();
        while(itUsuario.hasNext() ){
            Object Us=((Map)itUsuario.next());
            String[] arrUsuario=Us.toString().split(",");
            String id=arrUsuario[0];
            id=id.substring(id.length()-2,id.length()-1);
            if(Integer.parseInt(id)>0)
                return new ModelAndView("redirect:/indexPersona.htm");//pagina del usuario
                else
                return new ModelAndView("redirect:/login.htm");
                
                
                
                
                
        }
        return mav;
    }
    
}
