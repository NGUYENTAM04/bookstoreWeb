<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Black+Ops+One&display=swap');

        .font {
            font-family: 'Black Ops One', cursive;
        }

        .see_more{
            overflow: hidden;
            -webkit-line-clamp: 3;
            display: -webkit-box;
            -webkit-box-orient: vertical;
        }

        .modal-content {
            transform: translateX(-13%);
            position: relative;
            display: flex;
            flex-direction: column;
            width: 149%;
            color: var(--bs-modal-color);
            pointer-events: auto;
            background-color: var(--bs-modal-bg);
            background-clip: padding-box;
            border: var(--bs-modal-border-width) solid var(--bs-modal-border-color);
            border-radius: var(--bs-modal-border-radius);
            outline: 0;
        }

        .modal-body {
            text-align: justify;
            position: relative;
            flex: 1 1 auto;
            padding: var(--bs-modal-padding);
        }

/*TĂNG GIẢM*/

/*<div>
    <div class="buttons_added">
        <input class="minus is-form" type="button" value="-">
        <input aria-label="quantity" class="input-qty" max="10" min="0" name="" type="number" value="">
        <input class="plus is-form" type="button" value="+">
    </div>
</div>*/

.buttons_added {
    opacity:1;
    display:inline-block;
    display:-ms-inline-flexbox;
    display:inline-flex;
    white-space:nowrap;
    vertical-align:top;
}
/*.is-form {
    overflow:hidden;
    position:relative;
    background-color:#f9f9f9;
    height:2.2rem;
    width:1.9rem;
    padding:0;
    text-shadow:1px 1px 1px #fff;
    border:1px solid #ddd;
}*/
/*.is-form:focus,.input-text:focus {
    outline:none;
}*/
/*.is-form.minus {
    border-radius:4px 0 0 4px;
}
.is-form.plus {
    border-radius:0 4px 4px 0;
}*/
/*.input-qty {
    background-color:#fff;
    height:2.2rem;
    text-align:center;
    font-size:1rem;
    display:inline-block;
    vertical-align:top;
    margin:0;
    border-top:1px solid #ddd;
    border-bottom:1px solid #ddd;
    border-left:0;
    border-right:0;
    padding:0;
}*/
/*.input-qty::-webkit-outer-spin-button,.input-qty::-webkit-inner-spin-button {
    -webkit-appearance:none;
    margin:0;
}*/
/*________________*/

    </style>
    <div class="row col-md-12 col-md-12 col-md-12" style="padding:0% 4%;">
        <div class="col-md-4 col-sm-4 col-xl-4">
            <asp:Repeater ID="rptrImages" runat="server">
                <ItemTemplate>
            <%--<a style="text-decoration:none;" href="ProductView.aspx?PID=<%# Eval("ProductID") %>"></a>--%>
            <div  class="img-thumbnail col-md-12 col-sm-12 col-xl-12 item active">
                <img class="col-md-12 col-sm-12 col-xl-12" src="HinhAnh/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>" alt="<%# Eval("Name")%>" />

            </div>
          

                </ItemTemplate>
            </asp:Repeater>

                
        </div>
        <div class="col-md-8  col-sm-8 col-xl-8 " style="padding: 3% 1%; border-radius: 6px; border: 1px solid #e8eaed;">
            
            <asp:Repeater ID="rptrProductDetails" runat="server">
                <ItemTemplate>

