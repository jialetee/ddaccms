<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InventoryView.aspx.cs" Inherits="DDAC_Assignment.InventoryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <section>
        <div class="row">
            <div class="col">
                <div class="table-responsive">
                    <table class="table">
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" CssClass="auto-style2" DataKeyNames="stock_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellSpacing="10" Height="100px" Width="100%">
                               <Columns>
                                    <asp:BoundField DataField="stock_id" HeaderText="Stock ID" ReadOnly="True" SortExpression="stock_id" InsertVisible="False" />
                                    <asp:BoundField DataField="stock_name" HeaderText="Stock Name" SortExpression="stock_name" />
                                    <asp:BoundField DataField="stock_quantity" HeaderText="Stock Quantity" SortExpression="stock_quantity" />      
                                    <asp:BoundField DataField="stock_price" HeaderText="Stock Price" DataFormatString="{0:n}" SortExpression="stock_price" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DDACDBConnectionString %>" SelectCommand="SELECT * FROM [inventory]"></asp:SqlDataSource>
    </form>
</asp:Content>
