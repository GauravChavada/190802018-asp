<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_Default" 
EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="content-wrapper">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category</label>
   <%-- <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />--%>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
  </div>
  
  
 <%-- <button type="submit" class="btn btn-primary">Submit</button>--%>
<asp:Button ID="Button1" runat="server" Text="insert" class="btn btn-primary" OnClick="insert"/>





    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="710px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("c_id") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("c_name") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("c_id") %>' 
                        onclick="Button2_Click" Text="Edit" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("c_id") %>' 
                        onclick="Button3_Click" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
            HorizontalAlign="Center" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</div>
</asp:Content>

