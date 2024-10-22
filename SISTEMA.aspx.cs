using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Management.Instrumentation;
//using Oracle.ManagedDataAccess.Client; // Importa el proveedor de Oracle

namespace FACTCONTA
{
    public partial class SISTEMA : System.Web.UI.Page
    {
        //Utilizar con Oracle
        // OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString);

        //Usar con SQL Microsoft
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {


            {
                con.Open();
            }
        }
    

        protected void btn_Borrar_Click(object sender, EventArgs e)
        {
            //Codigo funcinal 
              if (!string.IsNullOrWhiteSpace(txt_Consultar.Text))
   {
       //Para SQL Server
       using (SqlCommand cmd = new SqlCommand("DELETE FROM [Table] WHERE NUM_COMPROB = @NUM_COMPROB", con))
       {



           cmd.Parameters.AddWithValue("@NUM_COMPROB", txt_Consultar.Text);

           // Abrir la conexión si no está abierta
           if (con.State != ConnectionState.Open)
           {
               con.Open();
           }

           // Mensaje de advertencia
           ClientScript.RegisterStartupScript(this.GetType(), "alert",
               "alert('Se borrarán los datos...');", true);

           // Ejecutar el comando de borrado
           int rowsAffected = cmd.ExecuteNonQuery();

           // Mensaje de confirmación
           if (rowsAffected > 0)
           {
               // Mostrar mensaje de éxito después del borrado
               ClientScript.RegisterStartupScript(this.GetType(), "alertSuccess",
                   "alert('Datos Borrados');", true);
               dgv_Conta.DataBind(); // Actualizar el DataGridView
           }
           else
           {
               lbl_Mensaje.Text = "No se encontró ningún registro para borrar.";
           }
       }
   }
   else
   {
       lbl_Mensaje.Text = "Por favor, introduzca un número de comprobante válido.";
   }
 }



         


            protected void btn_Consultar_Click(object sender, EventArgs e)
        {
             string find = "select * from [Table] where (NUM_COMPROB like '%' +@NUM_COMPROB+ '%')";
             SqlCommand cmd = new SqlCommand(find, con);
             cmd.Parameters.Add("@NUM_COMPROB", SqlDbType.NVarChar).Value = txt_Consultar.Text;
             cmd.ExecuteNonQuery();

             SqlDataAdapter da = new SqlDataAdapter();
             da.SelectCommand = cmd;
             DataSet ds = new DataSet();
             da.Fill(ds, "NUM_COMPROB");
             dgv_Conta.DataSourceID = null;
             dgv_Conta.DataSource = ds;
             dgv_Conta.DataBind();

             if (ds.Tables["NUM_COMPROB"].Rows.Count > 0)
             {
                btn_Borrar.Enabled = true; // Habilitar botón si se encuentra el registro

             }
             else

             btn_Borrar.Enabled = false; // Deshabilitar si no se encuentra   

            {


             con.Close();
             lbl_Mensaje.Text = "Datos fueron seleccionados";




          

        }
    }
    }
}