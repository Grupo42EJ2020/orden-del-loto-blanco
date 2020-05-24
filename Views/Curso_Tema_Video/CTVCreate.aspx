<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema_Video>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CTVCreate</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
    
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
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Curso_Tema_Video/ObtenerCTV" id="Anyadir-Rutina-btn"> Regresar </a>
        <br />
        <br />
    </div>

</body>
</html>

