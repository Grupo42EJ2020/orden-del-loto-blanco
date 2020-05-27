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
    public class RepositorioCT: ICT
    {
        public List<Curso_Tema> ObtenerCT()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCT;
            dtCT = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_Tema_Todo", CommandType.StoredProcedure);

            List<Curso_Tema> lstCT = new List<Curso_Tema>();

            //convertir el DataTable a una lista de videos List<Video>
            foreach (DataRow item in dtCT.Rows)
            {
                Curso_Tema CTAux = new Curso_Tema();
                CTAux.IdCT = int.Parse(item["IdCT"].ToString());
                CTAux.IdCurso = int.Parse(item["IdCurso"].ToString());
                CTAux.IdTema = int.Parse(item["IdTema"].ToString());


                lstCT.Add(CTAux);
            }

            return lstCT;
        }

        public Curso_Tema ObtenerCT(int IdCT)
        {
            DataTable dtCT;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", IdCT));
            dtCT = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_Tema_PorID", CommandType.StoredProcedure, parametros);

            //convertir el dtVideo a un objeto Video
            Curso_Tema datosCT = new Curso_Tema();

            if (dtCT.Rows.Count > 0) //si lo encontro
            {
                datosCT.IdCT = int.Parse(dtCT.Rows[0]["IdCT"].ToString());
                datosCT.IdCurso = int.Parse(dtCT.Rows[0]["IdCurso"].ToString());
                datosCT.IdTema = int.Parse(dtCT.Rows[0]["IdTema"].ToString());


                return datosCT;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void createCT(Curso_Tema datosCT)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCT.IdCurso));
            parametros.Add(new SqlParameter("@IdTema", datosCT.IdTema));


            BaseHelper.ejecutarConsulta("sp_Agregar_Curso_Tema", CommandType.StoredProcedure, parametros);
        }

        public void deleteCT(int idCT)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCT", idCT));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Curso_Tema", CommandType.StoredProcedure, parametros);
        }

        public void editCT(Curso_Tema datosCT)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCT.IdCurso));
            parametros.Add(new SqlParameter("@IdTema", datosCT.IdTema));


            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso_Tema", CommandType.StoredProcedure, parametros);
        }
    }
}