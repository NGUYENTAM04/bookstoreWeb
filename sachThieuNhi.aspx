<%@ Page Title="Trang Sách Thiếu Nhi - mt.com" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="sachThieuNhi.aspx.cs" Inherits="_chaythu_trangSanPham" %>


 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
   
      <!-- Vùng trái -->
    <div class="vungTrai py-5 col-xxl-2 col-xl-3 col-lg-3 col-md-4   ">
        <h5>Tất cả các danh mục</h5>
        <a href="sachThieuNhi.aspx">Sách thiếu nhi</a>
        <a href="#">Tiểu thuyết</a>
        <a href="#">Tâm lí học</a>
        <a href="#">Marketing</a>
        <a href="#">Khởi nghiệp</a>
        <a href="#">Kĩ năng sống</a>

    </div>
          <!-- between -->

      <div class=" container-fluid py-2 col-xl-10 col-md-10" style="width: 97%; margin:0;">
          <div class="  borders row  col-xd-12 " style="padding-left:0.1%;z-index:1!important;">
              <asp:Repeater ID="rptrProducts" runat="server">
                  <ItemTemplate>

                      <%-- hình 1 --%>
                      <div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                          <a style="align-items: center;display: grid;text-decoration: none;color: inherit;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" class="active">
                              <img src="anhBaiThucHanh_TranVinhXuyen/ProductImages/<%# Eval("ProductID") %>/<%# Eval("ImageName")%><%# Eval("Extention")%>" class="col-lg-3 card-img-top" alt="<%# Eval("ImageName") %>">
                              <div class="card-body row">
                                  <div class="card-title proBook"><%# Eval("ProducName") %> </div>
                                  <div class="card-title proAuthor"><%# Eval("AuthorName") %></div>
                              

                          </a>
                              &nbsp;&nbsp;</div>
                                  <div style="margin-bottom: 14px;;margin-left: 6%;" class="proPrice"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice"><%# Eval("_ProductPrice") %></span>   <span class="discount">-<%# Eval("DiscAmount")  %>% </span></div>
                              <%--<a style="text-decoration: none;" href="ProductView.aspx?PID=<%# Eval("ProductID") %>"></a>--%>
                              <a href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" class="btn " style="background: #f7577e; color: white;">Thêm vào giỏ hàng</a>
                              
                      </div>

                  </ItemTemplate>
              </asp:Repeater>

              <%-- <%-- hình 1 --%>
                  <%--<div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                      <img src="HinhAnh/sachThieuNhi/quyen1.png" class="col-lg-3 card-img-top" alt="...">
                      <div class="card-body row">
                          <div class="card-title proBook">Dế Mèn Phiêu Lưu Ký </div>
                          <div class="card-title proAuthor">Tô Hoài, Đậu Đũa</div>
                          <div class="proPrice">180,000 <span class="proOgPrice">225,000</span>   <span class="discount">-20% </span></div>

                      </div>
                      <a href="#" class="btn " style="background: #f7577e; color: white; margin-bottom: 14px;">Thêm vào giỏ hàng</a>
                  </div>--%>
               <%-- hình 2 --%>
                     <%-- <div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                          <img src="HinhAnh/sachThieuNhi/quyen2.png" class="col-lg-3 card-img-top" alt="...">
                          <div class="card-body row">
                              <div class="card-title proBook">Hachiko - Chú Chó Đợi Chờ (Bìa Mềm) (Tái Bản 2019) </div>
                              <div class="card-title proAuthor">Luis Prats , Zuzanna Celej</div>
                              <div class="proPrice">48,000 <span class="proOgPrice">60,000</span>   <span class="discount">-20% </span></div>
                      
                          </div>
                              <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
                      </div>--%>
            <%-- hình 3 --%>
              <%--<div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                  <img src="HinhAnh/sachThieuNhi/quyen3.png" class="col-lg-3 card-img-top" alt="...">
                  <div class="card-body row">
                      <div class="card-title proBook">TRÁI CÂY ĐẠI CHIẾN ZOMBIE - THẾ GIỚI KHỦNG LONG TẬP 2: CÔNG VIÊN KHỦNG LONG </div>
                      <div class="card-title proAuthor">Tiếu Giang Nam</div>
                      <div class="proPrice">75,650 <span class="proOgPrice">89,000</span>   <span class="discount">-15% </span></div>
                      
                  </div>
                      <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
              </div>--%>
              <%-- hình 4 --%>
              <%--<div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                  <img src="HinhAnh/sachThieuNhi/quyen4.png" class="col-lg-3 card-img-top" alt="...">
                  <div class="card-body row">
                      <div class="card-title proBook">Trái Tim Của Mẹ (Tái Bản 2021) </div>
                      <div class="card-title proAuthor">Hoài Anh, Đậu Đũa</div>
                      <div class="proPrice">51,000 <span class="proOgPrice">60,000</span>   <span class="discount">-15% </span></div>
                      
                  </div>
                      <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
              </div>--%>
              <%-- hình 5 --%>
               <%-- <div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index:1;">
                    <img src="HinhAnh/sachThieuNhi/quyen5.png" class="col-lg-3 card-img-top" alt="...">
                    <div class="card-body row">
                        <div class="card-title proBook">Kính Vạn Hoa (Phiên Bản 18 Tập) - Tập 1 </div>
                        <div class="card-title proAuthor">Nguyễn Nhật Ánh</div>
                        <div class="proPrice"> 69,000  </div>
        
                    </div>
                        <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
                </div>--%>
                <%-- hình 6 --%>
            <%--        <div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                        <img src="HinhAnh/sachThieuNhi/quyen6.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body row">
                            <div class="card-title proBook">Boxset Cá Voi Đêm Bão Và Những Câu Chuyện Khác… (Bộ 4 Cuốn) </div>
                            <div class="card-title proAuthor">Benji Davies</div>
                            <div class="proPrice">170,000 <span class="proOgPrice">200,000</span>   <span class="discount">-15% </span></div>
                    
                        </div>
                            <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
                    </div>--%>
                            <%-- hình 7 --%>
            <%--<div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                <img src="HinhAnh/sachThieuNhi/quyen7.png" class="col-lg-3 card-img-top" alt="...">
                <div class="card-body row">
                    <div class="card-title proBook">Tý Quậy - Tập 13 </div>
                    <div class="card-title proAuthor">Đào Hải, Nguyễn Quang Toàn, Hoài Thu</div>
                    <div class="proPrice">36,000 <span class="proOgPrice">40,000</span>   <span class="discount">-10% </span></div>
                    
                </div>
                    <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
            </div>--%>
            <%-- hình 8 --%>
            <%--        <div class=" img-thumbnail mb-1 mt-1 col-sm-11 col-sm-12 col-md-6 col-lg-6 col-xxl-3 col-  card" style="z-index: 1;">
                        <img src="HinhAnh/sachThieuNhi/quyen8.png" class="col-lg-3 card-img-top" alt="...">
                        <div class="card-body row">
                            <div class="card-title proBook">Cổ Tích Việt Nam Cho Bé Mẫu Giáo: Sơn Tinh - Thuỷ Tinh </div>
                            <div class="card-title proAuthor">Hiếu Minh, Cloud Pillow</div>
                            <div class="proPrice">17,000 <span class="proOgPrice">20,000</span>   <span class="discount">-15% </span></div>
                    
                        </div>
                            <a href="#" class="btn " style="background:#f7577e; color:white;margin-bottom: 14px;">Thêm vào giỏ hàng</a>
                    </div>
            
                  </div>

              </div>--%>
        <%-- Chuyển trang -strart --%>
        <div class=" justify-content-end  d-flex mx-5 mt-4" style="padding-right: 3%;">
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





<%-- ----------------------- --%>




</asp:Content>

