<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="IIIBF_BUK_ALUMNI.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="img/Carousel/Images01.jpg" alt="Carousel Image 01">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="img/Carousel/Images02.jpg" alt="Carousel Image 02">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="img/Carousel/Images03.jpg" alt="Carousel Image 03">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="img/Carousel/Images04.jpg" alt="Carousel Image 04">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="img/Carousel/Images05.jpg" alt="Carousel Image 05">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</asp:Content>
