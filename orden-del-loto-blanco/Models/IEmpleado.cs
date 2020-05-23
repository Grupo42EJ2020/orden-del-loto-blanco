﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCLaboratorio.Models
{
    public interface IEmpleado
    {
        List<Empleado> obtenerEmpleado();
        Empleado obtenerEmpleado(int idEmpleado);
    }
}