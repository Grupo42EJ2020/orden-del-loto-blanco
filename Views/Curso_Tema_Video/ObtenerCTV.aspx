﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerCTV</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                idCTV
            </th>
            <th>
                idCT
            </th>
            <th>
                idVideo
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "CTVEdit", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Details", "CTVDetails", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Delete", "CTVDelete", new { id = item.idCTV })%>
            </td>
            <td>
                <%: item.idCTV %>
            </td>
            <td>
                <%: item.idCT %>
            </td>
            <td>
                <%: item.idVideo %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Agregar", "CTVCreate") %>
        <a href="/Home/Index">Regresar</a>
    </p>

</body>
</html>

