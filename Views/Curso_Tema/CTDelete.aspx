<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Borrar Curso_Tema</title>
</head>
<body>
    
    <h3>¿Estás seguro que quieres eliminarlo?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">idVideo</div>
        <div class="display-field"><%: Model.IdTema %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Regresar", "ObtenerCT") %>
        </p>
    <% } %>



</body>
</html>
