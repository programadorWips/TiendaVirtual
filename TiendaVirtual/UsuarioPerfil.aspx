<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsuarioPerfil.aspx.cs" Inherits="TiendaVirtual.UsuarioPerfil" MasterPageFile="~/Logiado.Master" %>
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
                          Informacion General</button>
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
                          Mis Compras
                        </button>
                      </h5>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                      <div class="card-body">
                          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                              <Columns>
                                  <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                                  <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                                  <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                                  <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                  <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
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
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TiendaVirtualConnectionString4 %>" SelectCommand="SELECT [Producto], [Usuario], [Categoria], [Precio], [Fecha] FROM [FacturaPendiente] WHERE ([Usuario] = @Usuario)">
                              <SelectParameters>
                                  <asp:CookieParameter CookieName="miCookieUsuario" Name="Usuario" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

