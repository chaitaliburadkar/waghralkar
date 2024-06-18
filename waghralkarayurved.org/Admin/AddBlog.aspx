<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddBlog.aspx.cs" Inherits="Admin_AddBlog" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb"><h3>ADD BLOG</h3> </div>
        
       <div class="col-sm-6 col-md-6">

     Enter Blog Title: <asp:TextBox ID="txttitle" runat="server" class="form-control" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ErrorMessage=" Plz Enter the Title" ControlToValidate="txttitle" 
               Display="Dynamic" ForeColor="#FF3300"></asp:RequiredFieldValidator>

    <br />
     Enter Blog Details:<asp:TextBox ID="txtDetails" runat="server" 
               class="form-control" TextMode="MultiLine" Height="250px" ></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ErrorMessage="Plz Enter the Details" ControlToValidate="txtDetails" 
               Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
</div> 
  <div class="col-sm-6 col-md-6">
   Type:<asp:DropDownList ID="ddlType" runat="server" class="form-control"  >
               <asp:ListItem>Social</asp:ListItem>
               <asp:ListItem>Ayurvedic</asp:ListItem>
           </asp:DropDownList>

    
       Date:<asp:TextBox ID="txtDate" runat="server" class="form-control" ></asp:TextBox>
           
           <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
               Enabled="True" TargetControlID="txtDate" Format="dd/M/yyyy">
           </cc1:CalendarExtender>
           <br />
         Image1 :<asp:FileUpload ID="FileUpload1" runat="server" class="form-control" ></asp:FileUpload>

     <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" class="btn btn-danger"></asp:Button>
     <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
     <br />
       
         Image2 :<asp:FileUpload ID="FileUpload2" runat="server" class="form-control" ></asp:FileUpload>

     <asp:Button ID="Button2" runat="server" Text="Upload" onclick="Button2_Click" class="btn btn-danger"></asp:Button>
     <asp:Label ID="lbl2" runat="server" Text=""></asp:Label>

         <br />
        <br />
    
       &nbsp; &nbsp; &nbsp; <asp:Button ID="Button3" runat="server" Text="Submit" 
               onclick="Button3_Click" class="btn btn-warning"></asp:Button>
      <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
               <br /> </div> <div class="col-sm-12 col-md-12">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="Title" DataSourceID="sdsActivity" BackColor="White" 
               BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
               <Columns>
                   <asp:BoundField DataField="ActivityId" HeaderText="ActivityId" 
                       InsertVisible="False" ReadOnly="True" SortExpression="ActivityId" />
                   <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" 
                       SortExpression="Title" />
                   <asp:BoundField DataField="Details" HeaderText="Details" 
                       SortExpression="Details" />
                   <asp:TemplateField HeaderText="Image1" SortExpression="Image1">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image1") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Image ID="Image1" runat="server" Height="160px" 
                               ImageUrl='<%# Eval("Image1","~/Img/{0}") %>' Width="200px" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Image2" SortExpression="Image2">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Image2") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Image ID="Image2" runat="server" Height="160px" 
                               ImageUrl='<%# Bind("Image2","~/Img/{0}") %>' Width="200px" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                   <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
               SelectCommand="SELECT [ActivityId], [Title], [Details], [Image1], [Image2], [Type], [Date] FROM [Blog]">
           </asp:SqlDataSource>

               <br />

           <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
           </cc1:ToolkitScriptManager></div> 
</asp:Content>






