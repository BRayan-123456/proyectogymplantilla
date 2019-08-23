/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;
import model.Inscripcion;

import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Adrian Stuar
 */
public class InscripcionDL {
    Conexion con=new Conexion();
    JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
    List datos;
    
    public List Listar(){
        String sql="SELECT d.idDescuento idDescuento, i.idInscripcion idInscripcion,i.fecha fecha, i.costo costo, p.nombre nompersona, n.nombre nomnivel, p.documento docpersona, d.valor valdescuento FROM inscripcion i \n" +
"LEFT JOIN persona p ON p.idPersona=i.idpersona\n" +
"LEFT JOIN nivel n ON n.idnivel=i.idNivel\n" +
"LEFT JOIN descuentos d on d.idDescuento=i.iddescuento";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(Inscripcion i){
     try{
    String sql="insert into inscripcion (idNivel,idpersona,fecha,costo) values(?,?,?,?)";
    jdbctemplate.update(sql,i.getIdNivel(),i.getIdpersona(),i.getFecha(),i.getCosto());
    }catch(Exception e){
        System.out.println(e.getMessage());
}
    }
    public List buscar(int idInscripcion){
        String sql="select * from inscripcion where idInscripcion="+idInscripcion;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(Inscripcion i){
        try{
         String sql="update inscripcion set idNivel=?, idpersona=?,iddescuento=?, fecha=? ,costo=?  where idInscripcion=?";
        jdbctemplate.update(sql,i.getIdNivel(),i.getIdpersona(),i.getIddescuento(),i.getFecha(),i.getCosto(),i.getIdInscripcion());
        }
       catch(Exception e){
        System.out.println(e.getMessage());
}
    }
    public void eliminar(int idInscripcion){
        String sql="delete from inscripcion where idInscripcion="+idInscripcion;
        this.jdbctemplate.update(sql);
    }
        public List ListarI (int id){ 
        String sql="select COUNT(idMensualidad) from mensualidad  where idinscripcion= "+id;
         datos= jdbctemplate.queryForList(sql);
         return datos;
        }
}
