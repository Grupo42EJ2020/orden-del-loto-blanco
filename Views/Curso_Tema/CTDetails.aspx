<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MVCLaboratorio.Models.Curso_Tema>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Detalles Curso Video</title>
    <link rel="stylesheet" type="text/css" href="../../Content/Site.css" />
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
    

    <fieldset>
        <legend>Datos</legend>
        
        <div class="display-label">IdCT</div>
        <div class="display-field"><%: Model.IdCT %></div>
        
        <div class="display-label">idCT</div>
        <div class="display-field"><%: Model.IdCurso %></div>
        
        <div class="display-label">idVideo</div>
        <div class="display-field"><%: Model.IdTema %></div>
        
    </fieldset>
    <p>
        <div id="Power-Contenedor">
        <a href="/Curso_Tema/ObtenerCT" id="Anyadir-Rutina-btn">Regresar</a>
    </p>




</body>
</html>
