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

     public List<Curso> ObtenerCurso()
     {
        DataTable dtCurso;
            dtCurso = BaseHelper.ejecutarConsulta("sp_Curso_ConsultarTodo", CommandType.StoredProcedure);

            List<Curso> lstCurso = new List<Curso>();
            foreach (DataRow item in dtCurso.Rows)
            {
                Curso CursoAux = new Curso();
                CursoAux.idCurso = int.Parse(item["idCurso"].ToString());
                CursoAux.Descripcion = item["Descripcion"].ToString();
                CursoAux.idEmpleado = int.Parse(item["idEmpleado"].ToString());


                lstCurso.Add(CursoAux);
            }

            return lstCurso;
        }



        public Curso ObtenerCurso(int idCurso)
        {
            throw new NotImplementedException();
        }

        public void deleteCurso(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCurso", id));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Curso", CommandType.StoredProcedure, parametros);

        }
        public Curso detailsCurso(int id)
        {
            DataTable dtCurso;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCurso", id));

            dtCurso = BaseHelper.ejecutarConsulta("sp_Consultar_Curso_PorID", CommandType.StoredProcedure, parametros);

            Curso datosCurso = new Curso();

            if (dtCurso.Rows.Count > 0)
            {
                datosCurso.idCurso = int.Parse(dtCurso.Rows[0]["idCurso"].ToString());
                datosCurso.Descripcion = dtCurso.Rows[0]["Descripcion"].ToString();
                datosCurso.idEmpleado = int.Parse(dtCurso.Rows[0]["idEmpleado"].ToString());

                return datosCurso;
            }
            else
            {
                return null;
            }
        }
        public void editCurso(Curso datosCurso)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idCurso", datosCurso.idCurso));
            parametros.Add(new SqlParameter("@Descripcion", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@idEmpleado", datosCurso.idEmpleado));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Curso", CommandType.StoredProcedure, parametros);
        }
        public void createCurso(Curso datosCurso)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Descripcion", datosCurso.Descripcion));
            parametros.Add(new SqlParameter("@idEmpleado", datosCurso.idEmpleado));
            BaseHelper.ejecutarConsulta("sp_Agregar_Curso", CommandType.StoredProcedure, parametros);
        }
    }
}