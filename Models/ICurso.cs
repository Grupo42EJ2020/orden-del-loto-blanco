using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
        List<Curso> ObtenerCursos();
        Curso ObtenerCurso(int IdCurso);
        void createCurso(Curso datosCurso);
        void deleteCurso(int IdCurso);
        void editCurso(Curso datosCurso);
    }
}