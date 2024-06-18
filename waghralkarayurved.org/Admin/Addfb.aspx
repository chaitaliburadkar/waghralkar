<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" validateRequest="false" AutoEventWireup="true" CodeFile="Addfb.aspx.cs" Inherits="Admin_AddActivity" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb">ADD ACTIVITY</div>
        
       <div class="col-sm-12 col-md-12">

       

           <br />

       

     Enter  Title: <asp:TextBox ID="txttitle" runat="server" class="form-control" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Plz Enter the Title" ControlToValidate="txttitle"></asp:RequiredFieldValidator>

           <br />
           Enter FB Embedded code:<asp:TextBox ID="txtDetails" runat="server" 
               class="form-control" TextMode="MultiLine" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ErrorMessage="Plz Enter the Details" ControlToValidate="txtDetails"></asp:RequiredFieldValidator>

           

       <br />Type:<asp:DropDownList ID="ddlType" runat="server" class="form-control"  >
               <asp:ListItem>Social</asp:ListItem>
               <asp:ListItem>Ayurvedic</asp:ListItem>
           </asp:DropDownList>

          

           <br />
       &nbsp; &nbsp; &nbsp; <asp:Button ID="Button3" runat="server" Text="Submit" 
               onclick="Button3_Click"></asp:Button>

               <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataSourceID="sdsActivity" BackColor="White" BorderColor="#CC9966" 
               BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="997px">
               <Columns>
                   <asp:BoundField DataField="Details" HeaderText="Details" 
                       SortExpression="Details" />
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
           <asp:SqlDataSource ID="sdsActivity" runat="server" 
               ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
               SelectCommand="SELECT [ActivityId], [Details] FROM [Activity]">
           </asp:SqlDataSource>

               <br />

           
</asp:Content>






