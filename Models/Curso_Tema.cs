﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public class Curso_Tema
    {
        public int IdCT { get; set; }
        public int IdCurso { get; set; }
        public int IdTema { get; set; }
    }
}