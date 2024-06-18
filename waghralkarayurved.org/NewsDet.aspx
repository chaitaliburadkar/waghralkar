<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="NewsDet.aspx.cs" Inherits="NewsDet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>News Details</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                 <asp:DetailsView ID="DetailsView1" runat="server"  AutoGenerateRows="False" GridLines="None">
                    <Fields>
                    <asp:TemplateField>
                    <ItemTemplate >
					<div class="single">		
				<div class="single-top"> <div class="col-lg-6">
					<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image1","~/img/{0}") %>' width="600" Height="400" /></div> 
                    <div class="col-lg-6">
					<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image2","~/img/{0}") %>' width="600" Height="400"  /></div> 
				</div>
				<div class="top-single">
                        
				<h3><%# Eval("Title") %></h3>
					<div class="grid-single">
						<div class="single-one"><span><i class="fa fa-calendar"></i><%#Eval("Date") %> </div></li>
						<div class="single-one"><span><a href="#"><i class="fa fa-comment"></i>20l</a></span></div>
						<div class="single-one"><span><i class="fa fa-heart"></i>400</span></div>
						<div class="clearfix"> </div>
					</div>
					<p class="eget"><%#Eval("Details") %></p> 		</ItemTemplate>
                    </asp:TemplateField>
                    </Fields>
                    </asp:DetailsView>	
					<ul class="share">
						<li>share :</li>
						<li>							
							<div id="fb-root"></div>
							<script>							    (function (d, s, id) {
							        var js, fjs = d.getElementsByTagName(s)[0];
							        if (d.getElementById(id)) return;
							        js = d.createElement(s); js.id = id;
							        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
							        fjs.parentNode.insertBefore(js, fjs);
							    } (document, 'script', 'facebook-jssdk'));</script>
	   						
	   						<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div></li>
						<li><a href="https://twitter.com/w3layouts" class="twitter-share-button" data-dnt="true">Tweet</a>
						<script>						    !function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + '://platform.twitter.com/widgets.js'; fjs.parentNode.insertBefore(js, fjs); } } (document, 'script', 'twitter-wjs');</script></li>
					</ul>
				
</asp:Content>

