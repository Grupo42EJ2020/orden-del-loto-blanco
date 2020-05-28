<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Agregar Curso_Tema</title>
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
            <legend>Datos</legend>
            
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdCurso) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdCurso)%>
                <%: Html.ValidationMessageFor(model => model.IdCurso)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdTema) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdTema)%>
                <%: Html.ValidationMessageFor(model => model.IdTema)%>
            </div>
            
            <p>
                <input type="submit" value="Agregar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Curso_Tema/ObtenerCT" id="Anyadir-Rutina-btn"> Regresar </a>
        <br />
        <br />
    </div>



</body>
</html>
