<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ApplicationWeb2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">

                <div id="imageCarousel" class="carousel slide" data-interval="2000"
                    data-ride="carousel" pause="hover" data-wrap="true" style="text-align: center;">
                    <ol class="carousel-indicators">
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1"></li>
                        <li data-target="#imageCarousel" data-slide-to="2"></li>
                        <li data-target="#imageCarousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner" style="text-align: center">
                        <div class="item active">
                            <img src="Img/baguette.jpg" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Baguette</h3>
                            </div>
                        </div>

                        <div class="item">
                            <img src="Img/brioche.jpg" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Brioche</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Img/croissant.jpeg" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Croissant</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Img/pain banane.jpg" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Pain Banane</h3>
                            </div>
                        </div>
                    </div>
                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
