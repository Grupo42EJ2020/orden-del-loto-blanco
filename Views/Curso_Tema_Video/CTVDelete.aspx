<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eliminar CTV</title>
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
    <h3>Seguro de eliminar esto?</h3>
    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">idCTV</div>
        <div class="display-field"><%: Model.idCTV %></div>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
        
        <div class="display-label">idVideo</div>
        <div class="display-field"><%: Model.idVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
        <br />
        <br />
        <div id="Power-Contenedor">
		    <input type="submit" value="Eliminar" id="Anyadir-Rutina-btn"/>
            </p>
            <p>
            <a href="/Curso_Tema_Video/ObtenerCTV" id="Anyadir-Rutina-btn">Regresar</a>
            <br />
        <br />
        </div>
        </p>
    <% } %>

</body>
</html>

