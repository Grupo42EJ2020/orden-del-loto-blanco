<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Eliminar tema</title>
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
		    <input type="submit" value="Eliminar" /> |
		    <a href="/Tema/ObtenerTema">Regresar</a>
        </p>
    <% } %>

</body>
</html>

