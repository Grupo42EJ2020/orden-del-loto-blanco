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
    public class RepositorioCurso : ICurso
    {

        public List<Curso> ObtenerCursos()
        {
            //implementar funcionalidad
            //obtener la info de los videos de la BD
            DataTable dtCursos;
            dtCursos = BaseHelper.ejecutarConsulta("sp_Consultar_TodoCurso", CommandType.StoredProcedure);

            List<Curso> lstCursos = new List<Curso>();

            //convertir el DataTable a una lista de curso List<Curso>
            foreach (DataRow item in dtCursos.Rows)
            {
                Curso cursoAux = new Curso();
                cursoAux.IdCurso = int.Parse(item["IdCurso"].ToString());
                cursoAux.Descripcion = item["Descripcion"].ToString();
                cursoAux.IdEmpleado = int.Parse(item["IdEmpleado"].ToString());

                lstCursos.Add(cursoAux);
            }

            return lstCursos;
        }


        public Curso ObtenerCurso(int IdCurso)
        {
            DataTable dtCurso;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", IdCurso));

            dtCurso = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_PorID", CommandType.StoredProcedure, parametros);

            //convertir el dtCurso a un objeto Curso
            Curso datosCurso = new Curso();

            if (dtCurso.Rows.Count > 0) //si lo encontro
            {
                datosCurso.IdCurso = int.Parse(dtCurso.Rows[0]["IdCurso"].ToString());
                datosCurso.Descripcion = dtCurso.Rows[0]["Descripcion"].ToString();
                datosCurso.IdEmpleado = int.Parse(dtCurso.Rows[0]["IdEmpleado"].ToString());

                return datosCurso;
            }
            else
            { //no lo encontro 
                return null;
            }
        }

        public void createCurso(Curso datosCurso)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Descripcion", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado", datosCurso.IdEmpleado));

            BaseHelper.ejecutarConsulta("sp_Agregar_Curso", CommandType.StoredProcedure, parametros);

        }

        public void deleteCurso(int IdCurso)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", IdCurso));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Curso", CommandType.StoredProcedure, parametros);

        }

        public void editCurso(Curso datosCurso)
        {
            //realizar el update
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdCurso", datosCurso.IdCurso));
            parametros.Add(new SqlParameter("@Descripcion", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@IdEmpleado", datosCurso.IdEmpleado));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso", CommandType.StoredProcedure, parametros);

        }
    }
}