<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb"><h3>VIEW APPOINTMENT</h3> </div>
        
       <div class="col-sm-12 col-md-12">


           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
               CellPadding="3" DataKeyNames="Id" DataSourceID="sdsappointment" Width="900px">
               <Columns>
                   <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" 
                       SortExpression="Id" />
                   <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                   <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                   <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                   <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                       SortExpression="Mobile" />
                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                   <asp:BoundField DataField="Gender" HeaderText="Gender" 
                       SortExpression="Gender" />
                   <asp:BoundField DataField="Message" HeaderText="Message" 
                       SortExpression="Message" />
               </Columns>
               <FooterStyle BackColor="White" ForeColor="#000066" />
               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
               <RowStyle ForeColor="#000066" />
               <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
               <SortedAscendingCellStyle BackColor="#F1F1F1" />
               <SortedAscendingHeaderStyle BackColor="#007DBB" />
               <SortedDescendingCellStyle BackColor="#CAC9C9" />
               <SortedDescendingHeaderStyle BackColor="#00547E" />
           </asp:GridView>
           <asp:SqlDataSource ID="sdsappointment" runat="server" 
               ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
               SelectCommand="SELECT [Id], [Name], [Email], [City], [Mobile], [Date], [Gender], [Message] FROM [mytable] ORDER BY [Id] DESC">
           </asp:SqlDataSource>


</div> 

</asp:Content>


