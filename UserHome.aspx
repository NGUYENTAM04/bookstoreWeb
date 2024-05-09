<%@ Page Title="Trang chủ - mt.com" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="container" style="transform: translateX(0px);">
            <asp:Label ID="lblSuccess" runat="server" CssClass="text-success d-inline-block font" Style="color: #f1819c!important; transform: translateY(-20px);"></asp:Label>
        </div>
        <div class="container-fluid">
                <!-- Vùng trái -->
                <div class="vungTrai py-5 col-xxl-2 col-xl-3 col-lg-3 col-md-4">
                    <h5>Tất cả các danh mục</h5>
                    <a href="#">Sách thiếu nhi</a>
                    <a href="#">Tiểu thuyết</a>
                    <a href="#">Tâm lí học</a>
                    <a href="#">Marketing</a>
                    <a href="#">Khởi nghiệp</a>
                    <a href="#">Kĩ năng sống</a>

                </div>

                <div></div>


                <!-- between -->

                <div class=" container-fluid py-2 col-xl-10 col-md-10" style="width: ; margin-left: 16%;">
                    <div class="  borders row  col-xd-12 ">
                        <div id="carouselExampleDark" class="carousel carousel-dark slide justify-content-center">
                            <div class="carousel-indicators">
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <img src="HinhAnh/web/46e276db-8371-4cd5-90d8-0092a92c6554.png" class="img-fluid w-100 " style="height: 540px;" alt="...">
                                <div class="carousel-item active" data-bs-interval="10000">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>First slide </h5>
                                        <p style="color: white;">Hãy cùng khám phá những cuốn sách thú vị của chúng tôi nào</p>
                                    </div>
                                </div>
                                <div class="carousel-item" data-bs-interval="2000">
                                    <img src="HinhAnh/web/books-1617327_1280.jpg" class="img-fluid w-100 " style="height: 540px;" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Second slide </h5>
                                        <p style="color: white;">Hãy cùng khám phá những cuốn sách thú vị của chúng tôi nào</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img src="HinhAnh/web/375207682_325730046611781_7307899773311548653_n.jpg" class="img-fluid w-100 " style="height: 540px;" alt="...">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Third slide </h5>
                                        <p style="color: white;">Hãy cùng khám phá những cuốn sách thú vị của chúng tôi nào</p>
                                    </div>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>





                        </div>

                    </div>


                </div>


               

        </div>

    </div>
</asp:Content>

