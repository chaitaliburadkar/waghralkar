﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Treatment.aspx.cs" Inherits="Treatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h2>Our Treatments</h2>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/gallery.css" rel="stylesheet" type="text/css" media="all" /> <!-- gallery css -->
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
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

	<!-- header -->
			
		<script src="js/jquery-2.1.4.js"></script>
		<script src="js/main1.js"></script> <!-- Resource jQuery -->
		<div class="clearfix"></div>
		<div id="grid-gallery" class="grid-gallery">
			<div class="container">
		
				<section class="grid-wrap">
					<ul class="grid">
						<li class="grid-sizer"></li><!-- for Masonry column width -->
						<li>
							<figure>
								<img src="images/l1.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l6.jpg" alt="img06"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l7.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l8.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l9.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l10.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l11.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>
						<%--<li>
							<figure>
								<img src="images/l13.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l6.jpg" alt="img06"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>--%>
						
					</ul>
				</section><!-- // grid-wrap -->
				<section class="slideshow">
					<ul>
						<li>
							<figure>
								<figcaption>
									<h3>AYURVEDIC ABHYANGA(MASSAGE)</h3>
							<p>The Ayurvedic doctor selects the ayurvedic oils based on your body type which is used in the massage.  </p> 		</figcaption>
								<img src="images/l1.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>KATI BASTI </h3>
									<p>This is a special ayurvedic treatment for lower backache or sciatica of different etiology. Warm ayurvedic oil is held on affected area on the lumbosacral region.</p>
								</figcaption>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>LEP</h3>
									<p>IPhone PBR polaroid before they sold out meh you probably haven't heard of them leggings tattooed tote bag, butcher paleo next level single-origin coffee photo booth.</p>
								</figcaption>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>PIND SWEDA</h3>
									<p>A bolus of Navara or Shastika rice cooked with milk and herbal decoctions is made into a fist-sized bundle called a kizhi which is used for fomentation. This is done after the application of medicated oil over the whole body and this induces a sweat.</p>
								</figcaption>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>NASYA</h3>
									<p>nasal cleansing by the application of medical oils or powders. The nostrils are considered the Doorway to the Brain and nasal application of oils is helpful in conditions like allergic sinusitis, migraines and epilepsy. </p>
								</figcaption>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>BASTI</h3>
									<p>medicated enema is particularly good for alleviating excess Vata. Basti's effects are directly felt in the colon, the prime abode of the Vata.</p>
								</figcaption>
								<img src="images/l6.jpg" alt="img06"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>SHIRODHARA</h3>
									<p>•	Shiro means head and dhara is a steady flow of warm ayurvedic oil which is specially selected by the ayurvedic doctor. Dhara can also be done with other ingredients like buttermilk</p>
								</figcaption>
								<img src="images/l7.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>NETHRA THARPANAM</h3>
									<p>•	This is a special Ayurvedic treatment to set right the degenerative changes in the retina and lens of the eyes, to strengthen the optic nerve, ciliary muscles, and to correct the refractive errors in diabetic retinopathy, etc.</p>
								</figcaption>
								<img src="images/l8.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>AVAGAHA SWEDAM </h3>
									<p>It is a kind of immersion bath where the patient is made to sweat while sitting in a tub filled with a specific warm medical decoction for the whole body or different parts of the body like the hips or feet. 
								</figcaption>
								<img src="images/l9.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>JANU BASTI</h3>
									<p>This is a special ayurvedic treatment for the knee joint conditions like arthritis, tendon injuries, sprain, etc.</p>
								</figcaption>
								<img src="images/l10.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>HRUDYA BASTI</h3>
									<p>This is a special ayurvedic treatment for a variety of heart diseases including angina pectoris. </p>
								</figcaption>
								<img src="images/l11.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>MANYA BASTI</h3>
									<p>Manya basti is useful in Cervical Spondylosis, Cervical pain ,Stiffness in neck Numbness in hands etc.</p>
								</figcaption>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Letterpress asymmetrical</h3>
									<p>Pickled hoodie Pinterest 90's proident church-key chambray. Salvia incididunt slow-carb ugh skateboard velit, flannel authentic hoodie lomo fixie photo booth farm-to-table. Minim meggings Bushwick, semiotics Vice put a bird.</p>
								</figcaption>
								<img src="images/l13.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Vice velit chia</h3>
									<p>Tattooed assumenda chambray cray officia. 90's mollit ethnic church-key ex eu pop-up gentrify. Tonx raw denim eu, bitters nesciunt distillery Neutra pop-up. Drinking vinegar Helvetica Truffaut tattooed.</p>
								</figcaption>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Brunch semiotics</h3>
									<p>Gentrify High Life adipisicing, duis slow-carb kogi Tumblr raw denim freegan Echo Park. Fingerstache laboris pork belly messenger bag, you probably haven't heard of them vegan twee Intelligentsia Vice Etsy pickled put a bird on it Godard roof party. Meggings small batch dreamcatcher velit.</p>
								</figcaption>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Chillwave nihil occupy</h3>
									<p>Marfa exercitation non, beard +1 hashtag cardigan gluten-free mixtape church-key ugh eu Portland leggings. Ennui farm-to-table fingerstache keytar Echo Park tattooed. Seitan qui artisan, aliquip cupidatat sunt Portland wayfarers duis.</p>
								</figcaption>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Kale chips lomo biodiesel</h3>
									<p>Lomo church-key whatever, seitan laborum drinking vinegar lo-fi semiotics nihil meh. Skateboard irure before they sold out Banksy. Narwhal High Life lomo aliqua drinking vinegar. PBR&B placeat proident, craft beer forage DIY nostrud meh flexitarian keytar Helvetica.</p>
								</figcaption>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Exercitation occaecat</h3>
									<p>Skateboard Truffaut bicycle rights seitan normcore. Culpa lo-fi ennui, Pinterest before they sold out Echo Park roof party sapiente aesthetic consequat Truffaut freegan voluptate. Kogi banh mi vero nihil, freegan gluten-free cliche. Forage Etsy laboris anim normcore, McSweeney's ex.</p>
								</figcaption>
								<img src="images/l6.jpg" alt="img06"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Selfies viral four</h3>
									<p>Viral roof party locavore flexitarian nihil fanny pack actually Odd Future anim commodo. Sunt yr aute, enim quis plaid sartorial duis leggings lo-fi gluten-free. Tote bag flexitarian pug stumptown, Cosby sweater try-hard ethnic scenester. Mumblecore +1 hoodie accusamus skateboard slow-carb, Thundercats Godard placeat craft beer meh enim trust fund.</p>
								</figcaption>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Photo booth skateboard</h3>
									<p>Culpa pour-over cray nesciunt dreamcatcher. Meggings distillery cillum raw denim voluptate, single-origin coffee lo-fi ethical iPhone four loko nihil salvia. Biodiesel ea Intelligentsia quis deep v, American Apparel trust fund slow-carb synth semiotics quinoa Brooklyn pour-over nulla Godard.</p>
								</figcaption>
								<img src="images/l2.jpg" alt="img02"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Ex fashion axe</h3>
									<p>Bespoke irony tousled nihil flexitarian, salvia tempor nostrud Bushwick hashtag Austin ethnic disrupt. Beard Helvetica nihil, chia craft beer Wes Anderson keytar dolore. Irure incididunt flexitarian photo booth cillum, YOLO deserunt Brooklyn artisan. Brunch assumenda irony, Blue Bottle roof party DIY ullamco quis.</p>
								</figcaption>
								<img src="images/l3.jpg" alt="img03"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Thundercats next level</h3>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
									tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
									quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.</p>
								</figcaption>
								<img src="images/l4.jpg" alt="img04"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Bushwick selvage synth</h3>
									<p>Ethical Truffaut tofu food truck cred cornhole. Irure umami Austin cornhole blog ethical. Aliqua yr Truffaut, adipisicing hashtag Shoreditch eiusmod tempor literally vinyl.</p>
								</figcaption>
								<img src="images/l5.jpg" alt="img05"/>
							</figure>
						</li>
						<li>
							<figure>
								<figcaption>
									<h3>Bottle wayfarers locavore</h3>
									<p>Pork belly irony Shoreditch fashion axe DIY. Portland banjo irony, squid gentrify Austin fixie church-key magna. Marfa artisan Echo Park, McSweeney's banjo sunt keytar tofu. Brooklyn PBR single-origin coffee disrupt polaroid ut, gluten-free XOXO plaid magna.</p>
								</figcaption>
								<img src="images/l12.jpg" alt="img01"/>
							</figure>
						</li>
					</ul>
					<nav>
						<span class="icon nav-prev"></span>
						<span class="icon nav-next"></span>
						<span class="icon nav-close"></span>
					</nav>
					<div class="info-keys icon">Navigate with arrow keys</div>
				</section><!-- // slideshow -->
			</div>
			</div><!-- // grid-gallery -->
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/classie.js"></script>
		<script src="js/cbpGridGallery.js"></script>
		<script>
		    new CBPGridGallery(document.getElementById('grid-gallery'));
		</script>
		</section>
		<!-- //laboratory-section -->
</asp:Content> 