<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" container m-auto">
        <div class="form-horizontal p-auto ">
            <%-- Tên loại--%>
            <div class="container">
                <div class="row">
                    <h2>Thêm loại</h2>
                    <div class="  form-group d-flex align-items-baseline">

                        <asp:Label ID="Label1" runat="server" Text="Tên loại:" CssClass="col-md-2 control-label"></asp:Label>
                        <div class="col-md-5 ">
                            <asp:TextBox ID="txtAddCategory" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtAddCategory" CssClass="text-danger"> </asp:RequiredFieldValidator>
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
                            <asp:Button ID="btAdd" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btAdd_Click" />
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/formDangKi.aspx">LinkButton</asp:LinkButton>
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
        <div class="banel-heading">Tổng hợp tên thể loại</div>
        <asp:Repeater ID="rptrCategory" runat="server">
            <HeaderTemplate>
                <table class="table table-hover">
                    <thead>
                        <th>#</th>
                        <th>Thể loại</th>
                        <th>Chỉnh sửa</th>

                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%#Eval("CategoryID") %></td>
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

