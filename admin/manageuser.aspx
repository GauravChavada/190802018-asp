<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="admin_Default" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="clearfix"></div>
	
  <div class="content-wrapper">
  
  <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    
      <asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    
      <asp:TextBox type="text" class="form-control" ID="TextBox2" runat="server"></asp:TextBox>
  </div>
  <asp:Button ID="Button1" class=" btn btn-primary" runat="server" Text="Update" onclick="Button4_Click"/>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
    CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                        onclick="Button2_Click" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("id") %>' 
                        Text="Edit" onclick="Button3_Click" />
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

      <asp:Literal ID="Literal4" runat="server"></asp:Literal>

    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
</asp:Content>

