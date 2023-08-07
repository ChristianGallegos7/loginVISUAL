using System;

namespace LOGIN
{
    public partial class Validaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_sololetra.Attributes.Add("onkeypress", "javascript:return no_letras(event);");
                txt_solonumeros.Attributes.Add("onkeypress", "javascript:return no_numeros(event);");

            }
        }
    }
}