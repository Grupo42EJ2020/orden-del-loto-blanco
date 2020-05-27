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
    public class Curso_TemaController : Controller
    {
        RepositorioCT repoCT = new RepositorioCT();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ObtenerCT()
        {
            return View(repoCT.ObtenerCT());
        }
        //Metodo para borrar un video
        public ActionResult CTDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCT.ObtenerCT(id));
        }

        [HttpPost]
        public ActionResult CTDelete(int id, FormCollection datosCT)
        {
            try
            {
                //realizar el delete del registro
                repoCT.deleteCT(id);

                return RedirectToAction("ObtenerCT");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCT");
                throw;
            }
        }
        public ActionResult CTDetails(int id)
        {
            return View(repoCT.ObtenerCT(id));
        }
        public ActionResult CTEdit(int id)
        {
            return View(repoCT.ObtenerCT(id));
        }


        [HttpPost]
        public ActionResult CTEdit(int id, Curso_Tema datosCT)
        {
            try
            {
                datosCT.IdCT = id;
                repoCT.editCT(datosCT);

                return RedirectToAction("ObtenerCT");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCT");
                throw;
            }
        }
        public ActionResult CTCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CTCreate(Curso_Tema datosCT)
        {
            try
            {
                repoCT.createCT(datosCT);
                return RedirectToAction("ObtenerCT");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCT");
                throw;
            }
        }

    }
}