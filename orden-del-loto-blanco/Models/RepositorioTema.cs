using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioTema : ITema
    {
        public List<Tema> obtenerTema()
        {
            DataTable dtTema;
            dtTema = BaseHelper.ejecutarConsulta("sp_Consultar_Tema_Todo", CommandType.StoredProcedure);

            List<Tema> lstTema = new List<Tema>();
            foreach (DataRow item in dtTema.Rows)
            {
                Tema temaAux = new Tema();
                temaAux.idTema = int.Parse(item["idTema"].ToString());
                temaAux.nombre = item["Nombre"].ToString();


                lstTema.Add(temaAux);
            }

            return lstTema;
        }

        public Tema obtenerTema(int idTema)
        {
            throw new NotImplementedException();
        }

        public void deleteTema(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Tema", CommandType.StoredProcedure, parametros);

        }

        public Tema detailsTema(int id)
        {
            DataTable dtTema;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", id));

            dtTema = BaseHelper.ejecutarConsulta("sp_Consultar_Tema_PorID", CommandType.StoredProcedure, parametros);

            Tema datosTema = new Tema();

            if (dtTema.Rows.Count > 0)
            {
                datosTema.idTema = int.Parse(dtTema.Rows[0]["IdTema"].ToString());
                datosTema.nombre = dtTema.Rows[0]["Nombre"].ToString();

                return datosTema;
            }
            else
            {
                return null;
            }
        }

        public void editTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdTema", datosTema.idTema));
            parametros.Add(new SqlParameter("@Nombre", datosTema.nombre));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Tema", CommandType.StoredProcedure, parametros);
        }

        public void createTema(Tema datosTema)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", datosTema.nombre));
            BaseHelper.ejecutarConsulta("sp_Agregar_Tema", CommandType.StoredProcedure, parametros);
        }



    }
}