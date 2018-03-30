<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="media.aspx.cs" Inherits="FYP.pages.media" %>
<!DOCTYPE HTML>
<html>
<head>
<style>
                .rating {
          float: left;
        }

        /* :not(:checked) is a filter, so that browsers that don’t support :checked don’t 
           follow these rules. Every browser that supports :checked also supports :not(), so
           it doesn’t make the test unnecessarily selective */

        .rating:not(:checked)>input {
          position: absolute;
          top: -9999px;
          clip: rect(0, 0, 0, 0);
        }

        .rating:not(:checked)>label {
          float: right;
          width: 1em;
          padding: 0 .1em;
          overflow: hidden;
          white-space: nowrap;
          cursor: pointer;
          font-size: 200%;
          line-height: 1.2;
          color: #ddd;
          text-shadow: 1px 1px #bbb, 2px 2px #666, .1em .1em .2em rgba(0, 0, 0, .5);
        }

        .rating:not(:checked)>label:before {
          content: '★ ';
        }

        .rating>input:checked~label {
          color: #f70;
          text-shadow: 1px 1px #c60, 2px 2px #940, .1em .1em .2em rgba(0, 0, 0, .5);
        }

        .rating:not(:checked)>label:hover,
        .rating:not(:checked)>label:hover~label {
          color: gold;
          text-shadow: 1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0, 0, 0, .5);
        }

        .rating>input:checked+label:hover,
        .rating>input:checked+label:hover~label,
        .rating>input:checked~label:hover,
        .rating>input:checked~label:hover~label,
        .rating>label:hover~input:checked~label {
          color: #ea0;
          text-shadow: 1px 1px goldenrod, 2px 2px #B57340, .1em .1em .2em rgba(0, 0, 0, .5);
        }

        .rating>label:active {
          position: relative;
          top: 2px;
          left: 2px;
        }
</style>
<title>MOODS | Emotion Based Recommendation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mosaic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="../assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="../assets/css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="../assets/css/icon-font.css" type='text/css' />
<script src="../assets/js/jquery-2.1.4.js"></script>
 <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <link href="../assets/css/demo.css" rel="stylesheet" />
