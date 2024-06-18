<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

<title>Waghralkar Ayurvedik Foundation | International Academy of Indian Medicine</title>
<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Ayurved Research, Waghralkar, Panchkarm, Doctor, Nagpur, India" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="css/custom.css" />
		<script type="text/javascript" src="js/modernizr.custom.79639.js"></script>		
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
			 <style>
    /* Set display to none for image*/
    #image {
        display: none;
    }
</style>


</head>
<body>
	<form id="form1" runat="server">
	<!-- header -->
	<div class="top-strip">
		<div class="container-fluid">
			<div class="social-icons">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Logo.png" 
                    Height="35px" Width="280px" />
				</div>
			<div class="contact-info">
				<ul>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>0712-2250141, 2251021</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:contact@waghralkarayurved.org">contact@waghralkarayurved.org</a></li>
				</ul>
			</div>
		 <div class="text_center">
     <!-- Add id to image -->
     <img id="image" src="~/Content/images/GarbhasanskarImg.jpg" height="300" width="300" />

 </div>
 <button class="btn btn-primary" onclick="show()" id="btnID">
     गर्भसंस्कार
 </button>

 <script>
     function show() {
         /* Access image by id and change
         the display property to block*/
         document.getElementById('image')
             .style.display = "block";
         document.getElementById('btnID')
             .style.display = "none";
     }
 </script>
			<!-- Large modal -->
			<div class="selectpackage">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">Packages</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title package-title" id="H1">
										AYURVEDIK HEALTH CHECK UP PACKAGES</h4>
								</div>
								<div class="modal-body packages">
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Patient Admitted in the hospital:- Panchakarma & Physiotherapy treatment twice a day.  
</p>
											<i class="fa fa-heartbeat"></i>
											<h4>DAY ADMISSION</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Panchakarma & Physiotherapy treatment either once or twice as per patients need and convenience. </p>
											<i class="fa fa-medkit"></i>
											<h4>OPD CHECKUP</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Music & Aroma Therapy, Nourishment facility, Herbal Garden, Recreation Center </p>
											<i class="fa fa-user-md"></i>
											<h4>SPECIAL THERAPY</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				<script>
				    $('#myModal').modal('');
				</script>
			</div>



			<div class="selectpackage">
				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">Packages</button>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
										&times;</button>
									<h4 class="modal-title package-title" id="H1">
										AYURVEDIK HEALTH CHECK UP PACKAGES</h4>
								</div>
								<div class="modal-body packages">
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Patient Admitted in the hospital:- Panchakarma & Physiotherapy treatment twice a day.  
</p>
											<i class="fa fa-heartbeat"></i>
											<h4>DAY ADMISSION</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Panchakarma & Physiotherapy treatment either once or twice as per patients need and convenience. </p>
											<i class="fa fa-medkit"></i>
											<h4>OPD CHECKUP</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="col-md-4 text-center modal-align">
										<div class="package">
											<p>Music & Aroma Therapy, Nourishment facility, Herbal Garden, Recreation Center </p>
											<i class="fa fa-user-md"></i>
											<h4>SPECIAL THERAPY</h4>
											<a href="booknow.aspx">Book Now</a>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				<script>
                    $('#myModal').modal('');
                </script>
			</div>
			<div class="clearfix"></div>
		</div>

		    <style>
        /* Set display to none for image*/
        #image {
            display: none;
        }
    </style>

   



	</div>
	<nav class="navbar nav_bottom" role="navigation">
	 <div class="container">
	 <!-- Brand and toggle get grouped for better mobile display -->
	   <div class="navbar-header nav_2">
		  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <a class="navbar-brand" href="#"></a>
	   </div> 
	   <!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
			<ul class="nav navbar-nav nav_1">
				<li><a href="Default.aspx">Home</a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">About<span class="caret"></span></a>
				  <ul class="dropdown-menu drop_menu" role="menu">
					<li><a href="about.aspx">About Hospital</a></li>
					<li><a href="Panchkarma.aspx">Panchkarma</a></li>
					<li><a href="Ayurved.aspx">Ayurveda</a></li>
					  </ul>
				</li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services<span class="caret"></span></a>
				  <ul class="dropdown-menu drop_menu" role="menu">
					<li><a href="Treatment.aspx">Treatments</a></li>
                    <li><a href="Services.aspx">Hospital Services</a></li>
                       
					<li><a href="Training.aspx">Training</a></li>
                 
                    	<li><a href="Therapy.aspx">Music & Aroma Therapy</a></li>
                         <li><a href="Quantum.aspx">Quantum Healing</a></li>
				
				  </ul>
				</li>
	
                <li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Gallary<span class="caret"></span></a>
				  <ul class="dropdown-menu drop_menu" role="menu">
					<li><a href="Photogallery.aspx">PhotoGallary</a></li>
					<li><a href="Videogallery.aspx">VideoGallary</a></li>
				  </ul>
				</li>
				<li><a href="Award.aspx">Awards</a></li>
		        <li><a href="News.aspx">News</a></li>
                 <li><a href="Blog.aspx">BLOG</a></li>
                <li class="dropdown">
				  <a href="http://shop.waghralkarayurved.org/" class="dropdown-toggle" data-toggle="dropdown">Shopping<span class="caret"></span></a>
				  <ul class="dropdown-menu drop_menu" role="menu">
					<li><a href="http://shop.waghralkarayurved.org/">Products</a></li>
					<li><a href="http://shop.waghralkarayurved.org/">Books</a></li>
				  </ul>
				</li>
                 <li><a href="Contact.aspx">CONTACT</a></li>
				
			</ul>
		 </div><!-- /.navbar-collapse -->
	   </div>
	</nav>	<!-- //header -->
	<div class="demo-2">	
		

        <div id="visual">
				<div class="slide-visual slideanim">
					<!-- Slide Image Area (1000 x 424) -->
					<ul class="slide-group">
						<li><img src="images/news1.jpg" alt="Dummy Image" class="img-responsive"/></li>
						<li><img src="images/news2.jpg" alt="Dummy Image" class="img-responsive"/></li>
						<li><img src="images/news3.jpg" alt="Dummy Image" class="img-responsive"/></li>
						<li><img src="images/news4.jpg" alt="Dummy Image" class="img-responsive"/></li>
						<li><img src="images/news5.jpg" alt="Dummy Image" class="img-responsive"/></li>
					</ul>
					<!-- Slide Description Image Area (316 x 328) -->
					<div class="script-wrap">
						<ul class="script-group">
							<li><div class="inner-script"><img src="images/news1-1.jpg" alt="Dummy Image" class="img-responsive"/></div></li>
							<li><div class="inner-script"><img src="images/news2-2.jpg" alt="Dummy Image" class="img-responsive"/></div></li>
							<li><div class="inner-script"><img src="images/news3-3.jpg" alt="Dummy Image" class="img-responsive"/></div></li>
							<li><div class="inner-script"><img src="images/news4-4.jpg" alt="Dummy Image" class="img-responsive"/></div></li>
							<li><div class="inner-script"><img src="images/news5-5.jpg" alt="Dummy Image" class="img-responsive"/></div></li>
						</ul>
						<div class="slide-controller">
							<a href="#" class="btn-prev"><img src="images/btn_prev.png" alt="Prev Slide" /></a>
							<a href="#" class="btn-play"><img src="images/btn_play.png" alt="Start Slide" /></a>
							<a href="#" class="btn-pause"><img src="images/btn_pause.png" alt="Pause Slide" /></a>
							<a href="#" class="btn-next"><img src="images/btn_next.png" alt="Next Slide" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="our-news">
		<h3 class="text-center"><b>Waghralkar Ayurved Hospital & Research Center</b> </h3>
		    </div>
		<script type="text/javascript" src="js/jquery.ba-cond.min.js"></script>
		<script type="text/javascript" src="js/jquery.slitslider.js"></script>
		<script type="text/javascript">
		    $(function () {

		        var Page = (function () {

		            var $nav = $('#nav-dots > span'),
						slitslider = $('#slider').slitslider({
						    onBeforeChange: function (slide, pos) {

						        $nav.removeClass('nav-dot-current');
						        $nav.eq(pos).addClass('nav-dot-current');

						    }
						}),

						init = function () {

						    initEvents();

						},
						initEvents = function () {

						    $nav.each(function (i) {

						        $(this).on('click', function (event) {

						            var $dot = $(this);

						            if (!slitslider.isActive()) {

						                $nav.removeClass('nav-dot-current');
						                $dot.addClass('nav-dot-current');

						            }

						            slitslider.jump(i + 1);
						            return false;

						        });

						    });

						};

		            return { init: init };

		        })();

		        Page.init();

		        /**
		        * Notes: 
		        * 
		        * example how to add items:
		        */

		        /*
				
		        var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
				
		        // call the plugin's add method
		        ss.add($items);

		        */

		    });
		</script>
		
		<!-- banner-bottom -->
		<div class="banner-bottom">
			<div class="container">
				<div class="col-md-4 timing">
					<div class="opening-hours">
						<h3><i class="fa fa-clock-o"></i>Opening Hours</h3>
						<ul>
							<li>Monday - Saturday</li>
                    
							<div class="clearfix"></div>
						</ul>
                        <ul>
							<li>Morning</li>
							<li>10.00 AM - 2.00 PM</li>
							<div class="clearfix"></div>
						</ul>
						<ul>
							<li>Evening</li>
							<li>6.00 PM - 8.30 PM</li>
							<div class="clearfix"></div>
						</ul>
						<ul>
							<li>Sunday</li>
							<li>Closed</li>
							<div class="clearfix"></div>
						</ul>
					</div>
					<div class="help">
						<h3><i class="fa fa-pencil-square-o"></i>Need Help?</h3>
						<p>Just Make an Appointment to Get Help From Our Experts</p>
						<a href="#" class="btn btn-default btn-default_2 pull-left" data-toggle="modal" data-target="#applyModal_1">Request an Appointment</a>
					</div>
				</div>
				<div class="col-md-4 abt-img">
					<img src="JLordDhanvantari.png" alt="doctor"  title="doctor" />
				</div>
				<div class="col-md-4 abt-dec">
					<h2> Dr.GopalKrishna Waghralkar</h2>
					<p class="diff">MD.(Med),Ph.D(Ayurved)</p>
					<p>Dr. GopalKrushna Waghralkar  is known as a ‘doctor friend’back home and an expert in Ayurved