<%--            
    <%# Eval("ProductID") %>
            <%# Eval("ProducName") %>
            <%# Eval("ProductPrice") %>
            <%# Eval("ProductSetPrice") %>
            <%# Eval("ProductQuantity") %>
            <%# Eval("ProductAuthorID") %>
            <%# Eval("ProductCategoryID") %>
            <%# Eval("ProductSubCategoryID") %>
            <%# Eval("ProducDescription") %>
            <%# Eval("ProductDetail") %>
            <%# Eval("FreeDelivery") %>
            <%# Eval("30DayReturn") %>
            <%# Eval("COD") %>
    --%>

                    <h1 class="proNameView font" style="justify-content: center; display: flex; font-size: 40px; margin-bottom: 4%; opacity: .8; text-align:center;line-height:normal;"><%# Eval("ProducName") %></h1> 

                    <div>

                        <div class="d-flex" style="line-height: 26px;">
                            <%-- Bang du lieu 1 --%>
                            <table class="  col-md-5" style="border: white 1px; margin-left: 8%;">
                                <tbody>
                                    <tr>
                                        <th scope="row"></th>
                                        <td><b>NXB:</b></td>
                                        <td>NXB Kim Đồng</td>
                                    </tr>
                                    <tr>
                                        <th scope="row"></th>
                                        <td><b>Năm XB:</b></td>
                                        <td>2020</td>
                                    </tr>
                                </tbody>
                            </table>
                            <%-- Bang du lieu 2 --%>
                            <table class="  col-md-5" style="border: white 1px; margin-left: 8%;">
                                <tbody>

                                    <tr>
                                        <th scope="row"></th>
                                        <td><b>Tác giả:</b></td>
                                        <td>Tô Hoài, Đậu Đũa</td>
                                    </tr>

                                    <tr>
                                        <th scope="row"></th>
                                        <td><b>Hình thức:</b></td>
                                        <td>Bìa Cứng</td>
                                    </tr>

                                </tbody>

                            </table>
                            <%-- ------------------- --%>
                        </div>

                        <%-- xem chi tiết --%>
                        <div style="text-align: end; margin-right: 1%;">
                            <!-- Button to Open the Modal -->
                            <a type="button" class=" " data-bs-toggle="modal" data-bs-target="#myModal_detail" style="margin-top: 4px;">Xem chi tiết
                            </a>

                            <!-- The Modal -->
                            <div class="modal" id="myModal_detail">
                                <div class="modal-dialog">
                                    <div class="modal-content" style="width: 121%; margin: 25%;">

                                        <!-- Modal Header -->

                                        <div class="modal-header">
                                            <h4 class="modal-title">Chi tiết sản phẩm</h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body " style="grid-template-columns: 50% 50%; display: grid;">
                                            <%--Modal body..--%>
                                            <%# Eval("ProductDetail") %>

                                            <%--<b>Tác giả:</b>	                  Tô Hoài, Đậu Đũa
                                    <b>NXB:</b>	                  NXB Kim Đồng
                                    <b>Năm XB:</b>	                  2020
                                    <b>Ngôn Ngữ:</b>	          Tiếng Việt
                                    <b>Trọng lượng (gr):</b>	  300
                                    <b>Kích Thước Bao Bì:</b>	  27 x 20 cm
                                    <b>Số trang:</b>	                  176
                                    <b>Hình thức:</b>	          Bìa Cứng--%>
                                        </div>

                                        <!-- Modal footer -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Đóng</button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                        <%--<table class="table table-bordered  col-md-5" style="border: white 1px;">
                    <tbody>
                        <tr>
                            <th scope="row"></th>
                            <td>Tác giả:</td>
                            <td>Tô Hoài, Đậu Đũa</td>
                        </tr>

                        <tr>
                            <th scope="row"></th>
                            <td>Hình thức:</td>
                            <td>Bìa Cứng</td>
                        </tr>

                    </tbody>

                </table>--%>

                        <%-- Tác giả:	          Tô Hoài, Đậu Đũa
                Hình thức:	          Bìa Cứng

                Tác giả:	              Tô Hoài, Đậu Đũa
                NXB:	                  NXB Kim Đồng
                Năm XB:	                  2020
                Ngôn Ngữ:	          Tiếng Việt
                Trọng lượng (gr):	  300
                Kích Thước Bao Bì:	  27 x 20 cm
                Số trang:	                  176
                Hình thức:	          Bìa Cứng--%>
                    </div>
                    <div style="padding-top: 2%; border-bottom: 1px dashed #696e80;"></div>
                    <%-- Mô tả --%>
                    <div>
                        <span style="text-transform: capitalize;">Mô tả:</span>
                        <span class="see_more"><%# Eval("ProducDescription") %></span>
                    </div>

                    <%-- xem thêm --%>
                    <div style="float: left; width: 100%;">
                        <!-- Button to Open the Modal -->
                        <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#myModal_seeMore" style="left: 39%; position: relative; justify-content: center; align-items: center; display: flex; margin-top: 11px; width: 20%;">
                            Xem thêm
                        </button>

                        <!-- The Modal -->
                        <div class="modal" id="myModal_seeMore">
                            <div class="modal-dialog">
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h4 class="modal-title">Nội dung phần mô tả</h4>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body ">
                                        <%--Modal body..--%>
            <%# Eval("ProducDescription") %>


                                    </div>

                                    <!-- Modal footer -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Đóng</button>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                    <%-- End xem thêm --%>
                    <div style="padding-top: 8%; border-bottom: 1px dashed #696e80;"></div>
                    <div class="d-grid " style="margin-left: 2%; grid-template-columns: 40% 19% 41%;">

                        <div class="" style="margin-top: 9%;">
                            <span class="proPrice" style="color: #f3567c;"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice" style="font-size: 18px; margin: 0% 7%;"><%# Eval("_ProductPrice") %></span>   <span class="discount" style="background: #f3567c;">-<%# Eval("DiscAmount") %>%  </span></span>
                        </div>
                        

