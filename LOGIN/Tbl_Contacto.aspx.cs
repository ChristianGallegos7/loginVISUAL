using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace LOGIN
{
    public partial class Tbl_Contacto : System.Web.UI.Page
    {

        //CONEXION

        SqlConnection sqlcon = new SqlConnection(@"Data Source=DESKTOP-47VJRID;Initial Catalog='web';Integrated Security=True");
        // DESKTOP-47VJRID
        //VERDEZOTO2
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                mostrar_contacto();
            }
        }

        private void mostrar_contacto()
        {
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }

            SqlDataAdapter sqlda = new SqlDataAdapter("MostrarContacto", sqlcon);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            sqlda.Fill(dt);
            sqlcon.Close();


            grv_contacto.DataSource = dt;
            grv_contacto.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_guarda_Click(object sender, EventArgs e)
        {
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
                SqlCommand sqlcmd = new SqlCommand("CrearEditarContacto", sqlcon);
                sqlcmd.CommandType = CommandType.StoredProcedure;
                sqlcmd.Parameters.AddWithValue("@con_id", (HiddenField1.Value == "" ? 0 : Convert.ToInt32(HiddenField1.Value)));
                sqlcmd.Parameters.AddWithValue("@con_nom", txt_nom.Text);
                sqlcmd.Parameters.AddWithValue("@con_dir", txt_dir.Text);
                sqlcmd.Parameters.AddWithValue("@con_tel", txt_tel.Text);
                sqlcmd.Parameters.AddWithValue("@con_fn", Calendar1.SelectedDate);
                sqlcmd.ExecuteNonQuery();
                sqlcon.Close();

                string conid = HiddenField1.Value;

                if (conid == "")
                {
                    lbl_mensaje.Text = "DATOS GUARDADOS CON EXITO";
                }
                else
                {
                    lbl_mensaje.Text = "EDITADO CON EXITO";
                }
            }

        }

        protected void btn_edita_Click(object sender, EventArgs e)
        {

        }

        protected void btn_elimina_Click(object sender, EventArgs e)
        {

        }

        protected void btn_seleccione_Click(object sender, EventArgs e)
        {


        }

        protected void btn_seleccionee_Click(object sender, EventArgs e)
        {
            int con_id = 0;
            if (sender is Button)
            {
                GridViewRow row = ((Button)sender).NamingContainer as GridViewRow;
                if (row != null)
                {
                    HiddenField1.Value = row.Cells[0].Text;
                    txt_nom.Text = row.Cells[1].Text;
                    txt_dir.Text = row.Cells[2].Text;
                    txt_tel.Text = row.Cells[3].Text;
                    Calendar1.SelectedDate = Convert.ToDateTime(row.Cells[4].Text);
                }
            }
            btn_guarda.Text = "Actualizar";
        }
    }
}