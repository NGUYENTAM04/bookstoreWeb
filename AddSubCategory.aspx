<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddSubCategory.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class=" container m-auto">
    <div class="form-horizontal p-auto ">
        <%-- Danh mục chính--%>
        <div class="container">
            <div class="row">
                <h2>Thêm danh mục thể loại chủ đề</h2>
                <div class="  form-group d-flex align-items-baseline" > 
                    
                    <asp:Label ID="Label1" runat="server" Text="Danh mục chính:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="The  field is Required" ControlToValidate="ddlCategory" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>

        <%-- Thể loại chủ đề--%>
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    <asp:Label ID="Label2" runat="server" Text="Tên thể loại chủ đề:" CssClass="col-md-2 control-label"></asp:Label>
                    <div class="col-md-5 ">
                        <asp:TextBox ID="txtSubCategoryName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtSubCategoryName" CssClass="text-danger"> </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        </div>

        <%-- Nút bấm thêm --%>
        <div class="container">
            <div class="row">
                <div class="  form-group d-flex align-items-baseline">

                    
                    <div class="col-md-2"></div>
                    <div class="col-md-5 ">
                        <asp:Button ID="btAdd" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btAdd_Click"   />
                        
                    </div>
                </div>
            </div>
        </div> 

    </div>

</div>

    <%-- Bảng dữ liệu --%>
    <h1>Tác giả</h1>
    <hr />
    <div class="panel panel-default ">
        <%-- content panel --%>
        <div class="banel-heading">Tổng hợp danh mục thể loại chủ đề</div>
        <asp:Repeater ID="rptrSubCategory" runat="server">
            <HeaderTemplate>
                <table class="table table-hover">
                    <thead>
                        <th>#</th>
                        <th>Tên thể loại chủ đề</th>
                        <th>Tên thể loại </th>
                        <th>Chỉnh sửa</th>

                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("SubCategoryID") %></td>
                    <td><%#Eval("SubCategoryName") %></td>
                    <td><%#Eval("CategoryName") %></td>
                    <td>Chỉnh sửa</td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
            </table>
            </FooterTemplate>
        </asp:Repeater>


    </div>
</asp:Content>

