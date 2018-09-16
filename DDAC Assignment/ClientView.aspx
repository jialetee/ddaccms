<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientView.aspx.cs" Inherits="DDAC_Assignment.ClientView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <section>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style2" DataKeyNames="client_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellSpacing="10" Height="100px" Width="100%">
                               <Columns>
                                    <asp:BoundField DataField="client_id" HeaderText="Client ID" ReadOnly="True" SortExpression="client_id" />
                                    <asp:BoundField DataField="client_name" HeaderText="Client Name" SortExpression="client_name" />
                                    <asp:BoundField DataField="client_email" HeaderText="Client Email" SortExpression="client_email" />
                                    <asp:BoundField DataField="client_company" HeaderText="Client Company" SortExpression="client_company" />
                                    <asp:BoundField DataField="client_company_address" HeaderText="Client Company Address" SortExpression="client_company_address" />
                                </Columns>
                                <FooterStyle BackColor="Black" ForeColor="Black" />
                                <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center"/>
                                <SelectedRowStyle BackColor="#cccccc" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                     </table>
                  </div>
                </div>
            </div>
    </section>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT * FROM [clients]"></asp:SqlDataSource>
    </form>
</asp:Content>
