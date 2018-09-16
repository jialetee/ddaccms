<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InvoiceCreate.aspx.cs" Inherits="DDAC_Assignment.InvoiceCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
         
                <div class="login-form">
                    
                        <div class="form-group">
                            <label>Client Name</label>&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Company Name</label>
                            <asp:TextBox ReadOnly="true" type="text" ID="TextBox1" placeholder="Company Name" runat="server" class="form-control"></asp:TextBox>
                        </div>          
                        <div class="form-group">
                            <label>Inventory</label>
                            <asp:DropDownList ID="DropDownList2" type="text" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>Item Price</label>
                            <asp:TextBox type="text" ID="TextBox3" placeholder="Price" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Item Quantity</label>
                            <asp:TextBox type="text" ID="TextBox4" placeholder="Quantity" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        
                        
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" BorderStyle="None" Onclick="Button1_Click" Text="CREATE" method="post" />
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT * FROM [clients]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT [stock_name], [stock_quantity], [stock_price] FROM [inventory]"></asp:SqlDataSource>
                </div>
                        
                </div>
            </div>
        </div>
        </form>
</asp:Content>
