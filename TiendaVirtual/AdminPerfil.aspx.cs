using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TiendaVirtual
{
    public partial class AdminPerfil : System.Web.UI.Page
    {
        private static String editProducto = "";
        private static String editDescripcion = "";
        private static String editCategoria = "";
        private static String editPrecio = "";
        private static String editCantidad = "";
        private static String editFoto = "";

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
                else if (CabezeraMenu.Cargo != "admin")
                {
                    Response.BufferOutput = true;
                    Response.Redirect("Home.aspx");
                    Response.End();
                }
            } 
            else if (Request.Cookies["miCookie"].Value != "Administrador")
            {
                Response.BufferOutput = true;
                Response.Redirect("UsuarioPerfil.aspx");
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
                        Response.BufferOutput = true;
                        Response.Redirect("Home.aspx");
                        Response.End();

                    }
                    catch(Exception ex)
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

        protected void ButtonProductos_Click(object sender, EventArgs e)
        {
           
            String fotoArticulo = GuardaImagen();

            String query = $"INSERT INTO misProductos (Producto,Descripcion,Categoria,Precio,Cantidad,Foto) VALUES ('{txtProducto.Text}','{txtDescripcion.Text}','{RadioButtonList1.SelectedValue}','{txtPrecio.Text}','{txtCantidad.Text}','{fotoArticulo}')";
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            try
            {
                conexion.Open();
                cmd.ExecuteReader();
                Response.Write($"<script>alert('Se a Guardado el Articulo con Exito..');</script>");

            }
            catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}');</script>");
            }

            txtProducto.Text = "";
            txtDescripcion.Text = "";
            txtPrecio.Text = "";
            txtCantidad.Text = "";
        }

        private String GuardaImagen()
        {
            String nuevaFoto = "";

            if (FileUpload2.HasFile)
            {
                String tipo = System.IO.Path.GetExtension(FileUpload2.FileName);
                if (tipo.ToLower() == ".jpg" || tipo == ".png" || tipo == ".jpeg")
                {
                    FileUpload2.SaveAs(Server.MapPath("~/imagenes/" + FileUpload2.FileName));
                    Response.Write($"<script>alert('se a Guardado con Exito');</script>");
                    nuevaFoto = "imagenes/" + FileUpload2.FileName;
                    //ImagePerfil.ImageUrl = nuevaFoto;

                    //--------------------------Meter a Base de datos---------------------------------------------
  
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

            return nuevaFoto;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write($"<script>alert('{GridView1.SelectedRow.Cells[1].Text}');</script>");
            editProducto = GridView1.SelectedRow.Cells[1].Text;

            String query = $"SELECT * FROM misProductos WHERE Producto ='{editProducto}'";
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            try
            {
                conexion.Open();
                SqlDataReader myreader = cmd.ExecuteReader();

                if (myreader.HasRows)
                {
                    if (myreader.Read())
                    {
                        editDescripcion = myreader.GetString(2);
                        editCategoria =  myreader.GetString(3);
                        editPrecio = Convert.ToString(myreader.GetDouble(4));
                        editCantidad = Convert.ToString(myreader.GetInt32(5));
                        editFoto = myreader.GetString(6);

                        txtProducto.Text = editProducto;
                        txtDescripcion.Text = editDescripcion;
                        txtPrecio.Text = editPrecio;
                        txtCantidad.Text = editCantidad;
                        RadioButtonList1.SelectedValue = editCategoria;
                    }
                }

            }catch(Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}');</script>");
            }

        }

        protected void ButtonEditProd_Click(object sender, EventArgs e)
        {
            if (txtProducto.Text != string.Empty && txtPrecio.Text != string.Empty && txtCantidad.Text != string.Empty)
            {
                if (GuardaImagen() != "")
                {
                    editFoto = GuardaImagen();
                }

                String query = $"UPDATE misProductos SET Producto = '{txtProducto.Text}' , Descripcion = '{txtDescripcion.Text}' ,Categoria = '{RadioButtonList1.SelectedValue}' ,Precio = {txtPrecio.Text} , Cantidad = {txtCantidad.Text}, Foto = '{editFoto}' WHERE Producto = '{editProducto}'";
                SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
                SqlCommand cmd = new SqlCommand(query, conexion);

                try
                {
                    conexion.Open();
                    cmd.ExecuteReader();

                    Response.Write($"<script>alert('Actualizado');</script>");
                    Response.BufferOutput = true;
                    Response.Redirect("Home.aspx");
                    Response.End();
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('{ex.Message}');</script>");
                }
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void ButtonDeleteProd_Click(object sender, EventArgs e)
        {
            String query = $"DELETE FROM misProductos WHERE Producto = '{txtProducto.Text}'";
            SqlConnection conexion = new SqlConnection("data source=DESKTOP-C8LQ8O5; Database=TiendaVirtual; integrated security=SSPI");
            SqlCommand cmd = new SqlCommand(query, conexion);

            try
            {
                conexion.Open();
                cmd.ExecuteReader();

                Response.Write($"<script>alert('Eliminado');</script>");
                Response.BufferOutput = true;
                Response.Redirect("Home.aspx");
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('{ex.Message}');</script>");
            }
        }
    }
}