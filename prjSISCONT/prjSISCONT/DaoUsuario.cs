﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    public class DaoUsuario
    {
        private Conexion conexion = new Conexion();

        SqlCommand comando = new SqlCommand();

        public DataTable login(string usuario, string contrasenia)
        {
            SqlDataReader sqlDataReaderProvider;
            DataTable dataTableProvider = new DataTable("tblUsuarios");

            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_login";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@Usuario", usuario);
            comando.Parameters.AddWithValue("@Contrasenia", contrasenia); 

            comando.ExecuteNonQuery();
            sqlDataReaderProvider = comando.ExecuteReader();
            dataTableProvider.Load(sqlDataReaderProvider);
            comando.Parameters.Clear();

            conexion.closeConnection();

            if (dataTableProvider.Rows.Count > 0)
                return dataTableProvider;
            else
                return null;
        }
    }
}
