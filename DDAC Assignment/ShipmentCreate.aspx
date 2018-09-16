<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShipmentCreate.aspx.cs" Inherits="DDAC_Assignment.ShipmentCreate" %>
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
                            <label>Invoice ID</label>
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                    <div class="form-group">
                            <label>Import From</label>
                            <asp:TextBox type="text" ID="TextBox2" placeholder="Import From" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Export To</label>
                            <asp:TextBox type="text" ID="TextBox3" placeholder="Export To" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CREATE" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT * FROM [shipment]"></asp:SqlDataSource>
                </div>
            </div>
            </div>
        </div>
    </form>
</asp:Content>
