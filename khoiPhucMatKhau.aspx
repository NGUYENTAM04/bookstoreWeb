<%@ Page Language="C#" AutoEventWireup="true" CodeFile="khoiPhucMatKhau.aspx.cs" Inherits="RecoverPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khôi phục lại mật khẩu - mt.com</title>

    <link rel="stylesheet" href="styleWeb.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <%-- Header --%>
 <div class="container-fluid" style="position:relative; z-index:2;">
     <ul class=" container-fluid justify-content-center ml-5 header" style="padding-left: 10%; margin-bottom: -24px;">
         <nav class="  navbar navbar-expand-lg  mx-2 pl-5" >
             <div class="container">
                 <a class="navbar-brand " href="trangChu.aspx" style="margin-right:0px;transform: translateX(-32%);" >
                     <img class="" src="HinhAnh/375702355_690255522552442_9153935854360398161_n.png" alt="Logo">
                 </a>
                 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" >
                     <span class="navbar-toggler-icon"></span>
                 </button>
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav me-auto mr-20 mb-lg-0  " style="padding-left: 3%;">
                         <li class="py-5 " style="padding-right:10px;"><a href="#">Giới Thiệu</a></li> 

                         <li class="parentMenu py-5" style="padding-right:10px; ">
                             <a href="#"><i class="fa-solid fa-list-check" style="padding:0px 12px;"></i></a>
                             <!--Lựa chọn-->
                             <div class="submenu" style="width:12%;">
                                 <a href="sachThieuNhi.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Sách thiếu nhi</a>
                                 <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Tiểu thuyết</a>
                                 <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Tâm lí học</a>
                                 <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Marketing</a>
                                 <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Khởi nghiệp</a>
                                 <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Kĩ năng sống</a>
                             </div>
                         </li>



                         <!-- Search  -->
                         <li class="d-flex py-5" style="padding-right:10px;" role="search">
                             <input class="form-control my-2 " type="search" placeholder="Search" aria-label="Search" style="width: 470px;">
                             <button class=" action_btn   my-2 mx-3" type="submit ">Search</button>

                         </li>
                         <li class="py-5" style="padding-right:10px;"><a href="#">Thông Báo</a></li>
                         <%--<li class="py-5"><a href="#">Giỏ Hàng</a></li>--%>
                         <li class="py-5">
                                 <a href="Cart.aspx" class="">
                                     <%--<button type="button" class="btn position-relative">--%>
                                     Giỏ hàng
                                     <span id="productCount" runat="server" class="position-relative top-0 start-6 translate-middle badge rounded-pill bg-danger" style="color: white;left:6%;"><%--số lượng sản phẩm--%>
                                         <span class="visually-hidden">New alerts</span>
                                     </span>

                                     <%-- </button>--%>

                                 </a>
                           </li>
             
                         <!-- Tài khoản  -->
                         <li class="parentMenu py-5" style="padding-right:10px;">
                             <a href="#">Tài khoản</a>
                             <div class="submenu" style="width:10%;">
                                 <a href="formDangNhap.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Đăng nhập</a>
                                 <a href="formDangKi.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Đăng kí</a>
                             </div>
                         </li>
             
                         <!-- Liên hệ  -->
                         <li class="parentMenu py-5 " style="padding-right:10px;">
                             <a href="#" class="contact">Liên Hệ</a>
                             <div class="submenu submenu_contact " style="right: 0%; transform: translateX(-17%);">
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

            <div class="container">
                <div class="form-group">
                    <h2>Cài lại mật khẩu cho bạn</h2>
                    <hr />
                    
                </div>
                <div class="form-group row container d-flex align-items-center justify-content-center pt-1">

                    <asp:Label ID="lblMsg" runat="server" CssClass="col-md-12  control-label font_dang_ki d-flex justify-content-center" Font-Size="XX-Large" Font-Bold="True"></asp:Label>
                </div>

                <div class="form-group row container d-flex align-items-center justify-content-center pt-1">

                    <asp:Label ID="lblPassword" runat="server" Text="Mật khẩu mới:" CssClass="col-md-2 px-5 control-label" Visible="False"></asp:Label>
                    <div class="col-md-4 d-flex align-items-center justify-content-center">
                        <asp:TextBox ID="tbNewPass" runat="server" CssClass="form-control" TextMode="Password" Visible="False"></asp:TextBox>
                    </div>
                  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Vui lòng nhập mật khẩu mới của bạn" CssClass="text-danger d-flex justify-content-center" style="padding-left:8%;" ControlToValidate="tbNewPass"></asp:RequiredFieldValidator>
                   
                </div>

                <div class="form-group row container d-flex align-items-center justify-content-center ">

                    <asp:Label ID="lblRetypePass" runat="server" Text="Xác nhận mật khẩu:" CssClass="col-md-2 px-6 control-label" style="position:relative; left:3%;" Visible="False"></asp:Label>
                    <div class="col-md-4 d-flex align-items-center justify-content-center">
                        <asp:TextBox ID="tbConfirmPass" runat="server" CssClass="form-control" TextMode="Password" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRecoverPass" runat="server" ErrorMessage="Vui lòng xác nhận mật khẩu mới của bạn" CssClass="text-danger d-flex justify-content-center" Style="padding-left: 6%;" ControlToValidate="tbConfirmPass" Visible="False"></asp:RequiredFieldValidator>

                    </div>
                    <div class="col-md- d-flex justify-content-center" style="margin-left:5%; ">
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Cả hai mật khẩu phải giống nhau"  CssClass="text-danger" ControlToCompare="tbConfirmPass" ControlToValidate="tbNewPass"> Cả hai mật khẩu phải giống nhau</asp:CompareValidator> 
                    </div>
                    <div class="form-group row container d-flex align-items-center justify-content-center " style="margin-left:16%;">
                        <asp:Button ID="btRecoverPass" runat="server" Text="Send" CssClass="btn " Style="border: none;background: #f8809d;width: 32%;color:white;" Visible="False" OnClick="btRecoverPass_Click"  />
                    </div>

                    </div>
                <%--<div class="form-group row container d-flex align-items-center justify-content-center pt-1">
                    <div class="col-md-2"></div>
                    <div class =" col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </div>
                </div>--%>
                <%-- <div class="form-group d-flex justify-content-center align-content-center " style="margin-left:28%;">
            <div class="col-md-2">
                <asp:Button ID="btPassRecover" runat="server" Text="Send" CssClass="btn btn-primary"/>
            </div>
        </div>--%>
            </div>

            
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
 <!-- Footer End-->

 <script src="jquery-3.7.1.min.js"></script>
 <script src="bootstrap/js/bootstrap.min.js"></script>

        </div>

    </form>
</body>
</html>
