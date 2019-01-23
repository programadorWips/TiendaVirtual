using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiendaVirtual
{
    public partial class Logiado : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void MenuLogout_MenuItemClick(object sender, MenuEventArgs e)
        {
            CabezeraMenu.Cargo = "";
            CabezeraMenu.Edad = "";
            CabezeraMenu.Sexo = "";
            CabezeraMenu.Telefono = "";
            CabezeraMenu.Foto = "";

            CabezeraMenu.iniciaSesion = false;
            CabezeraMenu.Cookie = false;

            Response.Cookies["miCookie"].Expires = DateTime.Now.AddDays(-10);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }
    }
}