using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;
using MVCLaboratorio.Models;

namespace MVCLaboratorio.Controllers
{
    public class Curso_Tema_VideoController : Controller
    {
        RepositorioCTV repoCTV = new RepositorioCTV();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ObtenerCTV()
        {
            return View(repoCTV.obtenerCTV());
        }
        //Metodo para borrar un video
        public ActionResult CTVDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCTV.obtenerCTV(id));
        }

        [HttpPost]
        public ActionResult CTVDelete(int id, FormCollection datosCTV)
        {
            try
            {
                //realizar el delete del registro
            repoCTV.eliminarCTV(id);

            return RedirectToAction("ObtenerCTV");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCTV");
                throw;
            }
        }
        public ActionResult CTVDetails(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }
        public ActionResult CTVEdit(int id)
        {
            return View(repoCTV.obtenerCTV(id));
        }


        [HttpPost]
        public ActionResult CTVEdit(int id, Curso_Tema_Video datosCTV)
        {
            try
            {
                datosCTV.idCTV = id;
            repoCTV.actualizarCTV(datosCTV);

            return RedirectToAction("ObtenerCTV");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCTV");
                throw;
            }
        }
        public ActionResult CTVCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CTVCreate(Curso_Tema_Video datosCTV)
        {
            try
            {
                repoCTV.insertarCTV(datosCTV);
            return RedirectToAction("ObtenerCTV");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCTV");
                throw;
            }
        }

    }
}
