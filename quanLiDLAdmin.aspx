<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="quanLiDLAdmin.aspx.cs" Inherits="duLieu____________" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
        <%--<div class="container mt-5"  class="row">
            <h2>CRUD Example with Bootstrap 5</h2>
            <div class="row">
                <div class="col-md-8">
                    <asp:GridView ID="GridView1" runat="server" class="table-border"  AutoGenerateColumns="False" DataKeyNames="ID" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
       <Columns>
           <asp:BoundField DataField="ID" HeaderText="ID" />
           <asp:TemplateField HeaderText="Name">
               <ItemTemplate>
                   <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Email">
               <ItemTemplate>
                   <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:TemplateField HeaderText="Image">
               <ItemTemplate>
                   <img src='<%# ResolveUrl(Eval("ImageURL").ToString()) %>'  class="col-md-6" alt="Image" />
               </ItemTemplate>
               <EditItemTemplate>
                   <asp:FileUpload ID="fileImage" runat="server" />
               </EditItemTemplate>
           </asp:TemplateField>
           <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
       </Columns>
   </asp:GridView>
                </div>
                <div class="col-md-4">
                    <h3>Add/Edit Record</h3>
                    <div class="form-group">
                        <label for="txtName">Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="fileImage">Image:</label>
                        <asp:FileUpload ID="fileImage" runat="server" CssClass="form-control" />
                    </div>
                    <asp:Button runat="server" ID="btnAdd" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>--%>

    <div class=" mt-5">
        <h2 style="text-align:center;">Thông tin chi tiết sản phẩm dành cho Admin quản lí</h2>
        <div class="row">
            <div class="col-md-12">
                


                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False"
    DataKeyNames="ProductID" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
    <Columns>
        <asp:BoundField DataField="ProductID" HeaderText="Product ID" SortExpression="ProductID" />
        <asp:TemplateField HeaderText="Tên Sản Phẩm">
            <ItemTemplate>
                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProducName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("ProducName") %>' CssClass="form-control"></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Giá Gốc">
            <ItemTemplate>
                <asp:Label ID="lblProductPrice" runat="server" Text='<%# Eval("ProductPrice", "{0:C}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtProductPrice" runat="server" Text='<%# Bind("ProductPrice", "{0:C}") %>' CssClass="form-control"></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Giá Bán">
            <ItemTemplate>
                <asp:Label ID="lblProductSetPrice" runat="server" Text='<%# Eval("ProductSetPrice", "{0:C}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtProductSetPrice" runat="server" Text='<%# Bind("ProductSetPrice", "{0:C}") %>' CssClass="form-control"></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Số Lượng Sản Phẩm">
            <ItemTemplate>
                <asp:Label ID="lblProductQuantity" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtProductQuantity" runat="server" Text='<%# Bind("ProductQuantity") %>' CssClass="form-control"></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <%--<asp:TemplateField HeaderText="Hình Ảnh">
            <ItemTemplate>
                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%#  Eval("ImageNames") %>' CssClass="img-thumbnail" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:FileUpload ID="fileImage" runat="server" />
            </EditItemTemplate>
        </asp:TemplateField>--%>
        <asp:CommandField HeaderText="Chỉnh Sửa" ShowEditButton="True" />
        <asp:CommandField HeaderText="Xóa" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>

            </div>
            <%--<div class="col-md-4">
                <h3>Add/Edit Record</h3>
                <div class="mb-3">
                    <label for="txtProductName" class="form-label">Product Name:</label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtProductPrice" class="form-label">Product Price:</label>
                    <asp:TextBox ID="txtProductPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtSetPrice" class="form-label">Set Price:</label>
                    <asp:TextBox ID="txtSetPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtQuantity" class="form-label">Quantity:</label>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtAuthor" class="form-label">Author:</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtName" class="form-label">Name:</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtExtension" class="form-label">Extension:</label>
                    <asp:TextBox ID="txtExtension" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="fileImage">Image:</label>
                    <asp:FileUpload ID="fileImage" runat="server" CssClass="form-control" />
                </div>
                <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            </div>--%>
        </div>
    </div>
    

</asp:Content>
