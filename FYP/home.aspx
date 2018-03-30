<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FYP.home" %>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
    #results { float:right; margin:20px; padding:20px; border:1px solid; background:#ccc; }

    .speech {border: 1px solid #DDD; width: 300px; padding: 0; margin: 0}
    .speech input {border: 0; width: 240px; display: inline-block; height: 30px;}
    .speech img {float: right; width: 40px }

* {
    font-family: Verdana, Arial, sans-serif;
  }
  a:link {
    color:#000;
    text-decoration: none;
  }
  a:visited {
    color:#000;
  }
  a:hover {
    color:#33F;
  }
  .button {
    background: -webkit-linear-gradient(top,#008dfd 0,#0370ea 100%);
    border: 1px solid #076bd2;
    border-radius: 3px;
    color: #fff;
    display: none;
    font-size: 13px;
    font-weight: bold;
    line-height: 1.3;
    padding: 8px 25px;
    text-align: center;
    text-shadow: 1px 1px 1px #076bd2;
    letter-spacing: normal;
  }
  .center {
    padding: 15px;
    text-align: center;
  }
  .final {
    color: black;
    padding-right: 3px; 
  }
  .interim {
    color: gray;
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
    padding: 5px;
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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/images/apple-icon.png">
    <link rel="icon" type="image/png" href="./assets/images/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>MOODS | Emotion Based Recommendations</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/shoelace-css/1.0.0-beta16/shoelace.css">
    <link rel="stylesheet" href="./assets/css/styles.css">
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="./assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <link href="./assets/css/demo.css" rel="stylesheet" />
</head>

<body class="index-page sidebar-collapse">
      <video poster="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/polina.jpg" id="bgvid" playsinline autoplay muted loop>
            <source src="assets/vid.mp4" type="video/mp4">
        </video>
      
    <!-- Navbar -->
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
            <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="../assets/images/blurred-image-1.jpg">
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
    <div class="wrapper">
        <div class="page-header clear-filter" filter-color="black">
            
            <div class="container">
                <div class="content-center brand">
                    <img class="n-logo" src="./assets/images/now-logo.png" alt="">
                    <h1 class="h1-seo">MOODS.</h1>
                    <h3>Emotion Based Recommendations</h3>
                    <asp:Label runat="server" ID="emotionss" />
                </div>
                <!--<h6 class="category category-absolute">Designed by
                    <a href="http://invisionapp.com/" target="_blank">
                        <img src="./assets/images/invision-white-slim.png" class="invision-logo" />
                    </a>. Coded by
                    <a href="https://www.creative-tim.com" target="_blank">
                        <img src="./assets/images/creative-tim-white-slim2.png" class="creative-tim-logo" />
                    </a>.</h6>-->            </div>
        </div>
            <div class="section" id="carousel">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-8">
                            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <div class="carousel-item active">
                                        <img class="d-block" src="assets/images/bg1.jpg" alt="First slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>Nature, United States</h5>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block" src="assets/images/bg3.jpg" alt="Second slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>Somewhere Beyond, United States</h5>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <img class="d-block" src="assets/images/bg4.jpg" alt="Third slide">
                                        <div class="carousel-caption d-none d-md-block">
                                            <h5>Yellowstone National Park, United States</h5>
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                    <i class="now-ui-icons arrows-1_minimal-left"></i>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                    <i class="now-ui-icons arrows-1_minimal-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        
            <div class="section section-download" id="#download-section" data-background-color="black">
                <div class="container">
                    <br>
                    <div class="row justify-content-md-center sharing-area text-center">
                        <div class="text-center col-md-12 col-lg-8">
                            <h3>Feedback!</h3>
                        </div>
                        <div class="text-center col-md-12 col-lg-8">
                            <a target="_blank" href="https://www.twitter.com/creativetim" class="btn btn-neutral btn-icon btn-twitter btn-round btn-lg" rel="tooltip" title="Follow us">
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a target="_blank" href="https://www.facebook.com/creativetim" class="btn btn-neutral btn-icon btn-facebook btn-round btn-lg" rel="tooltip" title="Like us">
                                <i class="fa fa-facebook-square"></i>
                            </a>
                            <a target="_blank" href="https://www.linkedin.com/company-beta/9430489/" class="btn btn-neutral btn-icon btn-linkedin btn-lg btn-round" rel="tooltip" title="Follow us">
                                <i class="fa fa-linkedin"></i>
                            </a>
                            <a target="_blank" href="https://github.com/creativetimofficial/now-ui-kit" class="btn btn-neutral btn-icon btn-github btn-round btn-lg" rel="tooltip" title="Star on Github">
                                <i class="fa fa-github"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Camera Modal -->
        <div class="modal fade modal-mini modal-primary" onload="init();" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" >
                <div id="my_camera"></div>
                    <script type="text/javascript" src="webcam.min.js"></script>
	                <script language="JavaScript">
	                    Webcam.set({
	                        width: 520,
	                        height: 340,
	                        image_format: 'jpeg',
	                        jpeg_quality: 90
	                    });
	                    Webcam.attach('#my_camera');
	                </script>
                <input type=button class="btn btn-neutral btn-round btn-lg"  value="Take Snapshot" onClick="take_snapshot()">
                <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal">Close</button>
            </div>
          <!--  <div id="results" ></div>-->
           <label id="res" ></label>
        </div>
        <!--  End Modal 
    
    
    <!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Voice Controlled Notes App</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/shoelace-css/1.0.0-beta16/shoelace.css">
        <link rel="stylesheet" href="styles.css">

    </head>
    <body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="script.js"></script>

        <!-- Only used for the demos ads. Please ignore and remove. 
        <script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>

    </body>
</html>
-->


     
    
    <div class="modal fade modal-mini modal-primary" onload="init();" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" >
                <div class="modal-content">
                    <div class="modal-body">
                        <div id="audio"></div>
    
<!--            <h3 class="no-browser-support">Sorry, Your Browser Doesn't Support the Web Speech API. Try Opening This Demo In Google Chrome.</h3>
                    <div class="input-single">
                    <textarea id="note-textarea" placeholder="Create a new note by typing or using voice recognition." rows="6"></textarea>
                </div>         

    -->
                        <h3>Tell me:</h3>
                        <p>How are you FEELING today ?</p>
                  <div class="speech">
                    <input type="text" name="q" id="transcript" placeholder="Speak" />
                  
                  </div>
                </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link btn-neutral" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
    </div>
            
    <footer class="footer" data-background-color="black">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="home.aspx">
                                MOODS
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
                    <a href="http://www.invisionapp.com" target="_blank">MOODS</a>. Coded by
                    <a href="https://www.creative-tim.com" target="_blank">FASTIANS</a>.
                </div>
            </div>
        </footer>
   <form id="Form1" runat="server"  method="post" action="#" >
            <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePageMethods="true"/>
        </form>
       
    <script src="speakClient.js"></script>
<script src="https://cdn.tutorialzine.com/misc/enhance/v3.js" async></script>
<script src="./assets/js/script.js"></script>

<script type="text/javaScript" >



    function take_snapshot() {
        var datta;
        Webcam.snap(function (data_uri) {
          //  document.getElementById('results').innerHTML =
          //  '<img src="' + data_uri + '"/>';
            datta = data_uri;
        });
        var apiKey = "3e669134e3e34d0cb1da6bf5a79ee6b7";
        var apiUrl = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0";
        var subscriptionKey = "3e669134e3e34d0cb1da6bf5a79ee6b7";
        var uriBase = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/detect";
        // Request parameters.
        var params = {
            "returnFaceId": "true",
            "returnFaceLandmarks": "false",
            "returnFaceAttributes": "age,gender,headPose,smile,facialHair,glasses,emotion,hair,makeup,occlusion,accessories,blur,exposure,noise",
        };
        var sourceImageUrl = "https://upload.wikimedia.org/wikipedia/commons/c/c3/RH_Louise_Lillian_Gish.jpg";
        $.ajax({
            url: uriBase + "?" + $.param(params),
            beforeSend: function (xhrObj) {
                xhrObj.setRequestHeader("Content-Type", "application/json");
                xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key", subscriptionKey);
            },
            type: "POST",
            data: '{"url": ' + '"' + sourceImageUrl + '"}',
        })
        .done(function (data) {
            var emotion = JSON.stringify(data[0].faceAttributes.emotion, null, 2);
            var obj = JSON.parse(emotion)
            var sad = obj.sadness;
            var anger = obj.anger;
            var contempt = obj.contempt;
            var disgust = obj.disgust;
            var happiness = obj.happiness;
            var neutral = obj.neutral;
            var emo = "neu";
            if (parseInt(sad) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "sad";
            }
            if (parseInt(anger) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "anger";
            }
            if (parseInt(contempt) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "contempt";
            }
            if (parseInt(disgust) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "disgust";
            }
            if (parseInt(happiness) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "happiness";
            }
            if (parseInt(neutral) == parseInt(Math.max(sad, anger, contempt, disgust, happiness, neutral))) {
                emo = "neutral";
            }
            var rec;
            $("#res").text(emo);
            if (emo != null) {
                $("#myModal1").modal('hide');
                $("#myModal2").modal('show');
                //speak("how was your day ?");

                setTimeout(function () {
              
              }, 500000000);
                if (window.hasOwnProperty('webkitSpeechRecognition')) {
                    var recognition = new webkitSpeechRecognition();
                    recognition.continuous = false;
                    recognition.interimResults = false;
                    recognition.lang = "en-US";
                    recognition.start();
                    recognition.onresult = function (e) {
                        document.getElementById('transcript').value
                                                 = e.results[0][0].transcript;

                        recognition.stop();
                        rec = e.results[0][0].transcript;
                        //document.getElementById('labnol').submit();
                        PageMethods.Emotions(emo , rec, onSucess, onError);
                        function onSucess(result) {

                            if (result == "happy") {
                                window.location.href = "/pages/HappyMedia.aspx";
                            }
                            else {
                                window.location.href = "/pages/media.aspx";

                            }

                            //    alert(result);
                        }
                        function onError(result) {
                            alert('Something wrong.');
                        }
                        /*
            */

                    };

                    recognition.onerror = function (e) {
                        recognition.stop();
                    }

                }

                //        startRecog();
                //SaveWords();
                //              startButton(event);
            }
            
        })

        .fail(function (jqXHR, textStatus, errorThrown) {
            // Display error message.
            var errorString = (errorThrown === "") ? "Error. " : errorThrown + " (" + jqXHR.status + "): ";
            errorString += (jqXHR.responseText === "") ? "" : (jQuery.parseJSON(jqXHR.responseText).message) ?
                jQuery.parseJSON(jqXHR.responseText).message : jQuery.parseJSON(jqXHR.responseText).error.message;
            alert(errorString);
        });
    }



</script>

</body>



<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="./assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();        
    });

    function scrollToDownload() {
        if ($('.section-download').length != 0) {
            $("html, body").animate({
                scrollTop: $('.section-download').offset().top
            }, 1000);
        }
    }
</script>
  
</html>
<script>
   
</script>

