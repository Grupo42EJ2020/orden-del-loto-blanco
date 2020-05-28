<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCLaboratorio.Models.Curso_Tema_Video>>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerCTV</title>
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
                Numero de curso_tema_video
            </th>
            <th>
                Numero de curso_tema
            </th>
            <th>
                Numero de video
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CTVEdit", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Detalles", "CTVDetails", new { id = item.idCTV })%> |
                <%: Html.ActionLink("Borrar", "CTVDelete", new { id = item.idCTV })%>
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
    <br />
        <br />
        <div id="Power-Contenedor">
    <a href="/Curso_Tema_Video/CTVCreate" id="Anyadir-Rutina-btn">Nuevo registro</a>
    <br />
        <br />
    </p>
    <p>
    <br />
        <br />
        <div id="Power-Contenedor">
    <a href="/Home/Index" id="Anyadir-Rutina-btn">Regresar</a>
    </p>

</body>
</html>

