<%@ Page Title="Trang thanh toán - mt.com" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HiddenField ID="hdPiQuantityID" runat="server" />
    <asp:HiddenField ID="hdCartAmount" runat="server" />
    <asp:HiddenField ID="hdCartDiscount" runat="server" />
    <asp:HiddenField ID="hdTotalPayed" runat="server" />
    
    <div style="padding: 0% 6%;">
        <div class="row">
            <div class="col-md-7 ">
                <div class="form-horizontal p-auto ">
                <%-- Địa chỉ giao hàng--%>
                <div class="container" >
                    <div class="row">
                        <div class="  form-group d-flex align-items-baseline">

                            <asp:Label ID="Label5" runat="server" Text="" CssClass="col-md-2 control-label"></asp:Label>
                            <div class="col-md-10 " style="text-align:center;margin-left: 3%;">
                                <h2 class="font_dang_ki">Địa chỉ giao hàng</h2>
                            </div>
                        </div>
                        
                        <div class="  form-group d-flex align-items-baseline" > 
                
                            <asp:Label ID="Label1" runat="server" Text="Tên :" CssClass="col-md-2 control-label"></asp:Label>
                            <div class="col-md-10 ">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtName" CssClass="text-danger"> </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="  form-group d-flex align-items-baseline">

                            <asp:Label ID="Label2" runat="server" Text="Địa chỉ :" CssClass="col-md-2 control-label"></asp:Label>
                            <div class="col-md-10 ">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtAddress" CssClass="text-danger"> </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="  form-group d-flex align-items-baseline">

                            <asp:Label ID="Label3" runat="server" Text="Mã PIN :" CssClass="col-md-2 control-label"></asp:Label>
                            <div class="col-md-10 ">
                                <asp:TextBox ID="txtPinCode" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtPinCode" CssClass="text-danger"> </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="  form-group d-flex align-items-baseline">

                            <asp:Label ID="label4" runat="server" Text="" CssClass="col-md-2 control-label" ></asp:Label>
                            <div class="col-md-10 " style="flex:1;">
                                <%--<asp:Button ID="btnPaytm" runat="server" Text="Thanh toán" OnClick="btnPaytm_Click" style="width: 100%; border-radius:6px;background:#ec5f81; border:none;" />--%>
                                <asp:Button ID="btnPaytm" runat="server" Text="Thanh toán"  style="width: 100%; border-radius:6px;background:#ec5f81; border:none;color:white;" OnClick="btnPaytm_Click1" />
                            </div>
                        </div>
                        <div class="  form-group d-flex align-items-baseline mt-3">

                            <asp:Label ID="label6" runat="server" Text="" CssClass="col-md-2 control-label"></asp:Label>
                            <asp:Label ID="Pay_infor" runat="server" Text="Bạn đã thanh toán thành công" CssClass="col-md-10 control-label text-success font " Style="text-align:center;" Visible="False"></asp:Label>
                        </div>
                    </div>
                </div>


            </div>
            </div>
                 <div class="col-md-5 pt-2 img-thumbnail" style="background: #dd6784; opacity:.9;">
                                     <div style="background:white;margin-bottom:1%;"class="img-thumbnail">

    <h5 style="text-align:center;">Chi tiết đơn hàng</h5>
    <div style="margin-left: 4%;">
        <div class="row">
            <label class="col-md-5">Tổng giỏ hàng:</label>
            <span class="col-md-5 pull-right" id="spanCartTotal" runat="server">0</span>
           

        </div>
        <div class="row">
            <labe class="col-md-5">Giỏ hàng giảm giá:</labe>
            <span style="color:#ff1826;font-weight: bold;" class="col-md-5" id="spanDiscount" runat="server" >0</span>
        </div>
        <div>
            <div style="border-bottom: 1px dashed #696e80;"></div>
        </div>
        <div style="text-align: right;">
            <i class="fa-solid fa-wallet"></i>
            <label>Thành tiền:</label>
            <span style="color: #1d7232;font-weight: bold;" ID="spanTotal" runat="server">0</span>
        </div>
    </div>
</div> 
                <asp:Repeater ID="rptrCartProducts_" runat="server">
                    <itemtemplate>
                        <div class="">
                            <div class="row media col-mb-3 mb-2 ">
                                <a class="col-md-3" style="margin-right: 0.4%; padding: 0% 3% 0% 1.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">

                                    <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="HinhAnh/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>" alt="Generic placeholder image">
                                </a>
                                &nbsp;&nbsp;&nbsp;<div class="media-body col-md-9 row img-thumbnail" style="display: flex; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5); align-items: start;">
                                    <h5 class="mt-0 font col-md-12 font_Cart">Dế Mèn Phiêu Lưu Kí:</h5>

                                    <div class=" col-md-8  proPrice" style="text-align: center;"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice"><%# Eval("_ProductPrice") %></span>   <span class="discount">-<%# Eval("DiscAmount") %>% </span></div>
                                    <div class=" col-md-4">
                                        <b>
                                            <span>Số lượng: <span>1</span></span>
                                        </b>
                                    </div>

                                </div>
                            </div>
                    </itemtemplate>
                </asp:Repeater>
</div>

                                  
            </div>

           
            


           
            
        </div>
   

    </div>
    <%--<div class="row container-fluid">
        <div class="col-md-12">
            <h3>Lựa chọn hình thức thanh toán</h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="wallets-tab" data-bs-toggle="tab" href="#wallets" role="tab" aria-controls="wallets" aria-selected="true">Ví</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="cards-tab" data-bs-toggle="tab" href="#cards" role="tab" aria-controls="cards" aria-selected="false">Thẻ tín dụng/thẻ ghi nợ</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="code-tab" data-bs-toggle="tab" href="#code" role="tab" aria-controls="code" aria-selected="false">COD</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="wallets" role="tabpanel" aria-labelledby="wallets-tab">
                    <h3>Home</h3>
                    <p>Some cSome content.</p>
                    <asp:Button ID="btnPaytm" runat="server" Text="Paytm" OnClick="btnPaytm_Click" />
                </div>
                <div class="tab-pane fade" id="cards" role="tabpanel" aria-labelledby="cards-tab">
                    <h3>Menu 1
                    <p>Some content in menu 1</p>
                </div>
                <div class="tab-pane fade" id="code" role="tabpanel" aria-labelledby="code-tab">
                    <h3>Menu 2</h3>
                    <p>Some content in menu 2</p>
                </div>
            </div>
        </div>

    </div>--%>
   
    <script src="jquery-3.7.1.min.js"></script>
</asp:Content>

