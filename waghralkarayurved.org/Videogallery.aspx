<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Videogallery.aspx.cs" Inherits="Videogallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>VideoGallery</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="containe

    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:WaghralkarConnectionString %>" 
            SelectCommand="SELECT [Title], [UTubeurl], [VideoId], [Type] FROM [Videogallery]">
        </asp:SqlDataSource>

        
             <asp:DataList ID="Repeater1" runat="server"
           
             DataSourceID="SqlDataSource1" RepeatColumns="2" 
            RepeatDirection="Horizontal" RepeatLayout="Flow" Width="750px" 
            style="text-align: left; font-weight: 700">
    <ItemTemplate>
    <div align="left" class="darkCyan"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label></div> 
  
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("UTubeurl") %>'></asp:Label>
  
    <br />    
    </ItemTemplate>
  </asp:DataList>
   
    </div>
    </div>
</asp:Content>