throught the world.One need not say, of course, that he maintains the same identity whereever
he goes.He has broughtglory not only for Nagpur,a place in Maharashtra State ..
</p>
<h2> Dr.Ranjana Waghralkar</h2>
					<p class="diff">MD (Ayurved), Ph.D.</p>
					<p>Trained in India,Dr.Ranjana Waghralkar has practiced Ayurved since 1985, and is Managing
Editor of "QuantumHealing". She is working as a Visiting Professor in Several countries.
</p>
	<a href="#" class="btn btn-default btn-default_2 pull-left" data-toggle="modal" data-target="#Div1">Read More</a>
				
					
				</div>
				<div class="clearfix"></div>
			</div>
		</div>		
		<!-- //banner-bottom -->
		<div class="modal fade" id="Div1" tabindex="-1" role="dialog" aria-labelledby="applyModalLabel" aria-hidden="true">
			<section class="happy-patients"><div class="container">
				<div class="happy-patients-head text-center">
				
					<h4>About Doctors</h4>
				</div>
				<div class="happy-patients-grids">
					<div class="col-md-6 happy-patients-grid">
						<div class="happy-patients-grid-left text-right hvr-bounce-to-right dir-arrr">
							<h4>Dr. GopalKrushna Waghralkar</h4>
                            <p>Dr. GopalKrushna Waghralkar  is known as a ‘doctor friend’back home and an expert in Ayurved
