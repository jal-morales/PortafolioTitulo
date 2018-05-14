//eliminar 
function DataEmpleadoMDLEdicion(id,nombres,apellidos,tipoUsuarios,rut)
{
    $('#idEmpleado').val(id);
    $('#NombreEmpleado').val(nombres); 
    $('#ApellidosEmpleado').val(apellidos);
    $('#TipoUsuarioEmpleado').val(tipoUsuarios);
    $('#rutEmpleado').val(rut);
   
    
}

//elimina el Empleador
function DataEliminarEmpleador(id, nombres, apellidos)
{
    $('#idEeliminar').val(id);
    $('#NombreEeliminar').val(nombres); 
    $('#ApellidoEeliminar').val(apellidos);
    
}


