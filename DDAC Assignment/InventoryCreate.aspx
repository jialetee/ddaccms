<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryCreate.aspx.cs" Inherits="DDAC_Assignment.InventoryCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                
                <div class="login-form">
                    <div class="form-group">
                            <label>Item Name</label>
                            <asp:TextBox type="text" ID="TextBox1" placeholder="Item Name" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Item Quantity</label>
                            <asp:TextBox type="text" ID="TextBox2" placeholder="Quantity" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Item Price</label>
                            <asp:TextBox type="text" ID="TextBox3" placeholder="Item Price" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CREATE" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [inventory]"></asp:SqlDataSource>
                </div>
            </div>
            </div>
            </div>
    </form>
</asp:Content>
