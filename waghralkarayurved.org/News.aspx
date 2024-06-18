<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>News</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			<div class="container">
				<div class="news-section-grids">
					<div class="col-md-12 news-section-grid">
                      <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
                <ItemTemplate>
						<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image1","~/img/{0}") %>' Width="500" Height="333"/></a>
					<div class="info">
				 <asp:HyperLink ID="HyperLink1" runat="server" class="news-title" NavigateUrl='<%# Eval("ActivityId","~/NewsDet.aspx?ActivityId={0}") %>' 
                        Text='<%# Eval("Title") %>'></asp:HyperLink>
							<label><%#Eval("Date") %></label>
							<p><%#Eval("Details") %></p>
						 <asp:HyperLink ID="HyperLink2" runat="server" class="more" NavigateUrl='<%# Eval("ActivityId","~/NewsDet.aspx?ActivityId={0}") %>' 
              Text="More"></asp:HyperLink>
               </div>
                        </ItemTemplate> 
              </asp:DataList>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		
</asp:Content>

