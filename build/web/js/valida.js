$(function (){
    
    //alert();
    $('#frm-registro').validate({
       rules:{
           nombre:{
               required:true,
               minlength:3,
               maxlength:10
               
              
           },
            apellido:{
               required:true,
               minlength:3,
               maxlength:10
              
             
           },
           
             cantidad:{
               required:true,
              
               number:true
              
             
           },
           
             talla:{
               required:true
              
              
             
           },
           
             valor:{
               required:true,
              number:true
              
             
           },
              color:{
               required:true,
               minlength:3,
               maxlength:10
              
             
           },
          
           correoelectronico:{
               required:true,
               email:true
           },
           discapacidad:{
                required:true,
               minlength:3,
               maxlength:20
           },
            antecedentes:{
                required:true,
               minlength:3,
               maxlength:20
           },
           documento:{
               required:true,
               number:true,
              minlength:5,
               maxlength:20
           }
       },
       
     
       messages:{
           nombre:{
               required:'Este campo es obligatorio',
                minlength:'El minimo de caracteres para este campo es de 10',
               maxlength:'El maximo de caracteres para este campo es de 10'
           },
           apellido:{
               
               required:'Este campo es obligatorio',
            minlength:'El minimo de caracteres para este campo es de 10',
               maxlength:'El maximo de caracteres para este campo es de 10'
           },
         
           correoelectronico:{
               required:'Este campo es obligatorio',
               email:'Ingrese un email valido'
           },
            discapacidad:{
               required:'Este campo es obligatorio',
                minlength:'El minimo de caracteres para este campo es de 3',
               maxlength:'El maximo de caracteres para este campo es de 20'
           },
           antecedentes:{
               required:'Este campo es obligatorio',
                minlength:'El minimo de caracteres para este campo es de 3',
               maxlength:'El maximo de caracteres para este campo es de 20'
           },
            documento:{
               required:'Este campo es obligatorio',
               number:'El documento de identidad solo puede contener caracteres numericos',
                minlength:'El minimo de caracteres para este campo es de 5',
               maxlength:'El maximo de caracteres para este campo es de 20'
           },
            color:{
               required:'Este campo es obligatorio',
            
                minlength:'El minimo de caracteres para este campo es de 3',
               maxlength:'El maximo de caracteres para este campo es de 10'
           },
            talla:{
               required:'Este campo es obligatorio'
             
           },
            cantidad:{
               required:'Este campo es obligatorio',
               number:'El documento de identidad solo puede contener caracteres numericos'
            
           },
            valor:{
               required:'Este campo es obligatorio',
               number:'El documento de identidad solo puede contener caracteres numericos'
             
           }
       }
        
    });
    
});

