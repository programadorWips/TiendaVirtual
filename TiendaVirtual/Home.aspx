<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TiendaVirtual.Home" MasterPageFile="~/CabezeraMenu.Master" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div id="carouselExampleFade1" class="carousel slide carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <a href="#"><asp:ImageButton ID="ImagePCAnlienware" runat="server" CssClass="d-block w-100"   AlternateText="Pc Alien" Height="350"/></a>
                  <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelPc1" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioPc1" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">
                  <a href="#"><asp:ImageButton ID="ImagePCGamer" runat="server" CssClass="d-block w-100"   AlternateText="Pc Gamer" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelPc2" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioPc2" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">
                  <a href="#"><asp:ImageButton ID="ImagePCToshiba" runat="server" CssClass="d-block w-100"   AlternateText="Pc Toshiba" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelPc3" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioPc3" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>

        <div class="col-md-4">
            <div id="carouselExampleFade2" class="carousel slide carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">          
                    <a href="#"><asp:ImageButton ID="ImageLaptopAsus" runat="server" CssClass="d-block w-100" AlternateText="Asus" Height="350"/></a>
                  <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelLaptop1" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioLaptop1" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">
                  <a href="#"><asp:ImageButton ID="ImageLaptopHp" runat="server" CssClass="d-block w-100" AlternateText="HP" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelLaptop2" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioLaptop2" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">               
                  <a href="#"><asp:ImageButton ID="ImageLaptopAlienware" runat="server" CssClass="d-block w-100" AlternateText="Alienware" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelLaptop3" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioLaptop3" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>

        <div class="col-md-4">
            <div id="carouselExampleFade3" class="carousel slide carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <a href="#"><asp:ImageButton ID="ImagePlay4" runat="server" CssClass="d-block w-100" AlternateText="Play4" Height="350"/></a>
                  <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelVGames1" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioVGames1" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">
                  <a href="#"><asp:ImageButton ID="ImageXbox" runat="server" CssClass="d-block w-100" AlternateText="Xbox One" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelVGames2" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioVGames2" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
                <div class="carousel-item">
                  <a href="#"><asp:ImageButton ID="ImagePSP" runat="server" CssClass="d-block w-100" AlternateText="PSP Vita" Height="350"/></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h4><asp:Label runat="server" ID="labelVGames3" ForeColor="Lime"></asp:Label></h4>
                      <h6><asp:Label runat="server" ID="precioVGames3" ForeColor="Lime"></asp:Label></h6>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>
    </div>
</asp:Content>

