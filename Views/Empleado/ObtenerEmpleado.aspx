<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Empleado>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerEmpleado</title>
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
                Numero de empleado
            </th>
            <th>
                Nombre del empleado
            </th>
            <th>
                Direccion
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>

                <%: Html.ActionLink("Editar", "EditEmpleado", new { id = item.idEmpleado })%>  |
                <%: Html.ActionLink("Detalles", "DetailsEmpleado", new { id = item.idEmpleado })%> |
                <%: Html.ActionLink("Borrar", "DeleteEmpleado", new { id = item.idEmpleado })%>
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
        <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Empleado/CreateEmpleado" id="Anyadir-Rutina-btn">Nuevo empleado</a>
        <br />
        <br />
    </p>

    <p>
    <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Home/Index" id="Anyadir-Rutina-btn" >Regresar</a>
        <br />
        <br />
    </p>

</body>
</html>