throught the world.One need not say, of course, that he maintains the same identity whereever
he goes.He has broughtglory not only for Nagpur,a place in Maharashtra State in India,but to 
the entire nation by winning prestigious awards and finding a place in the world's 'Who'sWho'.
Consultant to the World Foundation of Ayurveda Prevention Centre,USA,an advisor to the World
Foundation of Ayurveda,the Director of International Director Ayurved Preventation Centre, America,
and Editor of Quantom Healing,an international medicine journal published from Nagpur.
He is a visiting professor to countries like United States,South Africa,Britain,Japan,Germany,
and Gulf countries to name a few.A cursery look at the following will prove his merit.</p>
							
						</div>
						<div class="happy-patients-grid-right">
							<img src="images/d3.jpg" alt="happy patient" title="happy patient" />
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-6 happy-patients-grid">
						<div class="happy-patients-grid-right another1 dir-arrl">
							<img src="images/d1.jpg" alt="happy patient" title="happy patient" />
						</div>
						<div class="happy-patients-grid-left another2 hvr-bounce-to-left">
										<h4>Dr.Ranjana G.Waghralkar</h4>
                                        <p>Trained in India,Dr.Ranjana Waghralkar has practiced Ayurved since 1985, and is Managing
Editor of "QuantumHealing".She is working as a Visiting Professor in Several countries.
Her writing has been published in several Newspapers,and she lectures widely in several countries.</p>
						</div>
						<div class="clearfix"></div>
					</div>
			
				</div>
			</div></section> 
      </div> 
		<!-- Stats -->
		<div class="stats">
			<div class="container">
				<p class="slideanim"></p>
				<div class="stats-info">
					<div class="col-md-3 col-sm-3 stats-grid slideanim">
						<i class="fa fa-smile-o"></i>
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='18303' data-delay='.5' data-increment="50">18303</div>
						<p class="stats-info">Happy Patients</p>
					</div>
					<div class="col-md-3 col-sm-3 stats-grid slideanim">
						<i class="fa fa-bookmark"></i>
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='89' data-delay='.5' data-increment="5">89</div>
						<p class="stats-info">Awards</p>
					</div>
					<div class="col-md-3 col-sm-3 stats-grid slideanim">
						<i class="fa fa-book" ></i>
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='215' data-delay='.5' data-increment="20">215</div>
						<p class="stats-info">Book Published</p>
					</div>
					<div class="col-md-3 col-sm-3 stats-grid slideanim">
						<i class="fa fa-flask"></i>
						<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='285' data-delay='.5' data-increment="1">285</div>
						<p class="stats-info">Ayurvedic Product</p>
					</div>
					<div class="clearfix"></div>
				</div>

			</div>
		</div>
		<!-- //Stats -->
		<script type="text/javascript" src="js/numscroller-1.0.js"></script>
		
		<!-- tabs -->	
		<div class="vertical-tabs">
			<div class="container">
				<h3 class="title text-center">Who We Are</h3>
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-8 col-xs-9 bhoechie-tab-container">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
						  <div class="list-group">
							<a href="#" class="list-group-item active text-center">
							    RESEARCH
							</a>
							<a href="#" class="list-group-item text-center">
							    PROUDUCT
							</a>
							<a href="#" class="list-group-item text-center">
							    CENTRES
							</a>
							<a href="#" class="list-group-item text-center">
							    TREATMENTS
							</a>
							<a href="#" class="list-group-item text-center">
							    QUANTUM HEALING
							</a>
						  </div>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
							<!-- flight section -->
							<div class="bhoechie-tab-content active">
								<div class="services">
									<div class="ser-img">
										<img src="images/ser1.jpg" title="service" alt="" />
									</div>
									<div class="ser-info">
										<h3>Waghralkar Ayurved Hospital and Reasearch Centre</h3>
										<p>It has also been recognised by Kavi Kulguru 
