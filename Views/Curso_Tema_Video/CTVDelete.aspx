﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CTVDelete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">idCTV</div>
        <div class="display-field"><%: Model.idCTV %></div>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.idCT %></div>
        
        <div class="display-label">idVideo</div>
        <div class="display-field"><%: Model.idVideo %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Regresar", "ObtenerCTV") %>
        </p>
    <% } %>

</body>
</html>

