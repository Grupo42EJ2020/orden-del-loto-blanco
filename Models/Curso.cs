﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public class Curso
    {
            public int IdCurso { get; set; }
            public string Descripcion { get; set; }
            public int IdEmpleado { get; set; }
    }
}