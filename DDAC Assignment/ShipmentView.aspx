<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShipmentView.aspx.cs" Inherits="DDAC_Assignment.ShipmentView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <section>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style2" DataKeyNames="shipment_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellSpacing="10" Height="100px" Width="100%">
                               <Columns>
                                    <asp:BoundField DataField="shipment_id" HeaderText="shipment_id" ReadOnly="True" SortExpression="shipment_id" />
                                    <asp:BoundField DataField="export_to" HeaderText="export_to" SortExpression="export_to" />
                                    <asp:BoundField DataField="import_from" HeaderText="import_from" SortExpression="import_from" />      
                                    <asp:BoundField DataField="invoice_id" HeaderText="invoice_id" SortExpression="invoice_id" />                    
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT * FROM [shipment]"></asp:SqlDataSource>
</form>
</asp:Content>
