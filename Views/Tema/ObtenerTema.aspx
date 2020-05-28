<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerTema</title>
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
                Numero del tema
            </th>
            <th>
                Nombre del tema
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditTema", new { id = item.idTema })%> |
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
        <br />
        <br />
        <div id="Power-Contenedor">      
        <a href="/Tema/CreateTema" id="Anyadir-Rutina-btn">Nuevo tema</a>
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
