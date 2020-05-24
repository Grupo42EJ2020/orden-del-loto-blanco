﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CTVEdit</title>
</head>
<body>
    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCT) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCT) %>
                <%: Html.ValidationMessageFor(model => model.idCT) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idVideo) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idVideo) %>
                <%: Html.ValidationMessageFor(model => model.idVideo) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "ObtenerCTV") %>
    </div>

</body>
</html>

