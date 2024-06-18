<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Photogallery.aspx.cs" Inherits="Admin_Photogallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>PhotoGallery</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
					<div class="row">
					
						        

 Select Type: <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control" 
                            AutoPostBack="True" RepeatDirection="Horizontal">   
                            <asp:ListItem Selected="True">Event</asp:ListItem>
                            <asp:ListItem>Paper Cutting</asp:ListItem>
                     </asp:RadioButtonList> 

    </div>

    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Title" DataSourceID="sdsPhotogallary" Width="1200px" 
            ShowHeader="False">
            <Columns>
                <asp:TemplateField HeaderText="Title" SortExpression="Title">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                        <asp:Image ID="Image3" runat="server" />
                        <asp:Image ID="Image4" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table width="900">
                            <tr>
                                <td class="modal-sm" style="background-color: #CCFF66;" colspan="2">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image7" runat="server" Height="400px" 
                                        ImageUrl='<%# Eval("Photo1","~/Img/{0}") %>' Width="550px" />
                                </td>
                                <td>
                                    <asp:Image ID="Image6" runat="server" Height="400px" 
                                        ImageUrl='<%# Eval("Photo2","~/Img/{0}") %>' Width="550px" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    
        <asp:SqlDataSource ID="sdsPhotogallary" runat="server" 
            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
            
            SelectCommand="SELECT [Title], [Photo1], [Photo2] FROM [Photogallary] WHERE ([Type] = @Type)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" DefaultValue="Event" 
                    Name="Type" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
    </div>
    </div>
</asp:Content>


