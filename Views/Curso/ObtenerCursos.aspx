<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    
    <title>Ver todos los cursos</title>
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
    

    <table border="1" style="margin: 0 auto;">
        <tr>
            <th></th>
            <th>
                Numero de curso
            </th>
            <th>
                Descripcion
            </th>
            <th>
                Empleado encargado
            </th>          
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoEdit", new { id = item.IdCurso })%> |
                <%: Html.ActionLink("Detalles", "CursoDetails", new { id = item.IdCurso })%> |
                <%: Html.ActionLink("Borrar", "CursoDelete", new { id = item.IdCurso })%>
            </td>
            <td>
                <%: item.IdCurso%>
            </td>
            <td>
                <%: item.Descripcion%>
            </td>
            <td>
                <%: item.IdEmpleado%>
            </td>
           
            
        </tr>
    
    <% } %>

    </table>

    <p>
    <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Curso/CursoCreate" id="Anyadir-Rutina-btn">Nuevo curso</a>
        <br />
        <br />
    </p>
    <p>
    <br />
        <br />
        <div id="Power-Contenedor">
    <a href="/Home/Index" id="Anyadir-Rutina-btn">Regresar</a>
    <br />
        <br />
    </p>
    



</body>
</html>
