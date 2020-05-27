<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerCT</title>
</head>
<body>
    

    <table>
        <tr>
            <th></th>
            <th>
                IdCT
            </th>
            <th>
                IdCurso
            </th>
            <th>
                IdTema
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "CTCreate", new { id = item.IdCT })%> |
                <%: Html.ActionLink("Details", "CTDetails", new { id = item.IdCurso })%> |
                <%: Html.ActionLink("Delete", "CTDelete", new { id = item.IdTema })%>
            </td>
            <td>
                <%: item.IdCT %>
            </td>
            <td>
                <%: item.IdCurso %>
            </td>
            <td>
                <%: item.IdTema %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar Curso_Tema", "CTCreate") %>
        </p>
        <p>
        <a href="/Home/Index">Regresar</a>
    </p>



</body>
</html>
