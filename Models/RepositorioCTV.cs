using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using MVCLaboratorio.Utilerias;
using System.Data.SqlClient;

namespace MVCLaboratorio.Models
{
    public class RepositorioCTV : ICTV
    {


        public List<Curso_Tema_Video> obtenerCTV()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCTV;
            dtCTV = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_Tema__VideoTodo", CommandType.StoredProcedure);

            List<Curso_Tema_Video> lstCTV = new List<Curso_Tema_Video>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtCTV.Rows)
            {
                Curso_Tema_Video CTVAux = new Curso_Tema_Video();
                CTVAux.idCTV = int.Parse(item["IdCTV"].ToString());
                CTVAux.idCT = int.Parse(item["IdCT"].ToString());
                CTVAux.idVideo = int.Parse(item["IdVideo"].ToString());
                

                lstCTV.Add(CTVAux);
            }

            return lstCTV;
        }

        public Curso_Tema_Video obtenerCTV(int idCTV)
        {
            DataTable dtCTV;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", idCTV));
            dtCTV = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_Tema__VideoPorID", CommandType.StoredProcedure);

            //convertir el dtVideo a un objeto Video
            Curso_Tema_Video datosCTV = new Curso_Tema_Video();

            if (dtCTV.Rows.Count > 0) //si lo encontro
            {
                datosCTV.idCTV = int.Parse(dtCTV.Rows[0]["IdCTV"].ToString());
                datosCTV.idCT = int.Parse(dtCTV.Rows[0]["IdCT"].ToString());
                datosCTV.idVideo = int.Parse(dtCTV.Rows[0]["IdVideo"].ToString());


                return datosCTV;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void insertarCTV(Curso_Tema_Video datosCTV)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", datosCTV.idCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCTV.idVideo));
            

            BaseHelper.ejecutarConsulta("sp_Agregar_Curso_Tema_Video", CommandType.StoredProcedure, parametros);
        }

        public void eliminarCTV(int idCTV)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCTV", idCTV));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Curso_Tema_Video", CommandType.StoredProcedure, parametros);
        }

        public void actualizarCTV(Curso_Tema_Video datosCTV)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", datosCTV.idCT));
            parametros.Add(new SqlParameter("@IdVideo", datosCTV.idVideo));


            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso_Tema_Video", CommandType.StoredProcedure, parametros);
        }
    }
}
