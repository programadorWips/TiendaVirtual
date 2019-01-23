using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Web.Mvc;


namespace TiendaVirtual
{
    public partial class ProductosLogin : System.Web.UI.Page
    {
        private static String[] Productos = new string[100];
        private static String[] Descripcion = new string[100];
        private static String[] Categoria = new string[100];
        private static String[] Precio = new string[100];
        private static String[] Foto = new string[100];

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


            todoProductos();
        }

        private void guardaFactura(int n)
        {
            String query = $"INSERT INTO FacturaPendiente (Producto,Usuario,Categoria,Precio,Fecha) VALUES ('{Productos[n]}','{CabezeraMenu.Usu}','{Categoria[n]}','{Precio[n]}','{Convert.ToString(DateTime.Now.Date)}')";
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            try
            {
                conexion.Open();
                cmd.ExecuteReader();
            }
            catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}')</script>");
            }
            
        }

        private void todoProductos()
        {
            String query = $"SELECT * FROM misProductos ORDER BY idProducto DESC";
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            int i = 0;
            try
            {
                conexion.Open();
                SqlDataReader myreader = cmd.ExecuteReader();

                if (myreader.HasRows)
                {
                    while (myreader.Read())
                    {
                        Productos[i] = myreader.GetString(1);
                        Descripcion[i] = myreader.GetString(2);
                        Categoria[i] = myreader.GetString(3);
                        Precio[i] = Convert.ToString(myreader.GetDouble(4));
                        Foto[i] = myreader.GetString(6);

                        i++;
                    }
                }

                Image1.ImageUrl = Foto[0];
                Label1.Text = Productos[0];
                Label2.Text = Descripcion[0];
                Label3.Text = Precio[0] + "$"
;

                //------------------- cuadro 2 ----------------------

                Image2.ImageUrl = Foto[1];
                Label4.Text = Productos[1];
                Label5.Text = Descripcion[1];
                Label6.Text = Precio[1] + "$";

                //------------------- cuadro 3 ----------------------

                Image3.ImageUrl = Foto[2];
                Label7.Text = Productos[2];
                Label8.Text = Descripcion[2];
                Label9.Text = Precio[2] + "$";

                //------------------- cuadro 4 ----------------------

                Image4.ImageUrl = Foto[3];
                Label10.Text = Productos[3];
                Label11.Text = Descripcion[3];
                Label12.Text = Precio[3] + "$";

                //------------------- cuadro 5 ----------------------

                Image5.ImageUrl = Foto[4];
                Label13.Text = Productos[4];
                Label14.Text = Descripcion[4];
                Label15.Text = Precio[4] + "$";

                //------------------- cuadro 6 ----------------------

                Image6.ImageUrl = Foto[5];
                Label16.Text = Productos[5];
                Label17.Text = Descripcion[5];
                Label18.Text = Precio[5] + "$";

                //------------------- cuadro 7 ----------------------

                Image7.ImageUrl = Foto[6];
                Label19.Text = Productos[6];
                Label20.Text = Descripcion[6];
                Label21.Text = Precio[6] + "$";

                //------------------- cuadro 8 ----------------------

                Image8.ImageUrl = Foto[7];
                Label22.Text = Productos[7];
                Label23.Text = Descripcion[7];
                Label24.Text = Precio[7] + "$";

                //------------------- cuadro 9 ----------------------

                Image9.ImageUrl = Foto[8];
                Label25.Text = Productos[8];
                Label26.Text = Descripcion[8];
                Label27.Text = Precio[8] + "$";



            }
            catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            guardaFactura(0);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            guardaFactura(1);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            guardaFactura(2);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            guardaFactura(3);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            guardaFactura(4);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            guardaFactura(5);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            guardaFactura(6);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            guardaFactura(7);
            Response.BufferOutput = true;
            Response.Redirect("Home.aspx");
            Response.End();
        }
    }
}