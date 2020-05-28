<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerVideos</title>
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
                Numero del video
            </th>
            <th>
                Nombre del video
            </th>          
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "VideoEdit", new { id = item.IdVideo } )%> |
                <%: Html.ActionLink("Detalles", "VideoDetails", new { id = item.IdVideo })%> |
                <%: Html.ActionLink("Borrar", "VideoDelete", new { id = item.IdVideo })%>
            </td>
            <td>
                <%: item.IdVideo %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
           
            
        </tr>
    
    <% } %>

    </table>

    <p>
        <br />
        <br />
        <div id="Power-Contenedor">
        <a href="/Video/VideoCreate" id="Anyadir-Rutina-btn">Nuevo video</a>
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
