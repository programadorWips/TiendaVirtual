using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiendaVirtual
{
    public partial class UsuarioPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["miCookie"] == null)
            {
                if (CabezeraMenu.iniciaSesion == false)
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Home.aspx");
                    Response.End();
                }
                else if (CabezeraMenu.Cargo != "usuario")
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Home.aspx");
                    Response.End();
                }
            }
            else if (Request.Cookies["miCookie"].Value != "Usuario")
            {
                Response.BufferOutput = true;
                Response.Redirect("AdminPerfil.aspx");
                Response.End();
            }

            LabelNombre.Text = CabezeraMenu.Nombre;
            ImagePerfil.ImageUrl = CabezeraMenu.Foto;

            Label1Tlf.Text = CabezeraMenu.Telefono;
            LabelEd.Text = CabezeraMenu.Edad;
            LabelNb.Text = CabezeraMenu.Nombre;
            LabelUs.Text = CabezeraMenu.Usu;
            LabelSx.Text = CabezeraMenu.Sexo;
        }

        protected void ButtonArchivo_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                String tipo = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (tipo.ToLower() == ".jpg" || tipo == ".png" || tipo == ".jpeg")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/imagenes/" + FileUpload1.FileName));
                    Response.Write($"<script>alert('se a Guardado con Exito');</script>");
                    String nuevaFoto = "imagenes/" + FileUpload1.FileName;
                    ImagePerfil.ImageUrl = nuevaFoto;

                    //--------------------------Meter a Base de datos---------------------------------------------

                    String query = $"UPDATE Usuarios SET Foto ='{nuevaFoto}' WHERE Usuario = '{CabezeraMenu.Usu}'";
                    SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
                    SqlCommand cmd = new SqlCommand(query, conexion);

                    try
                    {
                        conexion.Open();
                        cmd.ExecuteReader();
                        /*
                        Response.BufferOutput = true;
                        Response.Redirect("Home.aspx");
                        Response.End();
                        */
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('{ex.Message}');</script>");
                    }

                }
                else
                {
                    Response.Write($"<script>alert('Formato no Aceptado');</script>");
                }
            }
            else
            {
                Response.Write($"<script>alert('Por Favor selecione una Imagen');</script>");
            }
        }
    }
}