using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class EmpleadoController : Controller
    {
        //
        // GET: /Empleado/
        RepositorioEmpleado repoEmpleado = new RepositorioEmpleado();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ObtenerEmpleado()
        {
            
            return View(repoEmpleado.obtenerEmpleado());
        }
        
        public ActionResult DeleteEmpleado(int id)
        {
            DataTable dtEmpleado;
            List<Empleado> lstEmpleado = new List<Empleado>();
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));
            dtEmpleado = BaseHelper.ejecutarConsulta("sp_Empleado_ConsultarTodo", CommandType.StoredProcedure);

            Empleado datosEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0)
            {
                datosEmpleado.idEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                datosEmpleado.nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                datosEmpleado.direccion = dtEmpleado.Rows[0]["Direccion"].ToString();
                return View(datosEmpleado);
            }
            else
            {
                return View("Error");
            }
        }

        [HttpPost]
        public ActionResult DeleteEmpleado(int id, FormCollection datos)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));
            BaseHelper.ejecutarConsulta("sp_Eliminar_Empleado", CommandType.StoredProcedure, parametros);
            return RedirectToAction("obtenerEmpleado");
        }

        public ActionResult DetailsEmpleado(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));
            DataTable dtEmpleado = BaseHelper.ejecutarConsulta("sp_Consultar_Empleado_PorID", CommandType.StoredProcedure, parametros);
            Empleado infoEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0)
            {
                infoEmpleado.idEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                infoEmpleado.nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                infoEmpleado.direccion = dtEmpleado.Rows[0]["Direccion"].ToString();

                return View(infoEmpleado);
            }
            else
            {
                return View("Error");
            }
        }

        public ActionResult EditEmpleado(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();

            parametros.Add(new SqlParameter("@IdEmpleado", id));
            DataTable dtEmpleado = BaseHelper.ejecutarConsulta("sp_Consultar_Empleado_PorID", CommandType.StoredProcedure, parametros);

            Empleado infoEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0)
            {
                infoEmpleado.idEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                infoEmpleado.nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                infoEmpleado.direccion = dtEmpleado.Rows[0]["Direccion"].ToString();
                return View(infoEmpleado);
            }
            else
            {
                return View("Error");
            }
        }

        [HttpPost]
        public ActionResult EditEmpleado(int Id, Empleado datosEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", Id));
            parametros.Add(new SqlParameter("@Nombre", datosEmpleado.nombre));
            parametros.Add(new SqlParameter("@Direccion", datosEmpleado.direccion));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Empleado", CommandType.StoredProcedure, parametros);

            return RedirectToAction("obtenerEmpleado");
        }

        public ActionResult CreateEmpleado()
        {
            //Mostrar interfaz para llenado de datos
            return View();
        }

        [HttpPost]
        public ActionResult CreateEmpleado(Empleado datos)
        {
            repoEmpleado.createEmpleado(datos);
            return RedirectToAction("obtenerEmpleado");
        }

    }
}
