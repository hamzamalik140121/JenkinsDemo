<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="FYP.pages.profile" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <style>
.container1 {
  position: relative;
  width: 200px;
  height: 200px;
  border-left-width:thick;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0);
  transition: background 0.5s ease;
}

.container1:hover .overlay {
  display: block;
  background: rgba(0, 0, 0, .3);
}


.container1:hover .title {
  top: 90px;
}

.button {
  position: absolute;
  width: 110px;
  height:40px;
  padding: 10px 45px;
  color: whitesmoke;
  border: ridge 2px white;
  z-index: 1;
  left:30px;
  top: 120px;
  text-align: center;
  opacity: 0;
  transition: opacity .35s ease;
  background:#557278;
  border-radius:14px;
}
.container1:hover .button {
  opacity: 1;
}

.info {
    font-size: 14px;
    text-align: center;
    color: #777;
    display: none;
  }
  .right {
    float: right;
  }
  .sidebyside {
    display: inline-block;
    width: 45%;
    min-height: 40px;
    text-align: left;
    vertical-align: top;
  }
  #headline {
    font-size: 40px;
    font-weight: 300;
  }
  #info {
    font-size: 20px;
    text-align: center;
    color: #777;
    visibility: hidden;
  }
  #results {
    font-size: 14px;
    font-weight: bold;
    border: 1px solid #ddd;
    padding: 15px;
    text-align: left;
    min-height: 150px;
  }
  #start_button {
    border: 0;
    background-color:transparent;
    padding: 0;
  }

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
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>MOODS | Emotion Based Recommendation</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/css/demo.css" rel="stylesheet" />
</head>

<body class="profile-page sidebar-collapse">
                    <video poster="" id="bgvid" playsinline autoplay muted loop>
            <source src="../assets/vid2.mp4" type="video/mp4">
        </video>
       
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
                        <a class="nav-link btn btn-neutral" href="https://www.creative-tim.com/product/now-ui-kit-pro" target="_blank">
                            <i class="now-ui-icons arrows-1_share-66"></i>
                            <p> Learn More</p>
                        </a>
                    </li>
                </ul>
              </div>
        </div>
    </nav>
    <!-- End Navbar -->
 <!-- End Navbar -->
    <div class="wrapper">

        <div class="page-header page-header-small" filter-color="orange">
            <div class="page-header-image" data-parallax="true" >
         
            </div>
            <div class="container">
                <div class="content-center">
                    <div class="photo-container">
                        <img src="../assets/images/profile1.jpg" alt="">
                    </div>
                    <asp:label runat="server" id="user" ></asp:label>
                    <p class="category"></p>
                    <div class="content">
                        <div class="social-description">
                        </div>
                        <div class="social-description">
                        </div>
                        <div class="social-description">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container">
                <div class="button-container">
                    <a href="#button" class="btn btn-primary btn-round btn-lg">Edit</a>
                    <a href="#button" class="btn btn-default btn-round btn-lg btn-icon" rel="tooltip" title="Follow me on Twitter">
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#button" class="btn btn-default btn-round btn-lg btn-icon" rel="tooltip" title="Follow me on Instagram">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
             <!--   <h3 class="title">About me</h3>
                <h5 class="description">An artist of considerable range, Ryan — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. An artist of considerable range.</h5>
                <div class="row">
                    <div class="col-md-6 ml-auto mr-auto">
                        <h4 class="title text-center">My Portfolio</h4>
                        <div class="nav-align-center">
                            <ul class="nav nav-pills nav-pills-primary" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#profile" role="tablist">
                                        <i class="now-ui-icons design_image"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#home" role="tablist">
                                        <i class="now-ui-icons location_world"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#messages" role="tablist">
                                        <i class="now-ui-icons sport_user-run"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
