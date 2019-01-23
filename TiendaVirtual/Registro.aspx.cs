using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Mvc;
using System.Data.SqlClient;
using System.Web.Helpers;

namespace TiendaVirtual
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonRegistro_Click(object sender, EventArgs e)
        {
            String cargo = "usuario";
            String Usuario = txtUsuario.Text;
            String Password = Crypto.HashPassword(txtPassword.Text);
            String Nombre = txtNombre.Text;
            String Edad = txtEdad.Text;

            String Sexo = RadioButtonList1.SelectedValue;
            String Telefono = txtTelefono.Text;
            String Foto = "imagenes/fotoPerfil.jpg";

            

            String query = $"INSERT INTO Usuarios (Usuario, Nombre, Password, Cargo, Edad, Sexo, Telefono, Foto) VALUES('{Usuario}', '{Nombre}', '{Password}','{cargo}','{Edad}','{Sexo}','{Telefono}','{Foto}')";

            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            try
            {
                conexion.Open();
                cmd.ExecuteReader();

                Response.Write("<script>alert('Se a Registrado con exito')</script>");
            }
            catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}')</script>");
            }
        }
    }
}