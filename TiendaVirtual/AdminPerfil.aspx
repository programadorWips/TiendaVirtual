<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPerfil.aspx.cs" Inherits="TiendaVirtual.AdminPerfil"  MasterPageFile="~/Logiado.Master"%>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5 espacioPerfil">
                <div class="card" style="width: 20rem;">
                    <asp:Image ID="ImagePerfil" CssClass="img-fluid" Height="280" runat="server" AlternateText="Foto Perfil"/>
                  <div class="card-body">
                      <asp:FileUpload ID="FileUpload1" CssClass="btn btn-dark btn-block" runat="server" />
                      <br />
                    <h5 class="card-title text-center"><asp:Label ID="LabelNombre" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text text-justify">Que excelente sitio para poder realizar mis compras muy interactivo y de uso sencillo que genial.</p>
                      <asp:Button ID="ButtonArchivo" CssClass="btn btn-success btn-block" runat="server" Text="Upload" OnClick="ButtonArchivo_Click" />
                   </div>
                 </div>
            </div>
            <div class="col-md-7 espacioPerfil">
                <div class="accordion" id="accordionExample">
                  <div class="card">
                    <div class="card-header" id="headingOne">
                      <h5 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          Informacion General.</button>
                      </h5>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                      <div class="card-body">
                          <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>------------------------------------------------------------
                          <asp:Label ID="LabelUs" runat="server" Text=""></asp:Label>
                          <br />
                          <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label>-----------------------------------------------------------
                          <asp:Label ID="LabelNb" runat="server" Text=""></asp:Label>
                          <br />
                          <asp:Label ID="Label4" runat="server" Text="Edad:"></asp:Label>---------------------------------------------------------------
                          <asp:Label ID="LabelEd" runat="server" Text=""></asp:Label>
                          <br />
                          <asp:Label ID="Label5" runat="server" Text="Sexo:"></asp:Label>---------------------------------------------------------------
                          <asp:Label ID="LabelSx" runat="server" Text=""></asp:Label>

                          <br />
                          <asp:Label ID="Label1" runat="server" Text="Telefono:"></asp:Label>-----------------------------------------------------------
                          <asp:Label ID="Label1Tlf" runat="server" Text=""></asp:Label>

                          <br />
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingTwo">
                      <h5 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          Mis Productos.
                        </button>
                      </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                      <div class="card-body">
                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSourceProductos2" GridLines="Horizontal" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleted="GridView1_RowDeleted">
                              <Columns>
                                  <asp:CommandField ShowSelectButton="True" />
                                  <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                                  <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                                  <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                  <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                              </Columns>
                              <FooterStyle BackColor="White" ForeColor="#333333" />
                              <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="White" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F7F7F7" />
                              <SortedAscendingHeaderStyle BackColor="#487575" />
                              <SortedDescendingCellStyle BackColor="#E5E5E5" />
                              <SortedDescendingHeaderStyle BackColor="#275353" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourceProductos2" runat="server" ConnectionString="<%$ ConnectionStrings:TiendaVirtualConnectionString2 %>" SelectCommand="SELECT [Producto], [Categoria], [Precio], [Cantidad] FROM [misProductos] ORDER BY [Producto]"></asp:SqlDataSource>
                          <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConnectionString="<%$ ConnectionStrings:TiendaVirtualConnectionString %>" SelectCommand="SELECT * FROM [misProductos] ORDER BY [Producto]"></asp:SqlDataSource>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingThree">
                      <h5 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseTwo">
                          Mis Clientes.</button>
                      </h5>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                      <div class="card-body">
                          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSourceUsuarios" GridLines="Horizontal">
                              <Columns>
                                  <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                  <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                  <asp:BoundField DataField="Cargo" HeaderText="Cargo" SortExpression="Cargo" />
                                  <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                                  <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                                  <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                              </Columns>
                              <FooterStyle BackColor="White" ForeColor="#333333" />
                              <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="White" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                              <SortedAscendingCellStyle BackColor="#F7F7F7" />
                              <SortedAscendingHeaderStyle BackColor="#487575" />
                              <SortedDescendingCellStyle BackColor="#E5E5E5" />
                              <SortedDescendingHeaderStyle BackColor="#275353" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:TiendaVirtualConnectionString3 %>" SelectCommand="SELECT [Usuario], [Nombre], [Cargo], [Edad], [Sexo], [Telefono] FROM [Usuarios] ORDER BY [Usuario]"></asp:SqlDataSource>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div class="card-header" id="headingFour">
                      <h5 class="mb-0">
                        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseTwo">
                          Agrega un Nuevo Producto a la Colecion.</button>
                      </h5>
                    </div>
                    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                      <div class="card-body">
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Articulo:"></asp:Label>
                            <asp:TextBox ID="txtProducto" CssClass="form-control" placeholder="Nintendo 64" runat="server"></asp:TextBox>  
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Descripcion:"></asp:Label>
                            <asp:TextBox ID="txtDescripcion" CssClass="form-control" placeholder="Es una Consola que posee..." runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="5">
                                <asp:ListItem Selected="True" Text="Video Game" Value="Video Juegos"></asp:ListItem>
                                <asp:ListItem  Text="Laptop" Value="Laptops"></asp:ListItem>
                                <asp:ListItem  Text="PC" Value="Pcs"></asp:ListItem>
                            </asp:RadioButtonList>
                              
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="Precio:"></asp:Label>
                            <asp:TextBox ID="txtPrecio" TextMode="Number" CssClass="form-control" placeholder="9999$" runat="server"></asp:TextBox>  
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label9" runat="server" Text="Cantidad:"></asp:Label>
                            <asp:TextBox ID="txtCantidad" TextMode="Number" CssClass="form-control" placeholder="100.000" runat="server"></asp:TextBox>  
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label10" runat="server" Text="Selecione una imagen para el Articulo:"></asp:Label>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </div>
                        
                          <asp:Button ID="ButtonDeleteProd" CssClass="btn btn-danger btn-block" runat="server" Text="Eliminar Producto" OnClick="ButtonDeleteProd_Click"/>
                        <asp:Button ID="ButtonEditProd" CssClass="btn btn-info btn-block" runat="server" Text="Editar Producto" OnClick="ButtonEditProd_Click" />
                        <asp:Button ID="ButtonProductos" CssClass="btn btn-success btn-block" runat="server" Text="Nuevo Producto" OnClick="ButtonProductos_Click" />
                      </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>