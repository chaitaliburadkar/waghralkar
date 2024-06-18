<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>Blogs</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
		
			
				<div class="container">
                    
					<div class="bolg-posts">
							<div class="col-md-12 blog-top">
								<div class="blog-in">
                                  <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
									<a href="single.html" class="blog-post"> <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image1","~/img/{0}") %>' /></a></a>
									<div class="blog-grid">
										<div class="date">
											<span class="date-in"><i class="fa fa-calendar"></i><%#Eval("Date") %></span>
											<a href="single.html" class="comments"><i class="fa fa-comment"></i>48</a>
											<div class="clearfix"> </div>
										</div>
										<h3><a href="single.html"><%#Eval("Title") %></a></h3>
										<p><%#Eval("Details") %></p>
										<a href="BlogDet.aspx" class="smore">READ MORE</a>										
									</div>
									<div class="clearfix"></div>					
								</div>  </ItemTemplate> 
              </asp:DataList>
                               
								<i class="black"> </i>
							</div>
							
							</div>
                           
							<div class="clearfix"> </div>
							<ul class="start">
									<li><a href="#"><span class="prev">Prev</span></a></li>
									<li><span>1</span></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">7</a></li>
									<li><a href="#">8</a></li>
									<li><span>.....</span></li>
									<li><a href="#">12</a></li>
									<li><a href="#" class="next">Next</a></li>
								</ul>
					</div>
				</div>
		
</asp:Content>

