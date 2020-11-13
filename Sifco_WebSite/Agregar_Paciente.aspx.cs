using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Agregar_Paciente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void AgregarPaciente(Object sender, EventArgs e)
    {
        string nombre = tx_nombre.Text;
        string dpi = tx_dpi.Text;
        string nacimiento = tx_nacimiento.Text;
        string sexo = tx_sexo.Text;

        ClassConnection cc = new ClassConnection();
        cc.abrir();
        string consulta = "INSERT INTO Paciente (nombre_completo, nacimiento, sexo, dpi) values (@nombre, @nacimiento, @sexo, @dpi) ";
        try
        {
            SqlCommand cmd = new SqlCommand(consulta, cc.conn);
            cmd.Parameters.AddWithValue("@nombre", nombre);
            cmd.Parameters.AddWithValue("@dpi", dpi);
            cmd.Parameters.AddWithValue("@nacimiento", nacimiento);
            cmd.Parameters.AddWithValue("@sexo", sexo);
            cmd.ExecuteNonQuery();

            string script = "alert(\"Paciente creado!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
            


        }
        catch (Exception ex)
        {
            string script = "alert(\"Error al crear Paciente!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
            Console.WriteLine("Error al ejecutar query " + ex );
        }

        Response.Redirect("Agregar_Paciente.aspx");

    }
}