</head> 
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
    
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent">
        <div class="container">
            <div class="navbar-translate">
                <a class="navbar-brand" href="home.aspx" rel="tooltip" title="Designed by Fastian" data-placement="bottom" target="_blank">
                    MOODS
                </a>
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="./assets/images/blurred-image-1.jpg">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                            <p>Home</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  href="pages/profile.aspx">
                            <i class="now-ui-icons arrows-1_cloud-download-93"></i>
                            <p>Profile</p>
                        </a>     
                        
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#myModal1">
                            <i class="now-ui-icons files_paper"></i>
                                Detect Emotion
                        </a>
                    </li>
                </ul>
              </div>
        </div>
    </nav>

     <section>
      <!-- left side start-->
		<div class="left-side sticky-left-side">
			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="home.aspx">MOODS<span></span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="home.aspx">M </a>
			</div>
 	 <!-- /w3l-agile -->
			<!--logo and iconic logo end-->
			<div class="left-side-inner">
				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active"><a href="index.html"><i class="lnr lnr-home"></i><span>Home</span></a></li>
						<li><a href="radio.html"><i class="camera"></i> <span>Radio</span></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal1"><i class="fa fa-th"></i><span>Apps</span></a></li>
						<li><a href="radio.html"><i class="lnr lnr-users"></i> <span>Artists</span></a></li> 
						<li><a href="browse.html"><i class="lnr lnr-music-note"></i> <span>Albums</span></a></li>						
						<li class="menu-list"><a href="browse.html"><i class="lnr lnr-indent-increase"></i> <span>Browser</span></a>  
							<ul class="sub-menu-list">
								<li><a href="browse.html">Artists</a> </li>
								<li><a href="404.html">Services</a> </li>
							</ul>
						</li>
						<li><a href="blog.html"><i class="lnr lnr-book"></i><span>Blog</span></a></li>
						<li><a href="typography.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
						<li class="menu-list"><a href="#"><i class="lnr lnr-heart"></i>  <span>My Favourities</span></a> 
							<ul class="sub-menu-list">
								<li><a href="radio.html">All Songs</a></li>
							</ul>
						</li>
						<li class="menu-list"><a href="contact.html"><i class="fa fa-thumb-tack"></i><span>Contact</span></a>
							<ul class="sub-menu-list">
								<li><a href="contact.html">Location</a> </li>
							</ul>
						</li>     
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
	
		<div class="main-content">
			<div class="header-section">
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
				<div class="menu-right">
					<div class="profile_details">		
						<div class="clearfix"> </div>
    				</div>
				</div>
				<div class="clearfix"></div>
				</div>
			<div id="page-wrapper">
				<div class="inner-content">
				      <div class="music-left">
						<div id="PlayList" runat="server" class="albums">
							<!--<div id="small-dialog" class="mfp-hide">
								<iframe src="https://player.vimeo.com/video/12985622"></iframe>								
							</div>-->
                            <asp:Table runat="server" ID="videos"></asp:Table>
						<div class="clearfix"> </div>
					</div>
					<div class="albums second">
					    <div class="tittle-head">
						    <h3 class="tittle">Discover <span class="new">View</span></h3>
						    <a href="index.html"><h4 class="tittle two">See all</h4></a>
						    <div class="clearfix"> </div>
					    </div>
						<div class="col-md-3 content-grid">
							<a href="single.html"><img src="../assets/images/v11.jpg" title="allbum-name"></a>
							<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid">
							<a href="single.html"><img src="../assets/images/v22.jpg" title="allbum-name"></a>
							<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid">
							<a href="single.html"><img src="../assets/images/v33.jpg" title="allbum-name"></a>
							<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid last-grid">
							<a href="single.html"><img src="../assets/images/v44.jpg" title="allbum-name"></a>
							<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid">
								<a href="single.html"><img src="../assets/images/v55.jpg" title="allbum-name"></a>
								<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid">
							<a href="single.html"><img src="../assets/images/v66.jpg" title="allbum-name"></a>
							<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid">
								<a href="single.html"><img src="../assets/images/v11.jpg" title="allbum-name"></a>
								<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="col-md-3 content-grid last-grid">
								<a href="single.html"><img src="../assets/images/v22.jpg" title="allbum-name"></a>
								<div class="inner-info"><a href="single.html"><h5>Pop</h5></a></div>
						</div>
						<div class="clearfix"> </div>
				</div>
			</div>
                     	 <!-- /w3l-agile -->
	         <div class="music-right">
				<div class="tittle-head">
					<h3 class="tittle">Our Blogs </h3>
					<div class="clearfix"> </div>
				</div>
		        <asp:Table runat="server" ID="Blogs"></asp:Table>
            </div>
			<div class="clearfix"></div>
	        </div>
	   </div>
	</div>
		

                    							
			<div class="review-slider">
					<div class="tittle-head">
						<div class="clearfix"> </div>
					</div>
						<ul id="flexiselDemo1">
					<li>
						<a href="single.html"><img src="../assets/images/v1.jpg" alt=""/></a>
						<div class="slide-title"><h4>Adele21</h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v2.jpg" alt=""/></a>
						<div class="slide-title"><h4>Adele21</h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v3.jpg" alt=""/></a>
						<div class="slide-title"><h4>Shomlock</h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v4.jpg" alt=""/></a>
						<div class="slide-title"><h4>Stuck on a feeling</h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v5.jpg" alt=""/></a>
						<div class="slide-title"><h4>Ricky Martine </h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v6.jpg" alt=""/></a>
						<div class="slide-title"><h4>Ellie Goluding </h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
					<li>
						<a href="single.html"><img src="../assets/images/v6.jpeg" alt=""/></a>
						<div class="slide-title"><h4>Fifty Shades </h4></div>
						<div class="date-city">
							<h5>Jan-02-16</h5>
							<div class="buy-tickets">
								<a href="single.html">READ MORE</a>
							</div>
						</div>
					</li>
				</ul>
			<script type="text/javascript">
		$(window).load(function() {
							
			$("#flexiselDemo1").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: { 
					portrait: { 
						changePoint:480,
						visibleItems: 2
					}, 
					landscape: { 
						changePoint:640,
						visibleItems: 3
					},
					tablet: { 
						changePoint:800,
						visibleItems: 4
					}
				}
			});
			});
		</script>
		<script type="text/javascript" src="../assets/js/jquery.flexisel.js"></script>	
		</div>
	
			<div class="clearfix"></div>
			  <!--body wrapper end-->
			     <div class="footer">
				<div class="footer-grid">
					<h3>Navigation</h3>
					<ul class="list1">
					  <li><a href="index.html">Home</a></li>
					  <li><a href="radio.html">All Songs</a></li>
					  <li><a href="browse.html">Albums</a></li>
					  <li><a href="radio.html">New Collections</a></li>
					  <li><a href="blog.html">Blog</a></li>
					  <li><a href="contact.html">Contact</a></li>
				    </ul>
				</div>
				<div class="footer-grid">
					<h3>Our Account</h3>
				    <ul class="list1">
					  <li><a href="#" data-toggle="modal" data-target="#myModal5">Your Account</a></li>
					  <li><a href="#">Personal information</a></li>
					  <li><a href="#">Addresses</a></li>
					  <li><a href="#">Discount</a></li>
					  <li><a href="#">Orders history</a></li>
					  <li><a href="#">Addresses</a></li>
					  <li><a href="#">Search Terms</a></li>
				    </ul>
				</div>
				<div class="footer-grid">
					<h3>Our Support</h3>
					<ul class="list1">
					  <li><a href="contact.html">Site Map</a></li>
					  <li><a href="#">Search Terms</a></li>
					  <li><a href="#">Advanced Search</a></li>
					  <li><a href="#">Mobile</a></li>
					  <li><a href="contact.html">Contact Us</a></li>
					  <li><a href="#">Mobile</a></li>
					  <li><a href="#">Addresses</a></li>
				    </ul>
				  </div>
					  <div class="footer-grid">
						<h3>Newsletter</h3>
						<p class="footer_desc">Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p>
						<div class="search_footer">
						 <form runat="server">
						   <input type="text" placeholder="Email...." required="">
						  <input type="submit" value="Submit">
                           <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>

						  </form>
						</div>
					 </div>
					 <div class="footer-grid footer-grid_last">
						<h3>About Us</h3>
						<p class="footer_desc">Diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat enim ad minim veniam,.</p>
						<p class="f_text">Phone:  &nbsp;&nbsp;&nbsp;00-250-2131</p>
						<p class="email">Email : &nbsp;<span><a href="mailto:mail@example.com">info(at)mailing.com</a></span></p>	
					 </div>
					 <div class="clearfix"> </div>
				</div>
	</section>
  
<script src="../assets/js/jquery.nicescroll.js"></script>
<script src="../assets/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../assets/js/bootstrap.js"></script>
</body>

    <script>
        function val(myRadio) {
            //alert('Old value: ' + currentValue);
            //alert('New value: ' + myRadio.id);
            PageMethods.StoreRating(myRadio.id, onSucess, onError);
            function onSucess(result) {
                //alert(result);
            }
            function onError(result) {
                alert('Something wrong.');
            }
           // currentValue = myRadio.value;
           // $("#lab").innerhtml = currentValue;
           // document.getelementbyID("lab").text = currentValue;
           // $("#lab").show();

        }
    </script>
</html>








