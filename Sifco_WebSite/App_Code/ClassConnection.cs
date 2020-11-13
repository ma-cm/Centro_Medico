using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Descripción breve de ClassConnection
/// </summary>
public class ClassConnection
{
    string cadena = "Data Source=LAPTOP-1GRS5C6I;Initial Catalog=sifco_db; Integrated Security=True";
    public SqlConnection conn = new SqlConnection();
    public ClassConnection()
    {
        conn.ConnectionString = cadena;      
    }

    public void abrir()
    {
        try
        {
            conn.Open();
            Console.WriteLine("Conexion abierta");
        }catch(Exception ex)
        {
            Console.WriteLine("Error al abrir conexion " + ex);
        }
    }

    public void cerrar()
    {
        conn.Close();
    }
}