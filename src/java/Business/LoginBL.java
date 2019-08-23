/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import data.LoginDL;
import java.util.List;
import model.Persona;

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class LoginBL {
     LoginDL logindl = new LoginDL(); 
      public List Autenticar(Persona p) {
        return logindl.Autenticar(p);
}
}