Kalidas Sanskrit University for PhD students.The centre provides all the facilities that are
required to do research and specialisation in any subject related to Ayurveda.Laboratory
facilities are also available in the spacious hospital area where herbs are planted and 
research work done continuously.</p>
										
										<a href="About.aspx">Read More</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<!-- train section -->
							<div class="bhoechie-tab-content">
								<div class="services">
									<div class="ser-img">
										<img src="images/ser2.jpg" title="service" alt="" />
									</div>
									<div class="ser-info">
										<h3>PHARMACY AND PRODUCTION CENTRE</h3>
										<p>Waghralkar Hospital does not depend only on the medicines that are already available.
The research centre has a special Pharmacy Department which is constantly engaged in 
upgrading knowledge and exploring new formulations for providing Quality treatment.Having his own pharmacy and production centre.</p>
										<p>Sed ut perspiciatis unde omnis iste natus error sit, totam rem aperiam, eaque
										    ipsa quae ab illo inventore dicta sunt explicabo
										</p>
										<a href="http://shop.waghralkarayurved.org/">Read More</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
				
							<!-- hotel search -->
							<div class="bhoechie-tab-content">
								<div class="services">
									<div class="ser-img">
										<img src="images/ser3.jpg" title="service" alt="" />
									</div>
									<div class="ser-info">
										<h3>RECREATION CENTER</h3>
										<p>Television,a walk in the garden that has herbs and other plants of medicinal value.Patients