<%--<%# Eval("ProductQuantity") %>--%>

                        <div class="buttons_added" onclick="calculate()" style="justify-content: center; align-items: end;">
                            <asp:Button ID="btnMinus" runat="server" CssClass="minus is-form" Text="-" OnClientClick=" decreaseQuantity();" Style="border: none; width: 40px;" />
                            <asp:TextBox ID="txtQuantity" runat="server" CssClass="input-qty d-flex h-50" MaxLength="2" Max="10" Min="0" Text="1" Style="border-radius: 3px; text-align: center; max-width: 44px; border: 1px darkgrey solid; opacity: .8;" oninput="validateQuantity(this);" />
                            <asp:Button ID="btnPlus" runat="server" CssClass="plus is-form" Text="+" OnClientClick=" increaseQuantity();" Style="border: none; width: 40px;" />

                            <%--<input class="minus is-form" type="button" value="-" style="border: none; width: 40px;">
                        <input aria-label="quantity" class="input-qty d-flex h-50" max="10" min="0" name="num" type="text" value="1" style="border-radius: 3px;text-align: center;max-width: 44px;border: 1px darkgrey solid;opacity: .8;"  />
                        <input class="plus is-form" type="button" value="+" style="border: none; width: 40px;">--%>
                        </div>

                        <%-- ___________________ --%>
                        <div class="d-flex justify-content-end " style="align-items: flex-end;">
                            <asp:Button ID="btnAddtoCart" runat="server" Text="Thêm sản phẩm" CssClass="btn" Style="transform: translateY(5px); margin-left: 7%; width: 106%; background: #f3567c; color: white;" OnClick="btnAddtoCart_Click"/>
                        </div>

                    </div>




                    <%-- Lựa chọn --%>
                    <div class="d-flex justify-content-end mt-4">
                        <%-- Giao hàng miễn phí - Free Delivery --%>
                        <span class="mx-2" style="font-size: 13px;">Giao hàng miễn phí</span>
                        <%-- Trả lại sau 30 ngày - 30 days Return --%>
                        <span class="mx-2" style="font-size: 13px;">Hoàn trả lại sau 30 ngày</span>
                        <%-- Code --%>
                        <span style="font-size: 13px;">COD</span>
                    </div>
                    <%-- __________________ --%>
                    <div>
                    </div>
                        <asp:Label ID="lblError" runat="server" Text="" Visible="true" style="position: relative;bottom: 5%;left: 3%;" CssClass="text-danger"></asp:Label>

                    </div>
                    
                </ItemTemplate>
            </asp:Repeater>
            </div>

<script src="test.js"></script>




</asp:Content>


