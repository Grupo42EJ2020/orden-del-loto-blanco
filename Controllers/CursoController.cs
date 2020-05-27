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
    public class CursoController : Controller
    {
        //
        // GET: /Curso/
        RepositorioCurso repoCurso = new RepositorioCurso();

        public ActionResult Index()
        {
            return View();
        }
        //Muestra la lista de Videos
        public ActionResult ObtenerCursos()
        {
            return View(repoCurso.ObtenerCursos());
        }

        // b o r r a r
        public ActionResult CursoDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoCurso.ObtenerCurso(id));
        }

        [HttpPost]
        public ActionResult CursoDelete(int id, FormCollection datos)
        {
            try
            {
                //realizar el delete del registro
            repoCurso.deleteCurso(id);

            return RedirectToAction("ObtenerCursos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCursos");
                throw;
            }
        }

        public ActionResult CursoDetails(int id)
        {
            return View(repoCurso.ObtenerCurso(id));
        }

        public ActionResult CursoEdit(int id)
        {
            return View(repoCurso.ObtenerCurso(id));
        }


        [HttpPost]
        public ActionResult CursoEdit(int id, Curso datosCurso)
        {
            try
            {
                datosCurso.IdCurso = id;
            repoCurso.editCurso(datosCurso);

            return RedirectToAction("ObtenerCursos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCursos");
                throw;
            }
        }

        public ActionResult CursoCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult CursoCreate(Curso datos)
        {
            try
            {
                repoCurso.createCurso(datos);
            return RedirectToAction("ObtenerCursos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerCursos");
                throw;
            }
        }

    }
}
