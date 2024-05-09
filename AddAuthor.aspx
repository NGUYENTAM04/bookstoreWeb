<%@ Page Title="Trang Thêm tác giả -mt.com" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddAuthor.aspx.cs" Inherits="AddAuthor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class=" container m-auto">
     <div class="form-horizontal p-auto ">
         <%-- Tên tác giả--%>
         <div class="container">
             <div class="row">
                 <h2>Thêm tác giả</h2>
                 <div class="  form-group d-flex align-items-baseline" > 
                     
                     <asp:Label ID="Label1" runat="server" Text="Tên tác giả:" CssClass="col-md-2 control-label"></asp:Label>
                     <div class="col-md-5 ">
                         <asp:TextBox ID="txtAddAuthor" runat="server" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ErrorMessage="The  field is Required" ControlToValidate="txtAddAuthor" CssClass="text-danger"> </asp:RequiredFieldValidator>
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
                         <asp:Button ID="btAdd" runat="server" Text="Thêm" CssClass="btn btn-primary" OnClick="btAdd_Click"  />
                         
                     </div>
                 </div>
             </div>
         </div> 

     </div>

         <%-- ------------------------------- --%>
        <%-- <h1>Tác giả</h1>
         <hr />
         <div class="panel panel-default">
             <div class="panel-body d-flex justify-content-center bg-opacity-50" style="background-color:#f385a1; color:white;">Tổng hợp tất cả tác giả</div>
             <table class="table table-hover">
                 <thead>
                     <tr>
                         <th scope="col">#</th>
                         <th scope="col">Tấc giả</th>
                         <th scope="col">Sửa</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <th scope="row">1</th>
                         <td>Mark</td>
                         <td>Sửa</td>
                     </tr>
                    
                 </tbody>
             </table>
         </div>--%>
         <h1>Tác giả</h1>
         <hr />
         <div class="panel panel-default ">
             <%-- content panel --%>
             <div class="banel-heading">Tổng hợp tất cả các tác giả</div>
             <asp:Repeater ID="rptrAuthor" runat="server">
                 <HeaderTemplate>
                     <table class="table table-hover">
                       <thead>
                           <th>#</th>
                           <th>Tác giả</th>
                           <th>Chỉnh sửa</th>
               
                       </thead>
                       <tbody >
                 </HeaderTemplate>
                 <ItemTemplate> 
                     <tr>
                         <td><%#Eval("AuthorID") %></td>
                         <td><%#Eval("Name") %></td>
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

