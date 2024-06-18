<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" validateRequest="false" AutoEventWireup="true" CodeFile="AddVideoGallaryt.aspx.cs" Inherits="Admin_AddVideoGallaryt" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb">ADD VIDEOGALLERY</div>
        
  <div class="col-sm-12 col-md-12">
       

       Enter Title: <asp:TextBox ID="txtTitle" runat="server"  class="form-control"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plz Enter the Title" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>

       <br /><br />
    UTubeurl:<asp:TextBox ID="txturl" runat="server"  class="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plz Enter the url" ControlToValidate="txturl"></asp:RequiredFieldValidator>

 
    <br /><br />
         Type: <asp:DropDownList ID="ddlType" runat="server" class="form-control" >
               <asp:ListItem>Social</asp:ListItem>
               <asp:ListItem>Ayurvedic</asp:ListItem>
           </asp:DropDownList>
           <br /><br />
       &nbsp; &nbsp; &nbsp; <asp:Button ID="Button3" runat="server" Text="Submit" 
               onclick="Button3_Click"></asp:Button>
               <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="Title" DataSourceID="sdsVideogallary">
               <Columns>
                   <asp:BoundField DataField="VideoId" HeaderText="VideoId" InsertVisible="False" 
                       ReadOnly="True" SortExpression="VideoId" />
                   <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" 
                       SortExpression="Title" />
                   <asp:TemplateField HeaderText="UTubeurl" SortExpression="UTubeurl">
                       <EditItemTemplate>
                           <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UTubeurl") %>'></asp:TextBox>
                       </EditItemTemplate>
                       <ItemTemplate>
                           <asp:Image ID="Image1" runat="server" Height="119px" 
                               ImageUrl='<%# Eval("UTubeurl") %>' Width="225px" />
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
               </Columns>
           </asp:GridView>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:SqlDataSource ID="sdsVideogallary" runat="server" 
               ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
               SelectCommand="SELECT [VideoId], [Title], [UTubeurl], [Type] FROM [Videogallery]">
           </asp:SqlDataSource>


</asp:Content>

