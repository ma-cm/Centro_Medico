using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Agendar_cita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClassConnection cc = new ClassConnection();
        cc.abrir();
        string consulta = "exec SelectMedicos";
        try
        {
            SqlCommand cmd = new SqlCommand(consulta, cc.conn);
            SqlDataAdapter adaptador = new SqlDataAdapter(cmd);
            DataTable tabla = new DataTable();
            adaptador.Fill(tabla);
            //  gvConsultas.DataSource = tabla;


        }
        catch (Exception ex)
        {
            Console.WriteLine("Error al ejecutar query");
        }
    }
}