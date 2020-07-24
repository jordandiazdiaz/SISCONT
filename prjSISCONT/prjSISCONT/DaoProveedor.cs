﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Datos
{
    
    public class DaoProveedor
    {
        private Conexion conexion = new Conexion();
        SqlCommand comando = new SqlCommand();

        public string showProveedor(string ruc)
        {
            SqlDataReader sqlDataReaderProvider;
            DataTable dataTableProvider = new DataTable("tblProveedores");

            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_show_name_proveedor";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@ruc", ruc);

            comando.ExecuteNonQuery();
            sqlDataReaderProvider = comando.ExecuteReader();
            dataTableProvider.Load(sqlDataReaderProvider);
            comando.Parameters.Clear();

            conexion.closeConnection();

            if (dataTableProvider.Rows.Count > 0)
                return dataTableProvider.Rows[0]["RazonSocial"].ToString();
            else
                return null;
        }

        public DataTable allSuppliers()
        {
            SqlDataReader sqlDataReader;
            DataTable dataTableSuppliers = new DataTable();
            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_all_proveedor";
            comando.CommandType = CommandType.StoredProcedure;
            sqlDataReader = comando.ExecuteReader();
            dataTableSuppliers.Load(sqlDataReader);
            conexion.closeConnection();
            return dataTableSuppliers;

        }

        public void insert(string ruc, string razonSocial)
        {
            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_insert_proveedor";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@Ruc", ruc);
            comando.Parameters.AddWithValue("@RazonSocial", razonSocial);

            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.closeConnection();
        }

        public void update(int id, string ruc, string razonSocial)
        {
            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_update_proveedor";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@Id", id);
            comando.Parameters.AddWithValue("@Ruc", ruc);
            comando.Parameters.AddWithValue("@RazonSocial", razonSocial);

            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.closeConnection();
        }

        public void destroy(int id)
        {
            comando.Connection = conexion.openConnection();
            comando.CommandText = "sp_destroy_proveedor";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", id);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.closeConnection();
        }
    }
}
