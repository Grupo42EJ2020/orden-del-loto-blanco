<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Modificar curso</title>
</head>
<body>
    

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.idCurso) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idCurso)%>
                <%: Html.ValidationMessageFor(model => model.idCurso)%>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Descripcion) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Descripcion)%>
                <%: Html.ValidationMessageFor(model => model.Descripcion)%>
            </div>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.idEmpleado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.idEmpleado)%>
                <%: Html.ValidationMessageFor(model => model.idEmpleado)%>
            </div>
            

            
            <p>
                <input type="submit" value="Editar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <a href="/Curso/ObtenerCurso">Regresar</a>
    </div>


</body>
</html>
