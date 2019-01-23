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
    public partial class CabezeraMenu : System.Web.UI.MasterPage
    {
        public static String Usu = "";
        public static String Nombre = "";
        public static String Edad = "";
        public static String Telefono = "";
        public static String Cargo = "";
        public static String Sexo = "";
        public static String Foto = "";

        public static Boolean iniciaSesion = false;
        public static Boolean Cookie = false;


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void footerImg()
        {
            Response.Write("<script>alert('Entro en la img')</script>");
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            if(txtUsuario.Text == "" || txtPassword.Text == "" || txtUsuario.Text == string.Empty || txtPassword.Text == string.Empty)
            {
                validacionUsuario.CssClass = "alert alert-danger";
                validacionUsuario.Text = "no dejar casillas Vacias";

                Response.Write("<script>alert('No dejes Casillas en Blanco')</script>");

                validacionPassword.CssClass = "alert alert-danger";
                validacionPassword.Text = "no dejar casillas Vacias";
            }
            else
            {
                Usu = txtUsuario.Text;
                String Password = txtPassword.Text;

                SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
                SqlCommand cmd = new SqlCommand($"select * from Usuarios where Usuario='{Usu}'", conexion);

                try
                {
                    conexion.Open();
                    SqlDataReader myreader = cmd.ExecuteReader();

                    if (myreader.HasRows)
                    {
                        myreader.Read();
                        //Response.Write($"<script>alert('{myreader.GetString(3)}')</script>");

                        if (Crypto.VerifyHashedPassword(myreader.GetString(3), Password))
                        {
                            if (myreader.GetString(4) == "admin")
                            {
                                Nombre = myreader.GetString(2);
                                Cargo = myreader.GetString(4);
                                Edad = myreader.GetString(5);
                                Sexo = myreader.GetString(6);
                                Telefono = myreader.GetString(7);
                                Foto = myreader.GetString(8);

                                iniciaSesion = true;
                                Cookie = true;
                                HttpCookie cook = new HttpCookie("miCookie");
                                cook.Value = "Administrador";
                                cook.Expires = DateTime.Now.AddMinutes(2);
                                Response.Cookies.Add(cook);

                                Response.BufferOutput = true;
                                Response.Redirect("AdminPerfil.aspx");
                                Response.End();


                            }
                            else if (myreader.GetString(4) == "usuario")
                            {
                                Nombre = myreader.GetString(2);
                                Cargo = myreader.GetString(4);
                                Edad = myreader.GetString(5);
                                Sexo = myreader.GetString(6);
                                Telefono = myreader.GetString(7);
                                Foto = myreader.GetString(8);

                                iniciaSesion = true;
                                Cookie = true;
                                HttpCookie cook = new HttpCookie("miCookie");
                                cook.Value = "Usuario";
                                cook.Expires = DateTime.Now.AddDays(5);

                                HttpCookie cook2 = new HttpCookie("miCookieUsuario");
                                cook2.Value = Usu;
                                cook2.Expires = DateTime.Now.AddDays(5);

                                Response.Cookies.Add(cook);
                                Response.Cookies.Add(cook2);

                                Response.BufferOutput = true;
                                Response.Redirect("UsuarioPerfil.aspx");
                                Response.End();

                            }
                            else
                            {
                                Response.Write($"<script>alert('Ocurrio algun error Inesperado compruebe el servidor')</script>");
                            }
                        }
                        else
                        {
                            Response.Write($"<script>alert('Lo sentimos pero algun dato esta malo')</script>");
                        }

                    }

                }catch(Exception ex)
                {
                    Response.Write($"<script>alert('{ex.Message}')</script>");
                }

            }
            
        }
    }
}