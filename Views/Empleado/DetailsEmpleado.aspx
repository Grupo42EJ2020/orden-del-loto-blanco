﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Detalles empleado</title>
    
</head>
<body>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idEmpleado</div>
        <div class="display-field"><%: Model.idEmpleado %></div>
        
        <div class="display-label">nombre</div>
        <div class="display-field"><%: Model.nombre %></div>
        
        <div class="display-label">direccion</div>
        <div class="display-field"><%: Model.direccion %></div>
        
    </fieldset>
    <p>
        
        <a href="/Empleado/ObtenerEmpleado">Regresar</a>
    </p>

</body>
</html>

