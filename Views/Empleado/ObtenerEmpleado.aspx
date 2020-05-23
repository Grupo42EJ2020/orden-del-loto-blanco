﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerEmpleado</title>
</head>
<body>
    <table>
        <tr>
            <th></th>
            <th>
                IdEmpleado
            </th>
            <th>
                Nombre
            </th>
            <th>
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditEmpleado", new { id=item.idEmpleado }) %> |
                <%: Html.ActionLink("Details", "DetailsEmpleado", new { id = item.idEmpleado })%> |
                <%: Html.ActionLink("Delete", "DeleteEmpleado", new { id = item.idEmpleado })%>
            </td>
            <td>
                <%: item.idEmpleado %>
            </td>
            <td>
                <%: item.nombre %>
            </td>
            <td>
                <%: item.direccion %>
            </td>
        </tr>
    
    <% } %>

    </table>
    <p>
        <%: Html.ActionLink("Nuevo Empleado", "CreateEmpleado") %>
    </p>

    <p>
        <a href="/Home/Index">Regresar</a>
    </p>

</body>
</html>

