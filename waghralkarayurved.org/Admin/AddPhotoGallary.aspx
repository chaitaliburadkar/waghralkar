<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddPhotoGallary.aspx.cs" Inherits="Admin_AddPhotoGallary" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="breadcrumb">ADD PHOTOGALLARY</div>
        <div class="col-sm-12 col-md-12">
                   
                   
Enter Title: <asp:TextBox ID="txtTitle" runat="server"  class="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ErrorMessage="Plz Enter the Title" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>

<br /><br />
 Photo1:<asp:FileUpload ID="FileUpload1" runat="server" class="form-control" ></asp:FileUpload>

    &nbsp; <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click"></asp:Button>
     <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>

     <br /><br />
 Photo2:<asp:FileUpload ID="FileUpload2" runat="server" class="form-control" ></asp:FileUpload>

    &nbsp; <asp:Button ID="Button2" runat="server" Text="Upload" onclick="Button2_Click"></asp:Button>
     <asp:Label ID="lbl2" runat="server" Text=""></asp:Label>


     <br /><br />
         Type:  <asp:DropDownList ID="ddlType" runat="server" class="form-control"  >
               <asp:ListItem>Paper Cutting</asp:ListItem>
               <asp:ListItem>Event</asp:ListItem>
           </asp:DropDownList>   
         
          <br /><br />
       &nbsp; &nbsp; &nbsp; <asp:Button ID="Button3" runat="server" Text="Submit" 
               onclick="Button3_Click"></asp:Button>
               <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
               DataKeyNames="Title" DataSourceID="sdsPhotogallary">
    <Columns>
        <asp:BoundField DataField="PhotoId" HeaderText="PhotoId" InsertVisible="False" 
            ReadOnly="True" SortExpression="PhotoId" />
        <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" 
            SortExpression="Title" />
        <asp:TemplateField HeaderText="Photo1" SortExpression="Photo1">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Photo1") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="174px" 
                    ImageUrl='<%# Eval("Photo2","~/Img/{0}") %>' Width="225px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Photo2" SortExpression="Photo2">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Photo2") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" Height="128px" 
                    ImageUrl='<%# Eval("Photo2", "~/Img/{0}") %>' Width="206px" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
    </Columns>
           </asp:GridView>


           <asp:SqlDataSource ID="sdsPhotogallary" runat="server" 
               ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
               SelectCommand="SELECT [PhotoId], [Title], [Photo1], [Photo2], [Type] FROM [Photogallary]">
           </asp:SqlDataSource>



</asp:Content>

