using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface ITema
    {
        List<Tema> obtenerTema();
        Tema obtenerTema(int idTema);
    }
}