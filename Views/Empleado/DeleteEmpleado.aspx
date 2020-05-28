<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Empleado>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eliminar empleado</title>
    <style type="text/css">
    #Power-Contenedor{
    width: 100%;
    text-align: center;
    }

    #Anyadir-Rutina-btn {
    background-color: #21211d;
    color: #FFF;
    padding: 10px;
    border-radius: 20px;
    text-decoration: none;
    cursor: pointer;
    }       
    
    </style>
</head>
<body>
    <h3>Seguro de eliminar este empleado?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idEmpleado</div>
        <div class="display-field"><%: Model.idEmpleado %></div>
        
        <div class="display-label">nombre</div>
        <div class="display-field"><%: Model.nombre %></div>
        
        <div class="display-label">direccion</div>
        <div class="display-field"><%: Model.direccion %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
        <br />
        <br />
        <div id="Power-Contenedor">
		    <input type="submit" value="Eliminar" id="Anyadir-Rutina-btn"/> 
            </p>
            <p>
            
		    <a href="/Empleado/ObtenerEmpleado" id="Anyadir-Rutina-btn">Regresar</a>
        </p>
    <% } %>

</body>
</html>

