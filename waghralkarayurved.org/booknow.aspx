<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="booknow.aspx.cs" Inherits="booknow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>Book Now</h2><p>Id : <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
                               </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
                                    <asp:TextBox runat="server" name="name" id="txtname" placeholder="Name" class="form-control " required=""></asp:TextBox> 
                                     <asp:TextBox runat="server" name="email id" id="txtemailid" class="form-control " placeholder="Email id" required=""></asp:TextBox> 
                                     <asp:TextBox runat="server" name="mobile number" id="txtmob" class="form-control " placeholder="Mobile Number" required=""></asp:TextBox> 
									 <asp:TextBox runat="server"  id="txtcity" placeholder="City" class="form-control " required=""></asp:TextBox> 
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control "
                                        RepeatDirection="Horizontal" RepeatLayout="Flow" Width="200px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                     <asp:TextBox runat="server"  id="datepicker" class="form-control " value="Appointment date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Appointment date';}" required=""></asp:TextBox> 
									 <asp:TextBox runat="server" class="form-control " type="text" id="txtmsg" required="" 
                                        TextMode="MultiLine"></asp:TextBox> 

                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn-success btn" 
                                        onclick="btnsubmit_Click" />
								</div> </div> 

</asp:Content>

