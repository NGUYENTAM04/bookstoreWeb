<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="themSanPham.aspx.cs" Inherits="themSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
     <div class="container px-5 py-2 khungDangKi" style="transform: translateY(-2%);">
     <div>
         <img class="" style="width: 120%;height: 94.6%;border-radius: 9px;" src="HinhAnh/GiaoDienAdmin/themSanPham.jpg" alt="">
     </div>
     <div class="row size_form_Admin" style="transform: translateX(11%);width: 69%;" >


         <asp:Panel ID="panelRegistration" CssClass="panel panel-primary" runat="server" Width="765px">
             <div class="panel-body borders  d-flex flex-column shadow  mb-5 bg-white rounded p-3">
                 <h5>

                     <div class="d-flex justify-content-center align-items-center " style="margin-left: 30%;">
                         <a href="#" class="me-5 link-secondary font_dang_ki text-decoration-none" style="left: 102% !important;">Thêm sản phẩm</a>
                     </div>
                 </h5>
                 <div class="form-group pt-2">
                     <div class=" container m-auto">
                         <div class=" container m-auto">
                             <div class="form-horizontal p-auto ">
                                 <%-- Tên --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label1" runat="server" Text="Tên:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtPName" runat="server" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtPName" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Giá --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label2" runat="server" Text="Giá:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtPrice" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Giá bán - selling price--%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label19" runat="server" Text="Giá bán:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtSelling_Price" runat="server" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtSelling_Price" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Số lượng - selling price--%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label20" runat="server" Text="Số lượng:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtQuantity" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Tác giả - brand --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label6" runat="server" Text="Tác giả:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:DropDownList ID="ddlAuthor" runat="server" CssClass="form-control"></asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="The  field is Required" ControlToValidate="ddlAuthor" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>


                                 <%-- Loại --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label3" runat="server" Text="Loại:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="The  field is Required" ControlToValidate="ddlCategory" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>


                                 <%-- Danh mục chủ đề - Sub Category--%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label4" runat="server" Text="Danh mục chủ đề:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:DropDownList ID="ddlSubCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="The  field is Required" ControlToValidate="ddlSubCategory" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>


                                 <%-- Mô tả  Decription--%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label5" runat="server" Text="Mô tả:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtDescription" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Chi tiết sản phẩm --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label7" runat="server" Text="Chi tiết sản phẩm:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:TextBox ID="txtDetail" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtDetail" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                                 <%-- Load hình 1 --%>
                                 <div class="container">
                                     <div class="row ">
                                         <div class="  form-group d-flex align-items-baseline">

                                             <asp:Label ID="Label8" runat="server" Text="Cập nhật hình:" CssClass="col-md-3 control-label"></asp:Label>
                                             <div class="col-md-9 ">
                                                 <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fuImg01" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                             </div>

                                            <%-- <div class="col-md-9 ">
                                                <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fuImg02" CssClass="text-danger"> </asp:RequiredFieldValidator>
                                            </div>--%>
                                         </div>
                                     </div>
                                 </div>

                                 <%--         Load hình 2 
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label9" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg02" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>    

                     Load hình 3 
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label10" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg03" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>    

                     Load hình 4
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label11" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg04" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>    

                     Load hình 5 
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label12" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg05" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>    

                     Load hình 6
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label13" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg06" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg06" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>  
        
                     Load hình 7 
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label14" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg07" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg07" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>    

                     Load hình 8 
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label15" runat="server" Text="Cập nhật hình:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:FileUpload ID="fuImg08" CssClass="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="The  field is Required" ControlToValidate="fuImg08" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>  --%>

                                 <div class="d-flex ">
                                     <div style="transform: translateX(30%); display: grid; grid-template-columns: 49% 54% 41%;">
                                         <%-- Giao hàng miễn phí - Free Delivery --%>
                                         <div class="container" style="margin-left: 50%;">
                                             <div class="row">
                                                 <div class="  form-group d-flex align-items-baseline">

                                                     <asp:Label ID="Label16" runat="server" Style="font-size: 13px;" Text="Giao hàng miễn phí:" CssClass="col-md-8 control-label "></asp:Label>
                                                     <div class="col-md-1 " style="transform: translateY(2px);">
                                                         <asp:CheckBox ID="cbFree_Delivery" runat="server" />

                                                     </div>
                                                 </div>
                                             </div>
                                         </div>

                                         <%-- Trả lại sau 30 ngày - 30 days Return --%>
                                         <div class="container" style="margin-left: 22%">
                                             <div class="row">
                                                 <div class="  form-group d-flex align-items-baseline">

                                                     <asp:Label ID="Label17" runat="server" Style="font-size: 13px;" Text="Hoàn trả lại sau 30 ngày:" CssClass="col-md-9 control-label"></asp:Label>
                                                     <div class="col-md-1 " style="transform: translateY(2px);">
                                                         <asp:CheckBox ID="cb30_return" runat="server" />

                                                     </div>
                                                 </div>
                                             </div>
                                         </div>

                                         <%-- Code --%>
                                         <div class="container">
                                             <div class="row">
                                                 <div class="  form-group d-flex align-items-baseline">

                                                     <asp:Label ID="Label18" runat="server" Style="font-size: 13px;" Text="COD:" CssClass="col-md-2 mx-2 control-label"></asp:Label>
                                                     <div class="col-md-1 " style="transform: translateY(2px);">
                                                         <asp:CheckBox ID="cbCode" runat="server" />

                                                     </div>
                                                 </div>
                                             </div>
                                         </div>

                                     </div>
                                 </div>

                                 <%-- Nút bấm thêm --%>
                                 <div class="container">
                                     <div class="row">
                                         <div class="  form-group d-flex align-items-baseline">


                                             <div class="col-md-3"></div>
                                             <div class="col-md-9 ">
                                                 <asp:Button ID="btAdd" style="background: #f7809d;margin-top: 17px; color:white;" runat="server" Text="Thêm" CssClass="btn w-100" OnClick="btAdd_Click" />
                                             </div>
                                         </div>
                                     </div>
                                 </div>

                             </div>

</div>
                     </div>
             </div>
         </asp:Panel>

     </div>
 </div>
</asp:Content>