admitted to the hospital regularly take benefit of the facilities thus provided and get fresh.
The recreation helps them remove the tags that they are patients.
 
                                        </p>
										<h3>MUSIC & AROMA THERAPY</h3>
										<p>Music is closely associated with nature. It will also not be wrong to say that the origin of nature is through sound. And atoms always establish communication with each other. Wherever there is motion there always is a sound, states the law of science. And in absence of sound, the nature would not have been created. This slows the importance of sound in the creation of this nature.
                                        </p>
										 <a href="Therapy.aspx">Read More</a>
									
										</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bhoechie-tab-content">
								<div class="services">
									<div class="ser-img">
										<img src="images/ser4.jpg" title="service" alt="" />
									</div>
									<div class="ser-info">
										<h3>AVAGAHA SWEDAM</h3>
										<p> Vamana, Virechana, Nasya, Basti, Niruha Vasti

										</p>
                                        <h3 >MASSAGE</h3>
                                        <P>AYURVEDIC ABHYANGA, PINDA SWEDA, SHIRODHARA, NETHRA THARPANAM</p>
                                        <h3>BASTI</h3><p>Kati Basti, Janu Basti</p>
										<a href="Treatment.aspx">Read More</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="bhoechie-tab-content">
								<div class="services">
									<div class="ser-img">
										<img src="images/ser5.jpg" title="service" alt="" />
									</div>
									<div class="ser-info">
										<h3>QUANTUM HEALING - Magzine </h3>
										<p>Edited by <b>Dr.Gopalkrishna Waghralkar</b> , the internationally circulated medical journal has
subscriptions in <b>28 countries</b> .It has on its board of directors experts like 
<b>Dr.David Timbs(New Zealand) ,Padma Bhushan Dr.Pandit Brihaspatidev Triguna,Dr.Sotaru Tamji(Japan)
Dr.Bozan Mazdenzic(Holland) and the Director of Australia-based Ayurved Health centre, Dr.Krishnakumar</b>.	</p>
										
                                        <a href="Quantum.aspx" >Jan 2016</a>
                                        <a href="Quantum.aspx">Apr 2016</a>
                                        <a href="Quantum.aspx">July 2016</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
			  </div>
			</div>
		</div>
		<script type="text/javascript" src="js/tabs.js"></script>		
		<!-- //tabs -->
	

		
		<!-- quick links -->
		<div class="news-section" id="news">
			<div class="container">
				<div class="news-section-head text-center">
					<h3>Latest news</h3>
					<p>Here, there and everywhere... what we've been doing</p>
				</div>
				<div class="news-section-grids">
					<div class="col-md-4 news-section-grid">
                      <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
						<asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image1","~/Img/{0}") %>' Width ="410" Height ="320" /></a>
					<div class="info">
				 <asp:HyperLink ID="HyperLink1" runat="server" class="news-title" NavigateUrl='<%# Eval("ActivityId","~/NewsDet.aspx?ActivityId={0}") %>' 
                        Text='<%# Eval("Title") %>'></asp:HyperLink>
							<label><%#Eval("Date") %></label>
							<p></p>
							<a class="more" href="News.aspx">Read more</a>
						</div>
                        </ItemTemplate> 
              </asp:DataList>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<!-- //quick links -->
		
		<!-- book an appointment -->
		<div class="appointment">
			<div class="container">
				<div class="col-md-9 appointment-left">
					<h3>FREE APPOINTMENT BOOKING</h3>
					<p>Book your Online Appointment for Consulting.</p>
				</div>
				<div class="col-md-3 appointment-right">
					<a href="#" class="btn btn-default btn-default_2 pull-left" data-toggle="modal" data-target="#applyModal_1">book your appointment</a>
					<div class="modal fade" id="applyModal_1" tabindex="-1" role="dialog" aria-labelledby="applyModalLabel" aria-hidden="true">
				  	<div class="modal-dialog dialog_3">
				    	<div class="modal-content">
					      	<div class="modal-header">
					        	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
					        	<h4 class="modal-title" id="myModalLabel"><div class="head_4">
			                         <h3>Make An appointment Now</h3>
									<p>Id : <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
                               </p>
                                     </div></h4>
					      	</div>
							<div class="modal-body">
								<div name="row"  class="register">
                                    <asp:TextBox runat="server" name="name" id="txtname" placeholder="Name" required=""></asp:TextBox> 
                                     <asp:TextBox runat="server" name="email id" id="txtemailid" placeholder="Email id" required=""></asp:TextBox> 
                                     <asp:TextBox runat="server" name="mobile number" id="txtmob" placeholder="Mobile Number" required=""></asp:TextBox> 
									 <asp:TextBox runat="server"  id="txtcity" placeholder="City" required=""></asp:TextBox> 
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="form-control "
                                        RepeatDirection="Horizontal" RepeatLayout="Flow" Width="200px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                     <asp:TextBox runat="server" class="date" id="datepicker" value="Appointment date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Appointment date';}" required=""></asp:TextBox> 
									 <asp:TextBox runat="server" type="text" id="txtmsg" required="" 
                                        TextMode="MultiLine"></asp:TextBox> 
                                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn-success" 
                                        onclick="btnsubmit_Click" />
								</div> 
							</div>
							<!---start-date-piker---->
								<link rel="stylesheet" href="css/jquery-ui.css" />
								<script src="js/jquery-ui.js"></script>
									<script>
									    $(function () {
									        $("#datepicker").datepicker();
									    });
									</script>
							<!---/End-date-piker---->

                     </div>
		         </div>
		     </div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //book an appointment -->
		
		
		
		<!-- footer -->
		<footer>
			<div class="footer-grids">
				<div class="container">
					<div class="col-md-3 footer one">
						<h3>About Hospital</h3>
						<p>Hospital is unique in the way that it caters to the needs 
