using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public interface ICT
    {
        List<Curso_Tema> ObtenerCT();
        Curso_Tema ObtenerCT(int IdCT);
        void createCT(Curso_Tema datosCT);
        void deleteCT(int IdCT);
        void editCT(Curso_Tema datosCT);
    }
}