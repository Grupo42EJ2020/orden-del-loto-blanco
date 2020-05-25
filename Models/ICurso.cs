using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public interface ICurso
    {
        List<Curso> ObtenerCurso();
        Curso ObtenerCurso(int idCurso);
        void createCurso(Curso datosCurso);
        void deleteCurso(int idCurso);
        void editCurso(Curso datosCurso);
    }
}