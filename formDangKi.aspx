<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formDangKi.aspx.cs" Inherits="formDangKi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="icon" type="image/x-icon" href="anhBaiThucHanh_TranVinhXuyen/367363094_265519156442780_3932990590385373470_n.png" style="background:pink; width: 32px; height: 32px;"
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Đăng Kí- mt.com</title>

    <link rel="stylesheet" href="styleWeb.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>

  <form id="form1" runat="server" >
      
               <%-- Header --%>
        <div class="container-fluid" style="z-index:1 !important;">
            <ul class=" container-fluid justify-content-center ml-5 header" style="padding-left: 10%; margin-bottom: -24px;">
                <nav class="  navbar navbar-expand-lg  mx-2 pl-5">
                    <div class="container">
                        <a class="navbar-brand " href="trangChu.aspx" style="margin-right: 0px;">
                            <img class="" src="HinhAnh/375702355_690255522552442_9153935854360398161_n.png" alt="Logo">
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="z-index:1 !important;">
                            <ul class="navbar-nav me-auto mr-20 mb-lg-0  " style="padding-left: 3%;">
                                <li class="py-5 " style="padding-right: 10px;"><a href="#">Giới Thiệu</a></li>

                                <li class="parentMenu py-5" style="padding-right: 10px;">
                                    <a href="#"><i class="fa-solid fa-list-check" style="padding: 0px 12px;"></i></a>
                                    <!--Lựa chọn-->
                                    <div class="submenu" style="width: 12%;">
                                        <a href="sachThieuNhi.aspx" class="item-contact d-flex align-items-center pt-2 px-3">Sách thiếu nhi</a>
                                        <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Tiểu thuyết</a>
                                        <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Tâm lí học</a>
                                        <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Marketing</a>
                                        <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Khởi nghiệp</a>
                                        <a href="#" class="item-contact d-flex align-items-center pt-2 px-3">Kĩ năng sống</a>
                                    </div>
                                </li>



                                <!-- Search  -->
                                <li class="d-flex py-5" style="padding-right: 10px;" role="search">
                                    <input class="form-control my-2 " type="search" placeholder="Search" aria-label="Search" style="width: 458px;">
                                    <button class=" action_btn   my-2 mx-3" type="submit ">Search</button>

                                </li>
                                <li class="py-5" style="padding-right: 10px;"><a href="#" style="padding-right: 10px;">Thông Báo</a></li>
                                <li class="py-5"><a href="#" style="padding-right: 10px;">Giỏ Hàng</a></li>

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
      <!--------------------------------------------->

               <!--Form đăng kí -->

      <div class="container px-5 py-2 khungDangKi">
          <div>
              <img class="" style="width: 170%;height: 93%;border-radius: 12px;" src="HinhAnh/web/46e276db-8371-4cd5-90d8-0092a92c6554.png" alt="">
          </div>
          <div class="row  size_form_dang_ki">


              <asp:Panel ID="panelRegistration" CssClass="panel panel-primary" runat="server" Width="765px">
                  <div class="panel-body borders p-5 d-flex flex-column shadow p-3 mb-5 bg-white rounded">
                      <h5>

                          <div class="d-flex justify-content-center align-items-center " style="margin-left: 14%;">
                              <a href="#" class="me-5 link-secondary font_dang_ki text-decoration-none" style="left: 102% !important;">Đăng kí</a>
                          </div>
                      </h5>
                      <div class="form-group pt-2">
                          <label for="tbName" class="px-2">Tên:</label>
                          <asp:TextBox ID="tbName" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2">
                          <label for="tbEmail" class="px-2">Email:</label>
                          <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" Required="true" TextMode="Email"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2">
                          <label for="tbDate" class="px-2">Ngày sinh:</label>
                          <asp:TextBox ID="tbDate" runat="server" CssClass="form-control" Required="true" TextMode="Date"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2">
                          <label for="tbPwd" class="px-2">Mật khẩu:</label>
                          <asp:TextBox ID="tbPwd" runat="server" CssClass="form-control" Required="true" TextMode="Password"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2">
                          <label for="tbConfirmation_pwd" class="px-2">Mật khẩu xác nhận:</label>
                          <asp:TextBox ID="tbConfirmation_pwd" runat="server" CssClass="form-control" Required="true" TextMode="Password"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2">
                          <label for="tbAddress" class="px-2">Địa chỉ:</label>
                          <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control" Required="true"></asp:TextBox>
                      </div>
                      <div class="form-group pt-2 khuVucPhimTat">
                          <asp:Button ID="btDangKi" runat="server" Text="Đăng kí" CssClass="btn mt-2 w-25 align-self-center"
                              Style="background-color: #f07c98; color: white; position: relative; left: 20%;" OnClick="btDangKi_Click" />
                          <div class="linkLienKetDangNhap">
                              <a href="formDangNhap.aspx" class="me-4 link-secondary" style="text-decoration: none;">Đăng nhập
                    <p  class="iconLinkLienKetDangNhap">
                        <i class="fa-solid fa-arrow-right-to-bracket text-secondary"></i>
                    </p>
                              </a>
                          </div>
                      </div>
                      <div>
                          <asp:Label ID="lbIMsg" runat="server" CssClass=" m-0 d-flex align-items-center" Style="position: relative; left: 2%; bottom: 30px;"></asp:Label>
                      </div>
                  </div>
              </asp:Panel>

          </div>
      </div>

      

<!--------------------------------------------->
  

      <!-- footer -->
     <!-- Footer -->
  <footer class="text-center text-lg-start bg-white text-muted footer">
      <!-- Section: Social media -->
      <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom" >
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
      <section class="" >
        <div class="container text-center text-md-start mt-4" >
          <!-- Grid row -->
          <div class="row mt-4" >
            <!-- Grid column -->
            <div class="col-md-3  col-xl-3 mb1" >
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
            <div class="col-md-3  col-xl-3 mb-1" >
              <!-- Links -->
              <h6 class="text-uppercase fw-bold my-4">
                Dịch vụ
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
              <h6 class="text-uppercase fw-bold my-4 ">
                Hỗ trợ
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
              <p><i class="fas fa-home me-3 text-secondary"></i> Q.Tân Phú, TP.Hồ Chí Minh</p>
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
    <!-- Footer -->

      <script src="jquery-3.7.1.min.js"></script>
      <script src="bootstrap/js/bootstrap.min.js"></script>
                
     
  </form>
 

</body>
</html>
