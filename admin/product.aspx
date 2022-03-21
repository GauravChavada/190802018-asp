<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" EnableEventValidation="false" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-wrapper">

<h1 class="center">Prducts</h1>
  <div class="form-group">
    <label for="exampleInputEmail1">Product Name</label> 
      <asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Product Description</label>
      <asp:TextBox type="text" class="form-control" ID="TextBox2" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
  </div>
    <div class="form-group">
    <label>Product Price</label>
      <asp:TextBox type="text" class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
  </div>
    <div class="form-group">
    <label>Product Image</label>   &nbsp; &nbsp;    
            <asp:FileUpload ID="FileUpload1" runat="server" />
  </div>
    
    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Insert" />

<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        Width="807px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("des") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image", "~/admin/uploads/{0}")%>'  Width="100px"/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Literal ID="Literal10" runat="server" Text='<%# Eval("price") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button5_Click" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Update">
                <ItemTemplate>
                    <asp:Button ID="Button6" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button6_Click" Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:Literal ID="Literal11" runat="server"></asp:Literal>
</div>
</asp:Content>

