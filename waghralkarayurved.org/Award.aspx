<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Award.aspx.cs" Inherits="Award" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>Awards</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

			<div class="container">
				<div class="news-section-grids">
					<div class="col-md-4 news-section-grid">
                      <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                <ItemTemplate>
						<div class="info">
				 <asp:HyperLink ID="HyperLink1" runat="server" class="news-title" 
                        Text='<%# Eval("Title") %>' Width="330" Height="90"></asp:HyperLink>
							<label><%#Eval("Date") %></label>
							<p><%#Eval("Details") %></p>
						               </div>
             </a>
					
                        </ItemTemplate> 
              </asp:DataList>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		
</asp:Content>

		    