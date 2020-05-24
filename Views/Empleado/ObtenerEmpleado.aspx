<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerEmpleado</title>
    <link href="../../Content/EnlaceBoton.css" rel="stylesheet" type="text/css" />
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

                <%: Html.ActionLink("Edit", "EditEmpleado", new { id = item.idEmpleado }, new { @class = "enlaceboton" })%>  |
                <%: Html.ActionLink("Details", "DetailsEmpleado", new { id = item.idEmpleado }, new { @class = "enlaceboton" })%> |
                <%: Html.ActionLink("Delete", "DeleteEmpleado", new { id = item.idEmpleado }, new { @class = "enlaceboton" })%>
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
        <a href="/Empleado/CreateEmpleado" class=enlaceboton>Nuevo empleado</a>
    </p>

    <p>
        <a href="/Home/Index" class=enlaceboton>Regresar</a>
    </p>

</body>
</html>

