<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>Borrar curso</title>
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
        <br />
        <br />
        <div id="Power-Contenedor">
		    <input type="submit" value="Eliminar" id="Anyadir-Rutina-btn"/> 
            </p>
            <p>
		    <a href="/Curso/ObtenerCursos" id="Anyadir-Rutina-btn">Regresar</a>
            <br />
        <br />
        </p>
</body>
</html>
