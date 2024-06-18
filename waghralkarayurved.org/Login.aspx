<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Waghralkar Ayurved | Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

 </head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="background-image: url('billlogin.jpg')">
    
        <asp:Image ID="Image1" runat="server" Height="97px" ImageUrl="~/images/Logo.png"
            Width="600px" />
        <br />
        <br />
   
           <h3 style="font-family: 'Goudy Stout'; color: #000000">Waghralkar Ayurved | Admin</h3>
        <br />
        <br />
        User Id&nbsp; :
        <asp:TextBox ID="TextBox2" class="form-control"  runat="server" Width="200"></asp:TextBox>
        <br />
        Password : 
        <asp:TextBox ID="TextBox1" class="form-control"  runat="server" Width="200" TextMode="Password"></asp:TextBox>
    
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me next time" /><br /><br />
    <asp:Button ID="btnshow" class="btn btn-info contact-submit custom-btn" 
                            runat="server" Text="Login" onclick="btnshow_Click" 
            Height="35px" Width="65px" />
</div>
    </form>
</body>
</html>
