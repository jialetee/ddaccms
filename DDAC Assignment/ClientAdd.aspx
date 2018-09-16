<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientAdd.aspx.cs" Inherits="DDAC_Assignment.ClientAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Site.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <form id="form1" runat="server">
                <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
         

                <div class="login-form">
                    <div class="form-group">
                            <label>Name</label>
                            <asp:TextBox type="text" ID="TextBox1" placeholder="Client Name" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Email Address</label>
                            <asp:TextBox type="email" ID="TextBox2" placeholder="Email" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Company Name</label>
                            <asp:TextBox type="text" ID="TextBox3" placeholder="Company Name" runat="server" class="form-control"></asp:TextBox>
                        </div>

                    <div class="form-group">
                            <label>Company Address</label>
                            <asp:TextBox type="text" ID="TextBox4" placeholder="Company Address" runat="server" class="form-control"></asp:TextBox>
                        </div>

                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CREATE" />

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" DeleteCommand="DELETE FROM [clients] WHERE [client_id] = @client_id" InsertCommand="INSERT INTO [clients] ([client_name], [client_email], [client_company], [client_company_address]) VALUES (@client_name, @client_email, @client_company, @client_company_address)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [clients]" UpdateCommand="UPDATE [clients] SET [client_name] = @client_name, [client_email] = @client_email, [client_company] = @client_company, [client_company_address] = @client_company_address, [invoice_id] = @invoice_id, [shipment_id] = @shipment_id WHERE [client_id] = @client_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="client_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="client_name" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="TextBox2" Name="client_email" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="TextBox3" Name="client_company" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="TextBox4" Name="client_company_address" PropertyName="Text" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="client_name" Type="String" />
                                    <asp:Parameter Name="client_email" Type="String" />
                                    <asp:Parameter Name="client_company" Type="String" />
                                    <asp:Parameter Name="client_company_address" Type="String" />
                                    <asp:Parameter Name="client_id" Type="Int32" />
                                </UpdateParameters>
                        </asp:SqlDataSource>
                </div>
                </div>
            </div>
                    </div>
            </form>
</asp:Content>


