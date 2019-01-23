<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TiendaVirtual.Registro" MasterPageFile="~/CabezeraMenu.Master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row micontenido">
            <div class="col-md-5">
                <div class="card micard">
                    <div class="card-header cd-header">
                        <h3>Se parte de Nosotros</h3>
                    </div>
                    <div class="card-body">
                        <p class="text-justify">
                            Unetenos Somos los encargados de tus Compras y ventas sean mas divertidas y faciles, dejanos el trabajo
                            duro a nosotros y solo disfruta de los veneficios. Una ves incrito ya puedes comprar,comentar,vender, ofertar
                            y muchas mas cosas personaliza tu espacio y has de este tu nuevo lugar para ingresos y mucho mas.
                        </p>
                        <img src="imagenes/FotoRegistro.jpg" alt="Foto de Registro" class="img-fluid" height="300" />
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card micard">
                    <div class="card-header cd-header">
                        <h3 class="text-center">Registro</h3>
                    </div>
                    <div class="card-body form-group">
                        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="txtUsuario" placeholder="V 239554435" CssClass="form-control" runat="server" required="true"></asp:TextBox>

                        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                        <asp:TextBox ID="txtNombre" placeholder="Pablo" CssClass="form-control" runat="server" required="true"></asp:TextBox>

                        <asp:Label ID="Label3" runat="server" Text="Edad:"></asp:Label>
                        <asp:TextBox ID="txtEdad" placeholder="24" CssClass="form-control" runat="server" TextMode="Number" required="true"></asp:TextBox>

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="3">
                            <asp:ListItem Text="Masculino" Selected="True" Value="M"></asp:ListItem>
                            <asp:ListItem Text="Femenino" Value="F"></asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
                        <asp:TextBox ID="txtTelefono" placeholder="04121093622" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>

                        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="txtPassword" placeholder="12345" CssClass="form-control" runat="server" TextMode="Password" required="true"></asp:TextBox>

                        <asp:Label ID="Label6" runat="server" Text="Confirm Password:"></asp:Label>
                        <asp:TextBox ID="txtPassword2" placeholder="12345" CssClass="form-control" runat="server" TextMode="Password" required="true"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPassword" ControlToCompare="txtPassword2" CssClass="alert alert-danger" ErrorMessage="No coinciden"></asp:CompareValidator>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="ButtonRegistro" runat="server" CssClass="btn btn-lg btn-success float-right" Text="registrar" OnClick="ButtonRegistro_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

