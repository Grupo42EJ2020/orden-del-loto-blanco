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
    public class VideoController : Controller
    {
        RepositorioVideo repoVideo = new RepositorioVideo();

        public ActionResult Index()
        {
            return View();
        }
        //Muestra la lista de Videos
        public ActionResult ObtenerVideos()
        {
            return View(repoVideo.obtenerVideos());
        }

        //Metodo para borrar un video
        public ActionResult VideoDelete(int id)
        {
            //obtener los datos del video para mostrarlo al usuario antes de borrarlo
            return View(repoVideo.obtenerVideo(id));
        }

        [HttpPost]
        public ActionResult VideoDelete(int id, FormCollection datos)
        {
            try
            {
                //realizar el delete del registro
            repoVideo.eliminarVideo(id);

            return RedirectToAction("ObtenerVideos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerVideos");
                throw;
            }
        }

        public ActionResult VideoDetails(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }

        public ActionResult VideoEdit(int id)
        {
            return View(repoVideo.obtenerVideo(id));
        }


        [HttpPost]
        public ActionResult VideoEdit(int id, Video datosVideo)
        {
            try
            {
                 datosVideo.IdVideo = id;
            repoVideo.actualizarVideo(datosVideo);

            return RedirectToAction("ObtenerVideos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerVideos");
                throw;
            }
        }

        public ActionResult VideoCreate()
        {
            //mostrar interfaz para llenado
            return View();
        }

        [HttpPost]
        public ActionResult VideoCreate(Video datos)
        {
            try
            {
                repoVideo.insertarVideo(datos);
            return RedirectToAction("ObtenerVideos");
            }
            catch (Exception)
            {
                return RedirectToAction("ObtenerVideos");
                throw;
            }
        }

    }
}
