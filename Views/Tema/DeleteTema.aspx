<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eliminar tema</title>
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
    <h3>Seguro de eliminar este tema?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idTema</div>
        <div class="display-field"><%: Model.idTema %></div>
        
        <div class="display-label">nombre</div>
        <div class="display-field"><%: Model.nombre %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
        <div id="Power-Contenedor">
		    <input type="submit" value="Eliminar" id="Anyadir-Rutina-btn"/>
            <br />
            <br />
		    <a href="/Tema/ObtenerTema" id="Anyadir-Rutina-btn">Regresar</a>
        </p>
    <% } %>

</body>
</html>

