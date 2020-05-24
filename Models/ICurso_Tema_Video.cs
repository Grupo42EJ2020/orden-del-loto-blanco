using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVCLaboratorio.Models
{
    public interface ICTV
    {
        List<Curso_Tema_Video> obtenerCTV();
        Curso_Tema_Video obtenerCTV(int idCTV);
        void insertarCTV(Curso_Tema_Video datosCTV);
        void eliminarCTV(int idCTV);
        void actualizarCTV(Curso_Tema_Video datosCTV);
    }
}
