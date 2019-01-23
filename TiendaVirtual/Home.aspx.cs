using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mvc;
using System.Data.SqlClient;

namespace TiendaVirtual
{
    public partial class Home : System.Web.UI.Page
    {
        private String[] nombreProducto = new string[100];
        private double[] precioProducto = new Double[100];
        private String[] descripcionProducto = new String[100];
        private String[] fotoProducto = new String[100];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (CabezeraMenu.iniciaSesion == true && CabezeraMenu.Cargo == "admin")
            {
                Response.BufferOutput = true;
                Response.Redirect("AdminPerfil.aspx");
                Response.End();
            }
            else if (CabezeraMenu.iniciaSesion == true && CabezeraMenu.Cargo == "usuario")
            {
                Response.BufferOutput = true;
                Response.Redirect("UsuarioPerfil.aspx");
                Response.End();
            }
            else if (Request.Cookies["miCookie"] != null)
            {
                if(Request.Cookies["miCookie"].Value == "Administrador")
                {
                    Response.BufferOutput = true;
                    Response.Redirect("AdminPerfil.aspx");
                    Response.End();
                }
                
            }
            else if (Request.Cookies["miCookie"] != null)
            {
                if(Request.Cookies["miCookie"].Value == "Usuario")
                {
                    Response.BufferOutput = true;
                    Response.Redirect("UsuarioPerfil.aspx");
                    Response.End();
                }
                
            }

            BuscaProductos();
        }

        private void BuscaProductos()
        {
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand($"select * from misProductos where Categoria ='Video Juegos' ORDER BY idProducto DESC", conexion);

            SqlConnection conexion2 = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd2 = new SqlCommand($"select * from misProductos where Categoria ='Laptops' ORDER BY idProducto DESC", conexion2);

            SqlConnection conexion3 = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd3 = new SqlCommand($"select * from misProductos where Categoria ='Pcs' ORDER BY idProducto DESC", conexion3);

            int i = 0;

            try
            {
                conexion.Open();
                SqlDataReader myReader = cmd.ExecuteReader();

                if (myReader.HasRows)
                {

                    while (myReader.Read())
                    {
                        this.nombreProducto[i] = myReader.GetString(1);
                        this.descripcionProducto[i] = myReader.GetString(2);
                        this.precioProducto[i] = myReader.GetDouble(4);

                        this.fotoProducto[i] = myReader.GetString(6);

                        //Response.Write($"<script>alert('{nombreProducto[i]}')</script>");

                        i++;
                    }

                }
                else
                {
                    if(i == 0)
                    {
                        i = 3;
                    }
                }

                conexion.Close();

                conexion2.Open();
                SqlDataReader myReader2 = cmd2.ExecuteReader();

                if (myReader2.HasRows)
                {

                    while (myReader2.Read())
                    {
                        this.nombreProducto[i] = myReader2.GetString(1);
                        this.descripcionProducto[i] = myReader2.GetString(2);
                        this.precioProducto[i] = myReader2.GetDouble(4);

                        this.fotoProducto[i] = myReader2.GetString(6);

                       // Response.Write($"<script>alert('{nombreProducto[i]}')</script>");

                        i++;
                    }
                }
                else
                {
                    if (i == 0)
                    {
                        i = 6;
                    }
                }

                conexion2.Close();

                conexion3.Open();
                SqlDataReader myReader3 = cmd3.ExecuteReader();

                if (myReader3.HasRows)
                { 

                    while (myReader3.Read())
                    {
                        this.nombreProducto[i] = myReader3.GetString(1);
                        this.descripcionProducto[i] = myReader3.GetString(2);
                        this.precioProducto[i] = myReader3.GetDouble(4);

                        this.fotoProducto[i] = myReader3.GetString(6);

                        //Response.Write($"<script>alert('{nombreProducto[i]}')</script>");

                        i++;
                    }
                }

                conexion3.Close();

                ImageXbox.ImageUrl = this.fotoProducto[0];
                ImagePlay4.ImageUrl = this.fotoProducto[1];
                ImagePSP.ImageUrl = this.fotoProducto[2];

                labelVGames1.Text = this.nombreProducto[1];
                labelVGames2.Text = this.nombreProducto[0];
                labelVGames3.Text = this.nombreProducto[2];

                precioVGames1.Text = Convert.ToString(this.precioProducto[1]) + "$";
                precioVGames2.Text = Convert.ToString(this.precioProducto[0]) + "$";
                precioVGames3.Text = Convert.ToString(this.precioProducto[2]) + "$";
                //--------------------------------------------------------------------------------------------
                ImageLaptopHp.ImageUrl = this.fotoProducto[3];
                ImageLaptopAlienware.ImageUrl = this.fotoProducto[4];
                ImageLaptopAsus.ImageUrl = this.fotoProducto[5];

                labelLaptop1.Text = this.nombreProducto[3];
                labelLaptop2.Text = this.nombreProducto[4];
                labelLaptop3.Text = this.nombreProducto[5];

                precioLaptop1.Text = Convert.ToString(this.precioProducto[3]) + "$";
                precioLaptop2.Text = Convert.ToString(this.precioProducto[4]) + "$";
                precioLaptop3.Text = Convert.ToString(this.precioProducto[5]) + "$";
                //--------------------------------------------------------------------------------------------
                ImagePCGamer.ImageUrl = this.fotoProducto[6];
                ImagePCAnlienware.ImageUrl = this.fotoProducto[7];
                ImagePCToshiba.ImageUrl = this.fotoProducto[8];

                labelPc1.Text = this.nombreProducto[6];
                labelPc2.Text = this.nombreProducto[7];
                labelPc3.Text = this.nombreProducto[8];

                precioPc1.Text = Convert.ToString(this.precioProducto[6]) + "$";
                precioPc2.Text = Convert.ToString(this.precioProducto[7]) + "$";
                precioPc3.Text = Convert.ToString(this.precioProducto[8]) + "$";
            }
            catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}')</script>");
            }
        }
    }

}