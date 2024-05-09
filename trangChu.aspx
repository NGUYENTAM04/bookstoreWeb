<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trangChu.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/x-icon" href="anhBaiThucHanh_TranVinhXuyen/367363094_265519156442780_3932990590385373470_n.png" style="background:pink; width: 32px; height: 32px;"
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang sách trực tuyến - mt.com</title>

    <link rel="stylesheet" href="styleWeb.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">


    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css" integrity="sha512-wnea99uKIC3TJF7v4eKk4Y+lMz2Mklv18+r4na2Gn1abDRPPOeef95xTzdwGD9e6zXJBteMIhZ1+68QC5byJZw==" crossorigin="anonymous" referrerpolicy="no-referrer" />--%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>

                <div class="container mx-auto"> 
                    <h1 class="text-center text-3xll font-bold" style="display:none;">Filter Products</h1>

                    <form class="text-center py-4 " style="display:none;">
                        <input type="text" id="filterlput" placeholder="Filter"  class="placeholder-gray-800 focus:outline-none bg-gray-200 text-gray-800 w-2/4 py-2 px-3" style="display:none;"/>
                    </form>

                    <%-- product grid --%>
                    <div class="products  md:grid-cols-4">
                        <div class=" container-fluid row py-2 col-xl-10 col-md-5" style="display:none;" >
                              <div class="  row  col-md-4 " style="padding-left: 0.1%; z-index: 3!important; position: absolute; top: 20%; left: 34%;opacity:.9; ">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="row media col-mb-3 mb-3 y-2 ">
                                            <a class="col-md-2" style="margin-right: 0.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">
                                                <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="anhBaiThucHanh_TranVinhXuyen/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>">
                                            </a>
                                            &nbsp;<div class="media-body col-md-10 row img-thumbnail" style="display: flex; align-items: center; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5); font-size: 12px;">

                                                <%--<asp:Label id="ProducName"  class="mt-0 font col-md-7 font_Cart"   style="font-size:12px; margin-bottom:0px;" runat="server" Text="Label"> <%# Eval("ProducName") %></asp:Label>--%>
                                                <h5 id="ProducName" runat="server" class="mt-0 font col-md-7 font_Cart" style="font-size: 12px; margin-bottom: 0px;"><%# Eval("ProducName") %></h5>

                                                <div class=" col-md-5  proPrice" style="padding: 0; font-size: 12px; text-align: end;"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice" style="font-size: 12px;"><%# Eval("_ProductPrice") %></span>   <span class="discount" style="font-size: 12px;">-<%# Eval("DiscAmount") %>% </span></div>

                                            </div>
                                        </div>



                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>

                </div>
                <script src="./begin.js"></script>


                <div class=" container-fluid row py-2 col-xl-10 col-md-5" style="display:none;" >
                    <div class="  row  col-md-4 " style="padding-left: 0.1%; z-index: 3!important; position: absolute; top: 20%; left: 34%;opacity:.9; ">
                        <asp:Repeater ID="rptrProducts_" runat="server">
                            <ItemTemplate>
                                <div class="row media col-mb-3 mb-3 ">
                                    <a class="col-md-2" style="margin-right: 0.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">
                                        <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="anhBaiThucHanh_TranVinhXuyen/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>">
                                    </a>
                                    &nbsp;<div class="media-body col-md-10 row img-thumbnail" style="display: flex; align-items: center; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5); font-size:12px;">
                                        
                                        <%--<asp:Label id="ProducName"  class="mt-0 font col-md-7 font_Cart"   style="font-size:12px; margin-bottom:0px;" runat="server" Text="Label"> <%# Eval("ProducName") %></asp:Label>--%>
                                        <h5 id="ProducName"  runat="server" class="mt-0 font col-md-7 font_Cart"   style="font-size:12px; margin-bottom:0px;"><%# Eval("ProducName") %></h5>

                                        <div class=" col-md-5  proPrice" style="padding: 0;font-size:12px; text-align: end;"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice" style="font-size:12px;"><%# Eval("_ProductPrice") %></span>   <span class="discount" style="font-size:12px;">-<%# Eval("DiscAmount") %>% </span></div>

                                    </div>
                                </div>



                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>

            </div>



            <%-- ____________________________ --%>

            <%-- Header --%>
            <div class="container-fluid" style="position: relative; z-index: 2;">
                <ul class=" container-fluid justify-content-center ml-5 header" style="padding-left: 10%; margin-bottom: -24px;">
                    <nav class="  navbar navbar-expand-lg  mx-2 pl-5">
                        <div class="container">
                            <a class="navbar-brand " href="trangChu.aspx" style="margin-right: 0px; transform: translateX(-32%);">
                                <img class="" src="HinhAnh/375702355_690255522552442_9153935854360398161_n.png" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mr-20 mb-lg-0  " style="padding-left: 3%;">
                                    <li class="parentMenu py-5" style="padding-right: 10px;">
                                        <a href="#">Giới thiệu</a>
                                        <div class="submenu" style="width: 40%;">
                                            <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">
                                                <p style="text-align: justify;">
                                                    Chào mừng bạn đến với Công ty Bán Sách MT (MT Bookstore)! Chúng tôi tự hào là một trong những doanh nghiệp hàng đầu trong ngành sách tại khu vực  trong việc cung cấp sách chất lượng cho độc giả và đối tác thân thiết của chúng tôi.<br />
                                                        Sứ mệnh của chúng tôi:<br />
                                                    Chúng tôi cam kết đem đến kiến thức, tri thức và giá trị văn hóa cho mọi người thông qua việc cung cấp một loạt sách đa dạng, từ các thể loại đến các mức giá khác nhau, đáp ứng nhu cầu đa dạng của độc giả và đối tác kinh doanh của chúng tôi.<br />
                                                       Dịch vụ của chúng tôi:<br />
                                                    - Giao hàng nhanh chóng và đáng tin cậy đến tận cửa nhà.<br />
                                                    - Tư vấn sách thông qua nhân viên nhiệt tình và có kinh nghiệm.<br />
                                                    - Chương trình khách hàng thân thiết với ưu đãi đặc biệt.<br />
                                                      Đến với Công ty Bán Sách MT để khám phá thế giới vô tận của tri thức và sáng tạo thông qua sách. Chúng tôi hy vọng sẽ được phục vụ và hỗ trợ bạn trong hành trình tìm hiểu và khám phá thông qua những cuốn sách thú vị.

                                                </p>
                                            </a>
                                            
                                        </div>
                                    </li>

                                    <li class="parentMenu py-5" style="padding-right: 10px;">
                                        <a href="#"><i class="fa-solid fa-list-check" style="padding: 0px 12px;"></i></a>
                                        <!--Lựa chọn-->
                                        <div class="submenu" style="width: 12%;">
                                            <a href="sachThieuNhi.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Sách thiếu nhi</a>
                                            <a href="sachTieuThuyet.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Tiểu thuyết</a>
                                            <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Tâm lí học</a>
                                            <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Marketing</a>
                                            <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Khởi nghiệp</a>
                                            <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Kĩ năng sống</a>
                                        </div>
                                    </li>



                                    <!-- Search  -->
                                    <li class="d-flex py-5" style="padding-right: 10px;" role="search">
                                        <asp:TextBox ID="txtSearch" runat="server" class="form-control my-2 " type="search" placeholder="Search" aria-label="Search" Style="width: 470px;"></asp:TextBox>
                                        <%--<input id="txtSearch" runat="server" class="form-control my-2 " type="search" placeholder="Search" aria-label="Search" style="width: 470px;">--%>
                                        <button class=" action_btn   my-2 mx-3" type="submit " onclick="btnSearch_Click">Search</button>

                                    </li>
                                    <li class="py-5" style="padding-right: 10px;"><a href="#">Thông Báo</a></li>
                                    <%--<li class="py-5"><a href="#">Giỏ Hàng</a></li>--%>
                                    <li class="py-5">
                                        <a href="Cart.aspx" class="">
                                            <%--<button type="button" class="btn position-relative">--%>
                                                 Giỏ hàng
                                                 <span id="productCount" runat="server" class="position-relative top-0 start-6 translate-middle badge rounded-pill bg-danger" style="color: white; left: 6%;"><%--số lượng sản phẩm--%>
                                                     <span class="visually-hidden">New alerts</span>
                                                 </span>

                                            <%-- </button>--%>

                                        </a>
                                    </li>

                                    <!-- Tài khoản  -->
                                    <li class="parentMenu py-5" style="padding-right: 10px;">
                                        <a href="#">Tài khoản</a>
                                        <div class="submenu" style="width: 10%;">
                                            <a href="formDangNhap.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Đăng nhập</a>
                                            <a href="formDangKi.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Đăng kí</a>
                                        </div>
                                    </li>

                                    <!-- Liên hệ  -->
                                    <li class="parentMenu py-5 " style="padding-right: 10px;">
                                        <a href="#" class="contact">Liên Hệ</a>
                                        <div class="submenu submenu_contact " style="right: 0%; transform: translateX(-9%);">
                                            <div class="item-contact d-flex align-items-center pt-1 px-3">
                                                <i class="fas fa-home text-secondary"></i>
                                                <span>Q.Tân Phú, TP.Hồ Chí Minh</span>
                                            </div>
                                            <div class="item-contact d-flex align-items-center  pt-1 px-3">
                                                <i class="fas fa-envelope text-secondary"></i>
                                                <span>info@mt.com.vn</span>
                                            </div>
                                            <div class="item-contact d-flex align-items-center  pt-1 px-3">
                                                <i class="fas fa-phone text-secondary"></i>
                                                <span>1800656463</span>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </nav>
                </ul>

            </div>
            <%-- Header End --%>

            <!-- Content -->
            <!-- <div class="menu col-xm-12 ">

    <!-- Vùng trái -->
            <div class="vungTrai py-5 col-xxl-2 col-xl-3 col-lg-3 col-md-4">
                <h5>Tất cả các danh mục</h5>
                <a href="sachThieuNhi.aspx">Sách thiếu nhi</a>
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



            <!-- Footer -->
                    <div class="row">
            <div class="col-md-12">
                       <%--  Chuyển trang - end --%>
        <!-- Footer start -->
       <footer class="text-center text-lg-start bg-white text-muted footer">
           <!-- Section: Social media -->
           <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
               <!-- Left -->
               <div class="me-5 d-none d-lg-block">
                   <span>Kết nối với các mạng xã hội:</span>
               </div>
               <!-- Left -->

               <!-- Right -->
               <div>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-facebook-f"></i>
                   </a>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-twitter"></i>
                   </a>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-google"></i>
                   </a>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-instagram"></i>
                   </a>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-linkedin"></i>
                   </a>
                   <a href="" class="me-4 link-secondary">
                       <i class="fab fa-github"></i>
                   </a>
               </div>
               <!-- Right -->
           </section>
           <!-- Section: Social media -->

           <!-- Section: Links  -->
           <section class="">
               <div class="container text-center text-md-start mt-4">
                   <!-- Grid row -->
                   <div class="row mt-4">
                       <!-- Grid column -->
                       <div class="col-md-3  col-xl-3 mb1">
                           <!-- Content -->
                           <h7 class="text-uppercase fw-bold  d-flex">
                               <img src="HinhAnh/375702355_690255522552442_9153935854360398161_n.png" alt="Logo" class="Logo">
                               <h6 class="text-uppercase fw-bold my-4">CÔNG TY MT</h6>
                           </h7>
                           <p>
                               Công ty của chúng tôi hy vọng sẽ  phục vụ và hỗ trợ bạn trong trải nghiệm, 
            tìm hiểu và khám phá của bạn thông qua những cuốn sách thú vị 
                           </p>
                       </div>
                       <!-- Grid column -->

                       <!-- Grid column -->
                       <div class="col-md-3  col-xl-3 mb-1">
                           <!-- Links -->
                           <h6 class="text-uppercase fw-bold my-4">Dịch vụ
                           </h6>
                           <p>
                               <a href="#!" class="text-reset">Điều khoản sử dụng</a>
                           </p>
                           <p>
                               <a href="#!" class="text-reset">Giới thiệu MT</a>
                           </p>
                           <p>
                               <a href="#!" class="text-reset">Hệ thống trung tâm - nhà sách</a>
                           </p>

                       </div>
                       <!-- Grid column -->

                       <!-- Grid column -->
                       <div class="col-md-3  col-xl-3 mb-1">
                           <!-- Links -->
                           <h6 class="text-uppercase fw-bold my-4 ">Hỗ trợ
                           </h6>
                           <p>
                               <a href="#!" class="text-reset">Chính sách đổi - trả - hoàn tiền</a>
                           </p>
                           <p>
                               <a href="#!" class="text-reset">Chính sách bảo hành</a>
                           </p>
                           <p>
                               <a href="#!" class="text-reset">Phương thức thanh toán và xuất đơn hàng</a>
                           </p>

                       </div>
                       <!-- Grid column -->


                       <!-- Grid column -->
                       <!-- Grid row -->
                       <div class="col-md-4  col-xl-3  mb-md-0 mb-4">

                           <!-- Links -->
                           <h6 class="text-uppercase fw-bold my-4">Liên hệ</h6>
                           <p><i class="fas fa-home me-3 text-secondary"></i>Q.Tân Phú, TP.Hồ Chí Minh</p>
                           <p>
                               <i class="fas fa-envelope me-3 text-secondary"></i>
                               info@mt.com.vn
                           </p>
                           <p><i class="fas fa-phone me-3 text-secondary"></i>1800656463</p>


                       </div>
                       <!-- Grid column -->
                   </div>
               </div>
           </section>
           <!-- Section: Links  -->

           <!-- Copyright -->
           <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.025);">
               Công ty chúng tôi rất mong được đồng hành với bạn

           </div>
           <!-- Copyright -->
       </footer>
<!-- Footer END-->
            </div>
        </div>
            <!-- Footer -->






            <script src="jquery-3.7.1.min.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
        </div>
    </form>
    <script>
        $(document).ready(function myFunction() {
            $("#btCart".click(function myFunction() {
                window.location.href = "Cart.axps";
            });
        });
    </script>
</body>
</html>