-->                    <!-- Tab panes -->
        <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
            </form>
            <div class="section">
                <div class="container">
                    <div class="space-50"></div>
                    <div id="images1">  
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/travel.jpg" alt="Raised Image" class="rounded img-raised" />
                                    <p class="title">Travel</p>
                                    <div class="overlay"></div>
                                <button id="travel" value="tech" class="button"  title="Like"> Like</button>
                                        </div>
                            </div>
                        <div class="col-sm-2">
                        </div>

                              <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/enter.jpg" alt="Raised Image" class="rounded img-raised"  />
                                    <p class="title">Entertainment</p>
                                    <div class="overlay"></div>
                                        <button id="entertainment" value="fashion" class="button"  title="Like"> Like</button>
                                 </div>
                            </div>
                            <div class="col-sm-2">
                           </div>
                            <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/cars.jpg" alt="Raised Image" class="rounded img-raised" alt="" />
                                    <p class="title">Cars</p>
                                    <div class="overlay"></div>
                                        <button id="cars" value="sports" class="button"  title="Like"> Like</button>
                                    </div>
                              </div>
                            </div>
                        </div>
                    <div id="images">
                        <h4>You may Like</h4>
                        <div class="row">
                            <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/tech.jpg" alt="Raised Image" class="rounded img-raised" />
                                    <p class="title">Technology</p>
                                    <div class="overlay"></div>
                                <button id="tech" value="tech" class="button"  title="Like"> Like</button>
                                        </div>
                            </div>
                        <div class="col-sm-2">
                        </div>

                              <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/fashion.jpg" alt="Raised Image" class="rounded img-raised"  />
                                    <p class="title">Fashion</p>
                                    <div class="overlay"></div>
                                        <button id="fashion" value="fashion" class="button"  title="Like"> Like</button>
                                 </div>
                            </div>
                            <div class="col-sm-2">
                           </div>
                            <div class="col-sm-2">
                                <div class="container1">
                                    <img src="../assets/images/sports.jpg" alt="Raised Image" class="rounded img-raised" alt="" />
                                    <p class="title">Sports</p>
                                    <div class="overlay"></div>
                                        <button id="sports" value="sports" class="button"  title="Like"> Like</button>
                                    </div>
                              </div>
                            </div>
                       
                    </div>
                    </div>
                </div>
            </div>
   
                                 <div class="tab-content gallery">
                        <div class="tab-pane active" id="home" role="tabpanel">
                            <div class="col-md-10 ml-auto mr-auto">
                                <div class="row collections">
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg1.jpg" alt="" class="img-raised">
                                        <img src="../assets/images/bg3.jpg" alt="" class="img-raised">
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg8.jpg" alt="" class="img-raised">
                                        <img src="../assets/images/bg7.jpg" alt="" class="img-raised">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="profile" role="tabpanel">
                            <div class="col-md-10 ml-auto mr-auto">
                                <div class="row collections">
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg6.jpg" class="img-raised">
                                        <img src="../assets/images/bg11.jpg" alt="" class="img-raised">
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg7.jpg" alt="" class="img-raised">
                                        <img src="../assets/images/bg8.jpg" alt="" class="img-raised">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="messages" role="tabpanel">
                            <div class="col-md-10 ml-auto mr-auto">
                                <div class="row collections">
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg3.jpg" alt="" class="img-raised">
                                        <img src="../assets/images/bg8.jpg" alt="" class="img-raised">
                                    </div>
                                    <div class="col-md-6">
                                        <img src="../assets/images/bg7.jpg" alt="" class="img-raised">
                                        <img src="../assets/images/bg6.jpg" class="img-raised">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
            <footer class="footer footer-default">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="https://www.creative-tim.com">
                                Creative Tim
                            </a>
                        </li>
                        <li>
                            <a href="http://presentation.creative-tim.com">
                                About Us
                            </a>
                        </li>
                        <li>
                            <a href="http://blog.creative-tim.com">
                                Blog
                            </a>
                        </li>
                        <li>
                            <a href="https://github.com/creativetimofficial/now-ui-kit/blob/master/LICENSE.md">
                                MIT License
                            </a>
                        </li>
                    </ul>
                </nav>
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, Designed by
                    <a href="http://www.invisionapp.com" target="_blank">Invision</a>. Coded by
                    <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
                </div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="../assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>


    <script>

        $("button").click(function () {
            var fired_button = $(this).val();
            //alert(fired_button);
            PageMethods.SaveLikes(fired_button, onSucess, onError);
            function onSucess(result) {
                //alert(result);
            }
            function onError(result) {
                alert('Something wrong.');
            }
        });

       
    </script>



</html>












