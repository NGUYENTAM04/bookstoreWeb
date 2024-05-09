<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sachKhoiNghiep.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sách khởi nghiệp
       - mt.com</title>

    <link rel="stylesheet" href="styleWeb.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container " style="">
                <ul class=" container justify-content-center ml-5 header" style="margin-left: 78px; margin-bottom: -24px;">
                    <nav class="navbar navbar-expand-lg  mx-2 pl-5">
                        <div class="container">
                            <a class="navbar-brand " href="#">
                                <img class="" src="HinhAnh/375702355_690255522552442_9153935854360398161_n.png" alt="Logo" height="140px">
                            </a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mr-20 mb-lg-0  ">
                                    <li class="py-5"><a href="#">Giới thiệu</a></li>

                                    <li class="parentMenu py-5">
                                        <a href="#"><i class="fa-solid fa-list-check"></i></a>
                                        <!--Lựa chọn-->
                                        <div class="submenu">
                                            <a href="#">Sách thiếu nhi</a>
                                            <a href="#">Tiểu thuyết</a>
                                            <a href="#">Tâm lí học</a>
                                            <a href="#">Marketing</a>
                                            <a href="#">Khởi nghiệp</a>
                                            <a href="#">Kĩ năng sống</a>
                                        </div>
                                    </li>



                                    <!-- Search  -->
                                    <li class="d-flex py-5  " role="search">
                                        <input class="form-control my-2 " type="search" placeholder="Search" aria-label="Search" style="width: 400px;">
                                        <button class=" action_btn   my-2 mx-3" type="submit ">Search</button>

                                    </li>
                                    <li class="py-5"><a href="#">Thông báo</a></li>
                                    <li class="py-5"><a href="#">Giỏ hàng</a></li>
                                    <!-- Tài khoản  -->
                                    <li class="parentMenu py-5">
                                        <a href="#">Tài khoản</a>
                                        <div class="submenu">
                                            <a href="#">Đăng nhập</a>
                                            <a href="#">Đăng kí</a>
                                        </div>
                                    </li>
                                    <!-- Liên hệ  -->
                                    <li class="parentMenu py-5 ">
                                        <a href="#" class="contact">Liên Hệ</a>
                                        <div class="submenu submenu_contact " style="right: 0%;">
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




            <!-- <div class="menu col-xm-12 ">

    <!-- Vùng trái -->
            <div class="vungTrai py-5 col-xl-2 col-lg-5 col-md-4">
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

            <div class=" container-fluid py-2 col-xl-10 col-md-10" style="width: 87%;">
                <div class="  borders row  col-xd-12 ">
                    <div class="col-lg-1 mx-2 mt-2 mb-2 col-sm-3   card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen1.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2 col-sm-3   card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen2.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2 col-sm-3   card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen3.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2 col-sm-3  card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen4.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2  card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen5.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2  card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen6.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2  card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen7.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                    <div class="col-lg-1 mx-2 mt-2 mb-2  card" style="width: 23%;">
                        <img src="HinhAnh/sachKhoiNghiep/quyen8.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>




                </div>

            </div>


        </div>


        <div class="container justify-content-end  d-flex mx-5 mt-4">
            <nav aria-label="Page navigation example ">
                <ul class="pagination tam" style="position: relative; left: 24px;">
                    <li class="page-item disabled ">
                        <a class="page-link ">Previous</a>
                    </li>
                    <li class="page-item "><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>


        <!-- footer -->
        <!-- Footer -->
        <footer class=" containertext-center text-lg-start bg-white text-muted  col-xl-12  col-lg-5 col-md-12 ">
            <!-- Section: Social media -->
            <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom  " style="margin-right: 65px;">
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span style="margin-left: 65px;">Kết nối với các mạng xã hội:</span>
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
        <!-- Footer -->

        <script src="jquery-3.7.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        </div>
    </form>
</body>
</html>
