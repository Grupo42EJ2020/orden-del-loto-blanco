<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Pia Desarrollo de Software</title>
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
<center>
    <h1>
    Producto Integrador de Aprendizaje 👍
    </h1>
    
    <br />
    <div id="Power-Contenedor">

    <a href="/Empleado/ObtenerEmpleado" id="Anyadir-Rutina-btn"> Añadir Empleado </a>

    </div>
    <br />
    <br />
    <div id="Power-Contenedor">

    <a href="/Video/ObtenerVideos" id="Anyadir-Rutina-btn"> Añadir Video </a>

    </div>
    <br />
    <br />
    <div id="Power-Contenedor">

    <a href="/Tema/ObtenerTema" id="Anyadir-Rutina-btn"> Añadir Tema </a>

    </div>
    <br />
    <br />
    <div id="Power-Contenedor">

    <a href="/Curso/ObtenerCursos" id="Anyadir-Rutina-btn"> Añadir Curso </a>

    </div>
    <br />
    <br />
    <div id="Power-Contenedor">

    <a href="/Curso_Tema/ObtenerCT" id="Anyadir-Rutina-btn"> Tema, Curso</a>

    </div>
    <br />
    <br />

    <a href="/Curso_Tema_Video/ObtenerCTV" id="Anyadir-Rutina-btn"> Tema, Curso, Video </a>

    </div>
    <br />
    <br />
</center>
    
</body>
</html>
