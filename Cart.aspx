<%@ Page Title="Giỏ hàng của bạn - mt.com" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Lobster&display=swap');
        .font_Cart
        {
            font-family: 'Lobster', cursive;
        }
    </style>



        
    <div class="" style="padding: 0% 0% 0% 5%;">
        <div class="row" style =""> 
            <h5 class="" style="margin-left:2%;" id="h5NoItem" runat="server"></h5>
            <div class="col-md-6   " style="margin: 0 2%;" >
                <asp:Repeater ID="rptrCartProducts" runat="server">
                    <ItemTemplate>
                        <div class="row media col-mb-3 mb-3 ">
                            <a class="col-md-3" style="margin-right: 0.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">
                                <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="HinhAnh/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>">
                            </a>
                            &nbsp;&nbsp;&nbsp;<div class="media-body col-md-9 row img-thumbnail" style="display: flex; align-items: end; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5);">
                                <h5 class="mt-0 font col-md-4 font_Cart">Dế Mèn Phiêu Lưu Ký:</h5>

                                <div class=" col-md-5  proPrice" style="padding: 0;"><%# Eval("_ProductSetPrice") %> <span class="proOgPrice"><%# Eval("_ProductPrice") %></span>   <span class="discount">-<%# Eval("DiscAmount") %>% </span></div>

                                <div class=" col-md-2 buttons_added d-flex" onclick="calculate()" style="padding: 0;">
                                    <asp:Button ID="Button1" runat="server" CssClass="minus is-form col-md-12" Text="-" OnClientClick="return decreaseQuantity();" Style="border: none; width: 40px;" />
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-qty d-flex col-md-12" MaxLength="2" Max="10" Min="0" Text="1" Style="border-radius: 3px; text-align: center; max-width: 44px; border: 1px darkgrey solid; opacity: .8;" oninput="validateQuantity(this);" />
                                    <asp:Button ID="Button2" runat="server" CssClass="plus is-form col-md-12" Text="+" OnClientClick="return increaseQuantity();" Style="border: none; width: 40px;" />
                                </div>

                                <p class="col-md-12 m-0 " style="display: flex; justify-content: center; padding: 0;">
                                    <asp:Button CommandArgument='<%# Eval("ProductID") +"-"+ Eval("QuantityIDD")%> ' ID="btRemoveItem" runat="server" CssClass="" Text="Xóa" Style="border-radius: 5px; border: none; flex: 1; background: #f3567c; color: white; margin-bottom: 1.2%;" OnClick="btRemoveItem_Click" />
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            
                
            </div>
            <div class="col-md-5 pt-2 img-thumbnail" style="background: #dd6784; opacity:.9;">
                <asp:Repeater ID="rptrCartProducts_" runat="server">
                    <ItemTemplate>
                        <div class="">
                            <div class="row media col-mb-3 mb-2 ">
                                <a class="col-md-3" style="margin-right: 0.4%; padding: 0% 3% 0% 1.4%;" href="ProductView.aspx?ProductID=<%# Eval("ProductID") %>" target="_blank">
                                    
                                        <img class=" img-thumbnail" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);" src="HinhAnh/ProductImages/<%# Eval("ProductID") %>/<%# Eval("Name")%><%# Eval("Extention")%>" alt="Generic placeholder image">
                                    
                                </a>
                                &nbsp;&nbsp;<div class="media-body col-md-9 row img-thumbnail" style="display: flex; border-radius: 6px; border: 1.8px solid #e8eaed; box-shadow: 5px 1px 7px 0px rgba(0, 0, 0, 0.5); align-items: end;">
                                    <h5 class="mt-0 font col-md-12 font_Cart">Dế Mèn Phiêu Lưu Kí:</h5>

                                    <div class=" col-md-8  proPrice" style=""><%# Eval("_ProductSetPrice") %> <span class="proOgPrice"><%# Eval("_ProductPrice") %></span>   <span class="discount">-<%# Eval("DiscAmount") %>% </span></div>
                                    <div class=" col-md-4">
                                        <b>
                                            <span>Số lượng: <span>1</span></span>
                                        </b>
                                    </div>


                                    <p class="col-md-12 m-0 " style="display: flex; justify-content: center; padding: 0;">
                                        <asp:Button CommandArgument='<%# Eval("ProductID") +"-"+ Eval("QuantityIDD")%> ' ID="btRemoveItemDetail" runat="server" CssClass="" Text="Xóa" Style="border-radius: 5px; border: none; flex: 1; background: #f3567c; color: white; margin-bottom: 1.2%;" OnClick="btRemoveItemDetail_Click"/>
                                    </p>
                                </div>
                            </div>
                    </ItemTemplate>
                </asp:Repeater>
                </div>
                <div style="margin-bottom: 1.5%;">
                    <p class=" m-0 " style="display: flex; justify-content: center; padding: 0;margin:0;box-shadow: 3px 5px 7px 0px rgba(0, 0, 0, 0.5); border-radius:2px;">
                        <asp:Button ID="btnBuyNow" runat="server" CssClass="" Text="Mua hàng" Style="border-radius: 5px; border: none; flex: 1; background: #f3567c; color: white; padding: 0;margin:0;" OnClick="btnBuyNow_Click" />
                    </p>
                </div>


                
                <div style="background:white;margin-bottom:1%;"class="img-thumbnail">
<%--            <asp:Repeater ID="divPriceDetail" runat="server">
                <ItemTemplate>--%>
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
                             <%--<asp:Label ID="spanTotal" runat="server" Text="Label"></asp:Label>--%>
                        </div>
                    </div>
                </div>   
                    
                <%--</ItemTemplate>
            </asp:Repeater>--%>
            </div>
                       
        </div>
    </div>
    <script src="test.js"></script>
</asp:Content>