of every patient. It comprises Panchakarma Department,the Mind and Body Centre, Yoga and Mediation Centre,
air-conditined and well-equipped rooms with all the latest gadgets. With the facility of 
CCTV,the doctor can attend to the patients constantly.</p> <p class="adam">- Dr. Ranjana Waghralkar</p>
						<div class="clear"></div>
					</div>
					<div class="col-md-3 footer one tweet">
						<h3>Tweets</h3>
						<ul>
							<li>
								<a href="#">वाघ्रळकर हॉस्पिटल मध्ये पंचकर्म सुविधा खूपच चांगली आहे 
								<i>Sachin Mahore/i></a>
								<span>About 15 days ago<span>
							</span></span></li>
							<li>
								<a href="#"> Quantaum Healing is good for Readers of Ayurveda 
								<i>Rahul Balinge</i></a>
								<span>About 19 days ago<span>
							</span></span></li>
						</ul>
					</div>
					<div class="col-md-3 footer two">
						<h3>Keep Connected</h3>
						<ul>
							<li><a class="fb" href="#"><i class="fa fa-facebook"></i>Like us on Facebook</a></li>
							<li><a class="fb1" href="#"><i class="fa fa-twitter"></i>Follow us on Twitter</a></li>
							<li><a class="fb2" href="#"><i class="fa fa-google-plus"></i>Add us on Google Plus</a></li>
							<li><a class="fb3" href="#"><i class="fa fa-dribbble"></i>Follow us on Dribbble</a></li>
							<li><a class="fb4" href="#"><i class="fa fa-pinterest-p"></i>Follow us on Pinterest</a></li>
						</ul>
					</div>
					<div class="col-md-3 footer three">
						<h3>Contact Information</h3>
						<ul>
							<li><i class="fa fa-map-marker"></i><p>Waghralkar Ayurved Hospital & Research Center, <span>47, West Samarth Nagar, Ajani Square</span>Nagpur - 440015(MS) India</p><div class="clearfix"></div> </li>
							<li><i class="fa fa-phone"></i><p>0712 2250141</p> <div class="clearfix"></div> </li>
							<li><i class="fa fa-envelope-o"></i><a href="mailto:contact@waghralkarayurved.org">contact@waghralkarayurved.org</a> <div class="clearfix"></div></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- maps -->
		<!-- news letter -->
		<div class="subscribe text-center">
			<div class="container">
				<h3>Subscribe to Our Newsletter</h3>
				<p>Quantum Healing Magzine</p>
				
					<input  class="user" type="text">
					<input type="submit" class="btn-danger btn" value="Subscribe">
				
				<p class="spam">We never share your information or use it to spam you</p>
			</div>
		</div>
		<!-- //news letter -->
			<div class="copy-right-grids">
				<div class="container">
					<div class="copy-left">
							<p class="footer-gd">© 2016 Waghralkar. All Rights Reserved | Design by <a href="https://esankalp.com/" target="_blank">eSankalp</a></p>
					</div>
					<div class="footer-links">
						<ul>
							<li><a href="sitemap.html">Sitemap</a></li>
							<li><a href="privacy_policy.html">Privacy Policy</a></li>
							<li><a href="terms.html">Terms of Use</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</footer>
		<!-- //footer -->
		<script type="text/javascript">
		    $(document).ready(function () {
		        /*
		        var defaults = {
		        containerID: 'toTop', // fading element id
		        containerHoverID: 'toTopHover', // fading element hover id
		        scrollSpeed: 1200,
		        easingType: 'linear' 
		        };
		        */

		        $().UItoTop({ easingType: 'easeOutQuart' });

		    });
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    </form>
</body>

</html>
