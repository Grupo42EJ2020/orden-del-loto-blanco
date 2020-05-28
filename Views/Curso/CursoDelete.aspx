﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>Borrar curso</title>
</head>
<body>
    <h3>¿Estás seguro de borrar este curso?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idCurso</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">Descripcion</div>
        <div class="display-field"><%: Model.Descripcion %></div>
        
        <div class="display-label">idEmpleado</div>
        <div class="display-field"><%: Model.IdEmpleado %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <% } %>
        <p>
		    <input type="submit" value="Eliminar" /> 
            </p>
            <p>
		    <a href="/Curso/ObtenerCursos">Regresar</a>
        </p>
</body>
</html>
