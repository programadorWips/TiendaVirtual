<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductosLogin.aspx.cs" Inherits="TiendaVirtual.ProductosLogin" MasterPageFile="~/Logiado.Master" %>

<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image1" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><asp:Button ID="Button1" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button1_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image2" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label><asp:Button ID="Button2" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button2_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image3" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label><asp:Button ID="Button3" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button3_Click" />
                  </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image4" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label11" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label><asp:Button ID="Button4" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button4_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image5" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label13" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label14" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label15" runat="server" Text=""></asp:Label><asp:Button ID="Button5" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button5_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image6" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label16" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label17" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label18" runat="server" Text=""></asp:Label><asp:Button ID="Button6" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button6_Click" />
                  </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image7" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label19" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label20" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label21" runat="server" Text=""></asp:Label><asp:Button ID="Button7" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button7_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image8" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label22" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label23" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label24" runat="server" Text=""></asp:Label><asp:Button ID="Button8" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" OnClick="Button8_Click" />
                  </div>
                </div>
            </div>

            <div class="col-md-4 espaciosProductos">
                <div class="card" style="width: 20rem;">
                  <asp:Image ID="Image9" CssClass="card-img-top" runat="server" />
                  <div class="card-body">
                    <h5 class="card-title"><asp:Label ID="Label25" runat="server" Text=""></asp:Label></h5>
                    <p class="card-text">
                        <asp:Label ID="Label26" runat="server" Text=""></asp:Label>.
                    </p>
                    <asp:Label ID="Label27" runat="server" Text=""></asp:Label><asp:Button ID="Button9" CssClass="btn btn-dark float-right" runat="server" Text="Comprar" />
                  </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
