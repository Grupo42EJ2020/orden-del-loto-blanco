<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerCT</title>
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
                Numero de curso_tema
            </th>
            <th>
                Numero de curso
            </th>
            <th>
                Numero de tema
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
    <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Curso_Tema/CTCreate" id="Anyadir-Rutina-btn">Nuevo registro</a>
        <br />
        <br />
    </p>
    <p>
    <br />
        <br />
        <div id="Powe-Contendedor">
        <a href="/Home/Index" id="Anyadir-Rutina-btn">Regresar</a>
        <br />
        <br />
    </p>



</body>
</html>
