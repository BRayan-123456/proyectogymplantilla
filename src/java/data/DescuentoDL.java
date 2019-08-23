package data;

import java.util.List;
import model.Descuento;
import org.springframework.jdbc.core.JdbcTemplate;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author BRAYAN STID BERNAL
 */
public class DescuentoDL {
    Conexion con= new Conexion();
     JdbcTemplate jdbctemplate=new JdbcTemplate(con.conectar());
     List datos;
     
      public List Listar(){
        String sql="select  * from descuentos";
        datos= jdbctemplate.queryForList(sql);
        return datos;
    }
    
    public void insertar(Descuento d){
     try{
    String sql="insert into descuentos"
            +"(valor,FechaInicio,FechaFin) values(?,?,?)";
    jdbctemplate.update(sql,d.getValor(),d.getFechaInicio(),d.getFechaFin());
    }catch(Exception e){
        System.out.println(e.getMessage());
}
    }
    
    public List buscar(int idDescuento){
        String sql="select * from descuentos where idDescuento="+idDescuento;
        datos=this.jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar(Descuento d){
        String sql="update descuentos set valor=?,FechaInicio=?,FechaFin=? where idDescuento=?";
        jdbctemplate.update(sql,d.getValor(),d.getFechaInicio(),d.getFechaFin(),d.getIdDescuento());
    }
    public void eliminar(int idDescuento){
        String sql="delete from descuentos where idDescuento="+idDescuento;
        this.jdbctemplate.update(sql);
    }
}
