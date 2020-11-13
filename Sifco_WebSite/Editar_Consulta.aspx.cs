using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Editar_Consulta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void ConsultarPaciente(Object sender, EventArgs e)
    {
        string paciente = tx_codigo.Text;
        ClassConnection cc = new ClassConnection();
        cc.abrir();
        string consulta = "exec SelectConsultaPaciente @codigo = @paciente ";
        try
        {
            SqlCommand cmd = new SqlCommand(consulta, cc.conn);
            cmd.Parameters.AddWithValue("@paciente", paciente);

            /*   SqlDataAdapter adaptador = new SqlDataAdapter(cmd);
               DataTable tabla = new DataTable();
               adaptador.Fill(tabla);
               GridView1.DataSource = tabla;*/

            SqlDataReader lector = cmd.ExecuteReader();

            while (lector.Read())
            {
                tx_paciente.Text = lector.GetValue(0).ToString();
                tx_medico.Text = lector.GetValue(1).ToString();
                tx_fecha.Text = lector.GetValue(2).ToString();
                tx_hora.Text = lector.GetValue(3).ToString();
                tx_estado.Text = lector.GetValue(4).ToString();
            }

        }
        catch (Exception ex)
        {

            Console.WriteLine("Error al ejecutar query " + ex);
        }


    }

    public void EditarConsultaPaciente(Object sender, EventArgs e)
    {

    }

}