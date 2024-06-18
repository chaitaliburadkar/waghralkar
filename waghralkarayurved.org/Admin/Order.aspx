<%@ Page Title="Waghralkar | Order Details" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!--  page-wrapper -->
          <div id="page-wrapper">
            <div class="col-lg-12">
                    <h3 class="page-header">Order Details</h3>
                </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    <div class="col-lg-6">
                                    
    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsinv" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="670px" DataKeyNames="Invoice_ID,Cust_ID">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Select"  data-target="#whynimsModal" Text="Select"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Invoice_ID" HeaderText="Invoice_ID" 
                InsertVisible="False" ReadOnly="True" SortExpression="Invoice_ID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
            <asp:BoundField DataField="Discount" HeaderText="Discount" 
                SortExpression="Discount" />
            <asp:BoundField DataField="Delivery" HeaderText="Delivery" 
                SortExpression="Delivery" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
            <asp:BoundField DataField="Cust_Id" HeaderText="Cust_Id" 
                SortExpression="Cust_Id" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
<asp:SqlDataSource ID="sdsinv" runat="server" ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
        DeleteCommand="DELETE FROM [Invoice] WHERE [Date] = @original_Date AND [Amount] = @original_Amount AND [Cust_Id] = @original_Cust_Id AND [Invoice__ID] = @original_Invoice_ID AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL)) AND (([Delivery] = @original_Delivery) OR ([Delivery] IS NULL AND @original_Delivery IS NULL)) AND [Status] = @original_Status" 
        InsertCommand="INSERT INTO [Invoice] ([Date], [Amount], [Discount], [Delivery], [Status], [Cust_Id]) VALUES (@Date, @Amount, @Discount, @Delivery, @Status, @Cust_Id)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [Invoice__ID] AS Invoice_ID, [Date], [Amount], [Discount], [Delivery], [Status], [Cust_Id] FROM [Invoice] ORDER BY [Invoice__ID] DESC" 
        UpdateCommand="UPDATE [Invoice] SET [Invoice__ID] = @Invoice_ID, [Discount] = @Discount, [Delivery] = @Delivery, [Status] = @Status WHERE [Date] = @original_Date AND [Amount] = @original_Amount AND [Cust_Id] = @original_Cust_Id AND [Invoice__ID] = @original_Invoice_ID AND (([Discount] = @original_Discount) OR ([Discount] IS NULL AND @original_Discount IS NULL)) AND (([Delivery] = @original_Delivery) OR ([Delivery] IS NULL AND @original_Delivery IS NULL)) AND [Status] = @original_Status">
    <DeleteParameters>
        <asp:Parameter DbType="Date" Name="original_Date" />
        <asp:Parameter Name="original_Amount" Type="Decimal" />
        <asp:Parameter Name="original_Cust_Id" Type="String" />
        <asp:Parameter Name="original_Invoice_ID" Type="Int64" />
        <asp:Parameter Name="original_Discount" Type="Decimal" />
        <asp:Parameter Name="original_Delivery" Type="Decimal" />
        <asp:Parameter Name="original_Status" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="Date" />
        <asp:Parameter Name="Amount" Type="Decimal" />
        <asp:Parameter Name="Discount" Type="Decimal" />
        <asp:Parameter Name="Delivery" Type="Decimal" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter Name="Cust_Id" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Invoice_ID" Type="Int64" />
        <asp:Parameter Name="Discount" Type="Decimal" />
        <asp:Parameter Name="Delivery" Type="Decimal" />
        <asp:Parameter Name="Status" Type="String" />
        <asp:Parameter DbType="Date" Name="original_Date" />
        <asp:Parameter Name="original_Amount" Type="Decimal" />
        <asp:Parameter Name="original_Cust_Id" Type="String" />
        <asp:Parameter Name="original_Invoice_ID" Type="Int64" />
        <asp:Parameter Name="original_Discount" Type="Decimal" />
        <asp:Parameter Name="original_Delivery" Type="Decimal" />
        <asp:Parameter Name="original_Status" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
