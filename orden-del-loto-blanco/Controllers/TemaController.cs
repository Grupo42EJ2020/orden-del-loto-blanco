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
    public class TemaController : Controller
    {
        //
        // GET: /Tema/
        RepositorioTema repoTema = new RepositorioTema();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ObtenerTema()
        {
            return View(repoTema.obtenerTema());
        }

        public ActionResult DeleteTema(int id)
        {
            DataTable dtTema;
            List<Tema> lstTema = new List<Tema>();
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            dtTema = BaseHelper.ejecutarConsulta("sp_Consultar_Tema_Todo", CommandType.StoredProcedure);

            Tema datosTema = new Tema();

            if (dtTema.Rows.Count > 0)
            {
                datosTema.idTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                datosTema.nombre = dtTema.Rows[0]["Nombre"].ToString();
                return View(datosTema);
            }
            else
            {
                return View("Error");
            }
        }

        [HttpPost]
        public ActionResult DeleteTema(int id, FormCollection datos)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            BaseHelper.ejecutarConsulta("sp_Eliminar_Tema", CommandType.StoredProcedure, parametros);
            return RedirectToAction("obtenerTema");
        }

        public ActionResult DetailsTema(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Consultar_Tema_PorID", CommandType.StoredProcedure, parametros);
            Tema infoTema = new Tema();

            if (dtTema.Rows.Count > 0)
            {
                infoTema.idTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                infoTema.nombre = dtTema.Rows[0]["Nombre"].ToString();

                return View(infoTema);
            }
            else
            {
                return View("Error");
            }
        }

        public ActionResult EditTema(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();

            parametros.Add(new SqlParameter("@IdTema", id));
            DataTable dtTema = BaseHelper.ejecutarConsulta("sp_Consultar_Tema_PorID", CommandType.StoredProcedure, parametros);

            Tema infoTema = new Tema();

            if (dtTema.Rows.Count > 0)
            {
                infoTema.idTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                infoTema.nombre = dtTema.Rows[0]["Nombre"].ToString();
                return View(infoTema);
            }
            else
            {
                return View("Error");
            }
        }

        [HttpPost]
        public ActionResult EditTema(int Id, Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", Id));
            parametros.Add(new SqlParameter("@Nombre", datosTema.nombre));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Tema", CommandType.StoredProcedure, parametros);

            return RedirectToAction("obtenerTema");
        }

        public ActionResult CreateTema()
        {
            //Mostrar interfaz para llenado de datos
            return View();
        }

        [HttpPost]
        public ActionResult CreateTema(Tema datos)
        {
            repoTema.createTema(datos);
            return RedirectToAction("obtenerTema");
        }

    }
}
