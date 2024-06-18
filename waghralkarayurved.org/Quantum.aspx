﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Quantum.aspx.cs" Inherits="Quantum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>Quantum Healing</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<title></title>
<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/gallery.css" rel="stylesheet" type="text/css" media="all" /> <!-- gallery css -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- js for news -->
		<script src="js/jquery.easing.min.js"></script>
		<script type="text/javascript" src="js/pignose.layerslider.js"></script>
		<script type="text/javascript">
			//<![CDATA[
		    $(window).load(function () {
		        $('#visual').pignoseLayerSlider({
		            play: '.btn-play',
		            pause: '.btn-pause',
		            next: '.btn-next',
		            prev: '.btn-prev'
		        });
		    });
			//]]>
			</script>
		<!-- /js for news -->
		
		<!-- for smooth scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
		    jQuery(document).ready(function ($) {
		        $(".scroll").click(function (event) {
		            event.preventDefault();
		            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
		        });
		    });
		</script>
		<!-- //for smooth scrolling -->
	<!-- for easy-responsive-tabs -->	  
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
		<script src="js/easyResponsiveTabs.js"></script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        //Horizontal Tab
		        $('#parentHorizontalTab').easyResponsiveTabs({
		            type: 'default', //Types: default, vertical, accordion
		            width: 'auto', //auto or any width like 600px
		            fit: true, // 100% fit in a container
		            tabidentify: 'hor_1', // The tab groups identifier
		            activate: function (event) { // Callback function if tab is switched
		                var $tab = $(this);
		                var $info = $('#nested-tabInfo');
		                var $name = $('span', $info);
		                $name.text($tab.text());
		                $info.show();
		            }
		        });

		        // Child Tab
		        $('#ChildVerticalTab_1').easyResponsiveTabs({
		            type: 'vertical',
		            width: 'auto',
		            fit: true,
		            tabidentify: 'ver_1', // The tab groups identifier
		            activetab_bg: '#fff', // background color for active tabs in this group
		            inactive_bg: '#F5F5F5', // background color for inactive tabs in this group
		            active_border_color: '#c1c1c1', // border color for active tabs heads in this group
		            active_content_border_color: '#5AB1D0' // border color for active tabs contect in this group so that it matches the tab head border
		        });

		        //Vertical Tab
		        $('#parentVerticalTab').easyResponsiveTabs({
		            type: 'vertical', //Types: default, vertical, accordion
		            width: 'auto', //auto or any width like 600px
		            fit: true, // 100% fit in a container
		            closed: 'accordion', // Start closed if in accordion view
		            tabidentify: 'hor_1', // The tab groups identifier
		            activate: function (event) { // Callback function if tab is switched
		                var $tab = $(this);
		                var $info = $('#nested-tabInfo2');
		                var $name = $('span', $info);
		                $name.text($tab.text());
		                $info.show();
		            }
		        });
		    });
</script>

<div class="instruments">
				<div class="container">
						<p> <p>Edited by <b>Dr.Gopalkrishna Waghralkar</b> , the internationally circulated medical journal has
subscriptions in <b>28 countries</b> .It has on its board of directors experts like 
<b>Dr.David Timbs(New Zealand) ,Padma Bhushan Dr.Pandit Brihaspatidev Triguna,Dr.Sotaru Tamji(Japan)
Dr.Bozan Mazdenzic(Holland) and the Director of Australia-based Ayurved Health centre, Dr.Krishnakumar</b>.	</p>
								</p> <!--Horizontal Tab-->
					 <div class="lab-instruments">
						<div id="parentHorizontalTab">
							<ul class="resp-tabs-list hor_1">
								<li>All</li>
                                <li>2019</li>
								<li>2017</li>
								<li>2016</li>
							
								
							</ul>
							<div class="resp-tabs-container hor_1">
								<div>
									<!-- all-instruments -->
                                    	<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/coverpage.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="View2.aspx">View</a></div>
											</div>	
											<div class="jm-item-title">OCT 2019</div>
										</div>
									</div>

									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/0011.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="View.aspx">View</a></div>
											</div>	
											<div class="jm-item-title">AUG 2019</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins2.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">DEC 2016</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins3.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">SEPT 2016</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins4.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">JUNE 2016</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins5.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">MARCH 2016</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">DEC 2015</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins7.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">SEPT 2015</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins8.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">JULY 2015</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins9.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">MARCH 2015</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins10.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">DEC 2014</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins11.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">SEPT 2014</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins12.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="#">View</a></div>
											</div>	
											<div class="jm-item-title">JULY 2014</div>
										</div>
									</div>
									<%--<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins13.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins15.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins16.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
									<!-- //all-instruments -->
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins4.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins5.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins7.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins8.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins9.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins10.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins12.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins13.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins15.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins16.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins1.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins2.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins3.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins2.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins4.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins8.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins10.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins16.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
									<!-- //all-instruments -->
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins3.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins4.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins5.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins7.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins8.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins11.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins15.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins5.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins8.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins13.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins1.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins2.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins9.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins11.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins13.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Lorem Ipsum</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins15.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">At vero eos</div>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins11.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>
									<div class="col-md-3 jm-item first">
										<div class="jm-item-wrapper">
											<div class="jm-item-image">
												<img src="images/ins14.jpg" alt="instrument" />
												<span class="jm-item-overlay"> </span>
												<div class="jm-item-button"><a href="single-instrument.html">View</a></div>
											</div>	
											<div class="jm-item-title">Sed ut perspiciatis</div>
										</div>
									</div>--%>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</asp:Content>

