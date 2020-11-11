using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Consultar_datos_consulta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
    }

    void ConsultarPaciente()
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
        {
            
            string n = String.Format("{0}", Request.Form["tx_codigo"]);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SelectMedicos";
            cmd.Connection = conn;
            conn.Open();
            gvConsultas.DataSource = cmd.ExecuteReader();
            conn.Close();
        }
    }
}