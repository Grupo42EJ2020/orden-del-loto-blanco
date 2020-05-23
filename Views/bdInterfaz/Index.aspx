<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <style type="text/css">
    html, body
    {
    width: 100%;
    height: 110%; 
    background: #FFFFFF;
    font-family: Bookman; 
    }
    a:link, a:visited{
    text-decoration: none;
    padding: 20px;
    font-family: Bookman
    padding-left: 10px;
    padding-right: 10px;
    font-weight: 200;
    font-size: 25px;
    color: black;
    width:120px;
    height:25px;
    text-align:center;
    display: inline-block;
    margin: 20px 20px 0 20px;
    background-color: #0CB38E;
    }
    a:hover{
    color: #4c5557;
    background-color: #0CB38E;
    text-decoration: none;
    }           
    
    </style>
</head>
<body>
<center>
    <h1>Base de Datos
    </h1>
    <hr />
    <a href="/Empleado/ObtenerEmpleado">Empleado</a>

</center>
</body>
</html>
