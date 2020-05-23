<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerTema</title>
</head>
<body><table>
        <tr>
            <th></th>
            <th>
                IdTema
            </th>
            <th>
                Nombre
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditTema", new { id=item.idTema }) %> |
                <%: Html.ActionLink("Details", "DetailsTema", new { id = item.idTema })%> |
                <%: Html.ActionLink("Delete", "DeleteTema", new { id = item.idTema })%>
            </td>
            <td>
                <%: item.idTema %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
        </tr>
    
    <% } %>

    </table>
    <p>
        <%: Html.ActionLink("Nuevo Tema", "CreateTema") %>
    </p>

    <p>
        <a href="/Home/Index">Regresar</a>
    </p>
</body>
</html>
