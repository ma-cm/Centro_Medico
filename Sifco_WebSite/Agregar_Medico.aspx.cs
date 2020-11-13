using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Agregar_Medico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void AgregarMedico(Object sender, EventArgs e)
    {
        string nombre = tx_nombre.Text;
        string colegiado = tx_colegiado.Text;
        string nacimiento = tx_nacimiento.Text;
        string sexo = tx_sexo.Text;
        string especialidad = tx_especialidad.Text;
        ClassConnection cc = new ClassConnection();
        cc.abrir();
        string consulta = "INSERT INTO Medico (nombre_completo, colegiado, sexo, nacimiento, especialidad) values (@nombre, @colegiado, @sexo, @nacimiento, @especialidad) ";
        try
        {
            SqlCommand cmd = new SqlCommand(consulta, cc.conn);
            cmd.Parameters.AddWithValue("@nombre", nombre);
            cmd.Parameters.AddWithValue("@colegiado", colegiado);
            cmd.Parameters.AddWithValue("@sexo", sexo);
            cmd.Parameters.AddWithValue("@nacimiento", nacimiento);
            cmd.Parameters.AddWithValue("@especialidad", especialidad);

            cmd.ExecuteNonQuery();

            string script = "alert(\"Medico creado!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);



        }
        catch (Exception ex)
        {
            string script = "alert(\"Error al crear Medico!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
            Console.WriteLine("Error al ejecutar query " + ex);
        }

       // Response.Redirect("Agregar_Medico.aspx");

    }
}