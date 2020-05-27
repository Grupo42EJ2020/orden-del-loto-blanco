<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ObtenerCursos</title>
</head>
<body>
    


    <title>ObtenerCursos</title>
</head>
<body>
    

    <table>
        <tr>
            <th></th>
            <th>
                IdCurso
            </th>
            <th>
                Descripcion
            </th>          
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "CursoEdit", new { id = item.IdCurso })%> |
                <%: Html.ActionLink("Detalles", "CursoDetails", new { id = item.IdCurso })%> |
                <%: Html.ActionLink("Borrar", "CursoDelete", new { id = item.IdCurso })%>
            </td>
            <td>
                <%: item.IdCurso%>
            </td>
            <td>
                <%: item.IdCurso%>
            </td>
           
            
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Nuevo Curso", "CursoCreate")%>
    </p>
    <a href="/Home/Index">Regresar</a>



</body>
</html>
