/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;


import java.util.List;
import model.Persona;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Usuario
 */
public class LoginDL {
     Conexion con =  new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;
    
     public List Autenticar(Persona p) {
        String sql = "SELECT COUNT(idPersona) FROM `persona` WHERE Usuario='"+p.getUsuario()+"' and Clave='"+p.getClave()+"'";
        datos = this.jdbctemplate.queryForList(sql);
        return datos;
    }
}
