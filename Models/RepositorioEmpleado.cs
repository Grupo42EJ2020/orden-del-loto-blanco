using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Models
{
    public class RepositorioEmpleado : IEmpleado
    {

        public List<Empleado> obtenerEmpleado()
        {
            DataTable dtEmpleado;
            dtEmpleado = BaseHelper.ejecutarConsulta("sp_Empleado_ConsultarTodo", CommandType.StoredProcedure);

            List<Empleado> lstEmpleado = new List<Empleado>();
            foreach (DataRow item in dtEmpleado.Rows)
            {
                Empleado empleadoAux = new Empleado();
                empleadoAux.idEmpleado = int.Parse(item["IdEmpleado"].ToString());
                empleadoAux.nombre = item["Nombre"].ToString();
                empleadoAux.direccion = item["Direccion"].ToString();


                lstEmpleado.Add(empleadoAux);
            }

            return lstEmpleado;
        }



        public Empleado obtenerEmpleado(int idEmpleado)
        {
            throw new NotImplementedException();
        }

        public void deleteEmpleado(int id)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));

            BaseHelper.ejecutarSentencia("sp_Eliminar_Empleado", CommandType.StoredProcedure, parametros);

        }
        public Empleado detailsEmpleado(int id)
        {
            DataTable dtEmpleado;
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", id));

            dtEmpleado = BaseHelper.ejecutarConsulta("sp_Consultar_Empleado_PorID", CommandType.StoredProcedure, parametros);

            Empleado datosEmpleado = new Empleado();

            if (dtEmpleado.Rows.Count > 0)
            {
                datosEmpleado.idEmpleado = int.Parse(dtEmpleado.Rows[0]["IdEmpleado"].ToString());
                datosEmpleado.nombre = dtEmpleado.Rows[0]["Nombre"].ToString();
                datosEmpleado.direccion = dtEmpleado.Rows[0]["Direccion"].ToString();

                return datosEmpleado;
            }
            else
            {
                return null;
            }
        }
        public void editEmpleado(Empleado datosEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@IdEmpleado", datosEmpleado.idEmpleado));
            parametros.Add(new SqlParameter("@Nombre", datosEmpleado.nombre));
            parametros.Add(new SqlParameter("@Direccion", datosEmpleado.direccion));

            BaseHelper.ejecutarConsulta("sp_Actualizar_Empleado", CommandType.StoredProcedure, parametros);
        }
        public void createEmpleado(Empleado datosEmpleado)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@Nombre", datosEmpleado.nombre));
            parametros.Add(new SqlParameter("@Direccion", datosEmpleado.direccion));
            BaseHelper.ejecutarConsulta("sp_Agregar_Empleado", CommandType.StoredProcedure, parametros);
        }

    }
}