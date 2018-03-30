<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FYP.index" %>
<!DOCTYPE HTML>
<html>
	<head>
        <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
        <link href="./assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="./assets/css/demo.css" rel="stylesheet" />
        <script type="text/javascript" src="webcam.min.js"></script>
    <style>
        body {
            margin: 0;
            background: #000; 
        }
        video { 
            position: fixed;
            top: 50%;
            left: 50%;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -100;
            transform: translateX(-50%) translateY(-50%);
            background: url('//demosthenes.info/assets/images/polina.jpg') no-repeat;
            background-size: cover;
            transition: 1s opacity;
        }
        .stopfade { 
            opacity: .5;
        }

                
        @media screen and (max-width: 500px) { 
            div{width:70%;} 
        }
        @media screen and (max-device-width: 800px) {
            html { background: url(https://thenewcode.com/assets/images/polina.jpg) #000 no-repeat center center fixed; }
            #bgvid { display: none; }
        }
    </style>

		<title>MOODS | Emotion Based Recommendation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body>
        <video poster="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/polina.jpg" id="bgvid" playsinline autoplay muted loop>
            <source src="assets/vid.mp4" type="video/mp4">
        </video>
        <div id="wrapper">
			<header id="header">
				<div class="logo">
					<span class="icon fa-diamond" ></span>
				</div>
				<div class="content">
					<div class="inner">
						<h1>Moods</h1>
						<p>Emotion Based Recommendation <a href="index.aspx"></a> 
					</div>
				</div>
				<nav>
					<ul>
						<li><a href="#intro">Intro</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
						<li><a href="#login">Login</a></li>
					</ul>
				</nav>
			</header>
				<!-- Main -->
					<div id="main">
						<!-- Intro -->
							<article id="intro">
								<h2 class="major">Introduction</h2>
								<span class="image main"><img src="assets/images/pic001.jpg" alt="" /></span>
								<p>MOODS tends to provide videos and blogs recommendations based on user current emotion and activities on facbook and twitter <a href="#work">awesome work</a>.</p>
								<p>Firstly, user's image is captured and then analysis on his face provide emotions, other way to find emotion is, by asking simple questions from user and analysis is performed on his image and text and show videos and blogs based on his emotions, all recommendations are according to his interests and likes</p>
							</article>

						<!-- About -->
							<article id="about">
								<h2 class="major">About</h2>
								<span class="image main"><img src="assets/images/pic03.jpg" alt="" /></span>
								<p>Lorem ipsum dolor sit amet, consectetur et adipiscing elit. Praesent eleifend dignissim arcu, at eleifend sapien imperdiet ac. Aliquam erat volutpat. Praesent urna nisi, fringila lorem et vehicula lacinia quam. Integer sollicitudin mauris nec lorem luctus ultrices. Aliquam libero et malesuada fames ac ante ipsum primis in faucibus. Cras viverra ligula sit amet ex mollis mattis lorem ipsum dolor sit amet.</p>
							</article>

                        						<!-- Login -->
		<article id="login">
            <div class="row">
                <div class="card card-signup" data-background-color="black">
			        <form class="form" id="Form1" runat="server"  method="post" action="#">
                        <div class="header text-center">
                            <h4 class="title title-up">Login</h4>
                            <div class="social-line">
                                <a href="#pablo" class="btn btn-neutral btn-facebook btn-icon btn-round">
                                    <i class="fa fa-facebook-square"></i>
                                </a>
                                <a href="#pablo" class="btn btn-neutral btn-twitter btn-icon btn-lg btn-round">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#pablo" class="btn btn-neutral btn-google btn-icon btn-round">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons users_circle-08"></i>
                                        </span>
                                        <asp:textbox class="form-control" placeholder="First Name..." type="text" runat="server" name="username" id="username" />
                                     
                                    </div>
                                    <div class="input-group form-group-no-border">
                                        <span class="input-group-addon">
                                            <i class="now-ui-icons text_caps-small"></i>
                                        </span>
            							<asp:textbox runat="server" class="form-control" placeholder="Password..."  type="password" name="pass" id="pass" />
			                        </div>
                                </div>
                                <div class="footer text-center">
                                    <ul class="actions">
									
            							<li><asp:Button runat="server" class="btn btn-neutral btn-round btn-lg" OnClick="Submit" value="Login"  Text="Login" ></asp:Button></li>
										<li><a href="#signupForm">Signup</a></li>
			                        </ul>
                                </div>
                         <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods="true"/>
                            </form>
                
                        </div>
                    </div>
		</article>

                        						<!-- Signup -->
		<article id="signupForm">
            <div class="row">
                <div class="card card-signup" data-background-color="black">
			        <form class="form" id="Form2" method="post" action="#">
                        <div class="header text-center">
                            <h4 class="title title-up">Signup</h4>
                            <div class="social-line">
                                <a href="#pablo" class="btn btn-neutral btn-facebook btn-icon btn-round">
                                    <i class="fa fa-facebook-square"></i>
                                </a>
                                <a href="#pablo" class="btn btn-neutral btn-twitter btn-icon btn-lg btn-round">
                                    <i class="fa fa-twitter"></i>
                                </a>
                                <a href="#pablo" class="btn btn-neutral btn-google btn-icon btn-round">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input class="form-control" placeholder="First Name..." type="text" name="username" id="firstname_S" >
                            </div>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input class="form-control" placeholder="Last Name..." type="text"  name="lastname" id="lastname_S" />
                            </div>
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons users_circle-08"></i>
                                </span>
                                <input class="form-control" placeholder="User Name..." type="text" name="username" id="username_S" />
                            </div>
                                          
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
            					<input  class="form-control" placeholder="Password..."  type="password" name="pass" id="password_S" />
			                </div>

                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
            					<input  class="form-control" placeholder="Email..."  type="text" name="email" id="email_S" />
			                </div>

                            
                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
            					<input  class="form-control" placeholder="Age..."  type="text" name="age" id="age_S" />
			                </div>

                             <div class="input-group form-group-no-border">
                                <span class="input-group-addon">
                                    <i class="now-ui-icons text_caps-small"></i>
                                </span>
                                 <select ID="gender_S">
                                    <option Value="male">Male</option>
                                    <option Value="female">Female</option>
                                    <option Value="notSpe">Notspecified</option>
                                </select>
                            </div>

                        </div>
                        <div class="footer text-center">
                            <ul class="actions">
									
            					<li><button class="btn btn-neutral btn-round btn-lg" id="signup" value="signup"  >Signup</button></li>
								<li><input type="reset" value="Reset" /></li>
			                </ul>
                        </div>
                    </form>
                </div>
            </div>
		</article>


			<article id="contact">
				<h2 class="major">Contact</h2>
				<form method="post" action="#">
					<div class="field half first">
						<label for="name">Name</label>
						<input type="text" name="name" id="name" />
					</div>
					<div class="field half">
						<label for="email">Email</label>
						<input type="text" name="email" id="email" />
					</div>
					<div class="field">
						<label for="message">Message</label>
						<textarea name="message" id="message" rows="4"></textarea>
					</div>
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="special" /></li>
						<li><input type="reset" value="Reset" /></li>
					</ul>
				</form>
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
				</ul>
			</article>
		</div>

		<footer id="footer">
			<p class="copyright">&copy; Design: <a href="https://fiverr.com/hamza_malik1111">Fastians</a>.</p>
		</footer>
    </div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
	</body>
    <script>

        $("#signup").click(function () {
       
            var fs = $("#firstname_S").val().toString();
            var ls = $("#lastname_S").val().toString();
            var us = $("#username_S").val().toString();
            var pass = $("#password_S").val().toString();
            var email = $("#email_S").val().toString();
            var age = $("#age_S").val().toString();
            var gender = $("#gender_S").val().toString();
        
            PageMethods.signup(fs,ls,us,pass,email,age,gender, onSucess, onError);
            function onSucess(result) {
                window.location.href = "/home.aspx";
            }
            function onError(result) {
                alert('Something wrong.');
            }



        });


    </script>

        <script>
            var vid = document.getElementById("bgvid");
            var pauseButton = document.querySelector("#polina button");
            if (window.matchMedia('(prefers-reduced-motion)').matches) {
                vid.removeAttribute("autoplay");
                vid.pause();
                pauseButton.innerHTML = "Paused";
            }

            function vidFade() {
                vid.classList.add("stopfade");
            }

            vid.addEventListener('ended', function () {
                // only functional if "loop" is removed 
                vid.pause();
                // to capture IE10
                vidFade();
            });

            pauseButton.addEventListener("click", function () {
                vid.classList.toggle("stopfade");
                if (vid.paused) {
                    vid.play();
                    pauseButton.innerHTML = "Pause";
                } else {
                    vid.pause();
                    pauseButton.innerHTML = "Paused";
                }
            })
</script>
</html>