</div> 
      <div class="col-lg-6"><asp:Button runat="server" class="btn btn-warning" Text ="Print" ID="btnsubmit" 
                                        onclick="btnsubmit_Click" Width="100"></asp:Button>
  
 <asp:Panel ID="Panel1" runat="server" Height="581px" Width="659px" 
            BorderColor="#CCCCCC" BorderStyle="Double" BorderWidth="1px" 
              BackColor="White">
            <table class="style1">
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style2">
                        <asp:Image ID="Image1" runat="server" Height="45px" 
                            ImageUrl="~/images/Logo.png" Width="324px" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Bill From :
                        <br />
                        Waghralkar Ayurved<br /> Nagpur<br /> 444603<br /> contact@Waghralkarayurved.org</td>
                    <td class="style2">
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4"  ForeColor="Black" 
                            GridLines="Horizontal" Height="16px" Width="280px" 
                            DataSourceID="sdsinvoice">
                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <Fields>
                                <asp:BoundField DataField="Invoice_ID" HeaderText="INVOICE ID # :" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Invoice_ID" />
                                <asp:BoundField DataField="Date" HeaderText="DATE :" SortExpression="Date" />
                                <asp:BoundField DataField="Amount" HeaderText="AMOUNT :" 
                                    SortExpression="Amount" />
                            </Fields>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="sdsinvoice" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
                            SelectCommand="SELECT [Invoice__ID] AS Invoice_ID, [Date], [Amount] FROM [Invoice] WHERE ([Invoice__ID] = @Invoice_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Invoice_ID" 
                                    PropertyName="SelectedValue" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Bill To :<asp:DetailsView ID="DetailsView4" runat="server" 
                            AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="sdscust" 
                            GridLines="Horizontal" Height="50px" Width="261px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <Fields>
                                <asp:BoundField DataField="Cust_Name" HeaderText="Customer Name" 
                                    SortExpression="Cust_Name" />
                                <asp:BoundField DataField="Contact_No" HeaderText="Contact No" 
                                    SortExpression="Contact_No" />
                            </Fields>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="sdscust" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
                            
                            SelectCommand="SELECT [Cust_Name], [Contact_No] FROM [Registration] WHERE ([Contact_No] = @Contact_No)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Contact_No" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="sdsdelivery" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
                            SelectCommand="SELECT [Name], [Pin], [Landmark], [City], [Address] FROM [Delivery] WHERE ([Invoice_Id] = @Invoice_Id)">
                             <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Invoice_ID" 
                                    PropertyName="SelectedValue" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="style6">
                        Deliverd To :<asp:DetailsView ID="DetailsView3" runat="server" 
                            AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="sdsdelivery" 
                            GridLines="Horizontal" Height="16px" Width="274px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <Fields>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                                <asp:BoundField DataField="Landmark" HeaderText="Landmark" 
                                    SortExpression="Landmark" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Address" HeaderText="Address" 
                                    SortExpression="Address" />
                            </Fields>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="Item_ID" DataSourceID="sdsorder" 
                            style="text-align: center" Width="651px" Height="174px">
                            <Columns>
                                <asp:BoundField DataField="Item_ID" HeaderText="ITEM_ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="Item_ID" />
                                <asp:TemplateField HeaderText="ITEM NAME" SortExpression="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Brand_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Qty" HeaderText="QTY" SortExpression="Qty" />
                                <asp:BoundField DataField="Discount" HeaderText="DISCOUNT" 
                                    SortExpression="Discount" />
                                <asp:BoundField DataField="Amount" HeaderText="AMOUNT" 
                                    SortExpression="Amount" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="sdsorder" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
                            SelectCommand="SELECT ItemData.Item_ID, ItemData.Name, Order1.Qty, Order1.Discount, Order1.Amount, Brand_Master.Brand_Name FROM Order1 INNER JOIN ItemData ON Order1.Item_ID = ItemData.Item_ID INNER JOIN Brand_Master ON ItemData.Brand = Brand_Master.Brand_ID WHERE (Order1.Invoice_Id = @Invoice_Id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="Invoice_Id" 
                                    PropertyName="SelectedValue" Type="Int64" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        Note:
                        <br />
                        Items will be delivered within 4-5 business days</td>
                </tr>
                <tr>
                    <td class="style4" colspan="2">
                        -------------------------------------------------------------------------------------------------------------<br /> 
                        This is Computer generated invoice. No signature required.</td>
                </tr>
            </table>
        </asp:Panel>
        
      </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>
        </div>
        <!-- end page-wrapper -->

    </div></div>
    <!-- end wrapper -->
</asp:Content>
