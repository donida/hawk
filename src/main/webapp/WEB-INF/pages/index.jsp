<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title><spring:message code="frontend.index.head.title"/></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="author" content="">

  <!-- Stylesheets -->
  <!-- Bootstrap -->
  <link href="style/bootstrap.css" rel="stylesheet">
  <!-- Font awesome icon -->
  <link rel="stylesheet" href="style/font-awesome.css">
  <!-- Navigation menu -->
  <link rel="stylesheet" href="style/ddlevelsmenu-base.css">
  <link rel="stylesheet" href="style/ddlevelsmenu-topbar.css">
  <!-- cSlider -->
  <link rel="stylesheet" href="style/slider.css">
  <!-- PrettyPhoto -->
  <link rel="stylesheet" href="style/prettyPhoto.css">
  <!-- Custom style -->
  <link href="style/style.css" rel="stylesheet">
  <!-- Responsive Bootstrap -->
  <link href="style/bootstrap-responsive.css" rel="stylesheet">
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

  <!-- Favicon -->
  <link rel="shortcut icon" href="img/favicon/favicon.png">
</head>

<body>

  <!-- Sliding panel starts-->

  <div class="slidepanel">
    <div class="container">
      <div class="row">
        <div class="span8">
          <div class="spara"> 
            <!-- Contact details -->
            <p>
            	<c:if test="${not empty user}">
	              <i class="icon-envelope-alt lightblue"></i> ${user.username} &nbsp;
<!--     	          <i class="icon-twitter lightblue"></i>  &nbsp; -->
<!--         	      <i class="icon-desktop lightblue"></i>  -->
            	</c:if>
            </p>
          </div>
        </div>
        <div class="span4">
            <div class="social">
              <!-- Social media icons. Repalce # with your profile links -->
<!--                       <a href="#" class="bblue"><i class="icon-facebook"></i></a> -->
<!--                       <a href="#" class="borange"><i class="icon-google-plus"></i></a>  -->
<!--                       <a href="#" class="blightblue"><i class="icon-twitter"></i></a> -->
<!--                       <a href="#" class="bviolet"><i class="icon-linkedin"></i></a> -->
<!--                       <a href="#" class="bred"><i class="icon-pinterest"></i></a> -->
<!--                       <a href="#" class="borange"><i class="icon-rss"></i></a> -->
            </div>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>

  <!-- Sliding panel ends-->

  <!-- Header starts -->

  <header>
    <div class="container">
      <div class="row">

        <div class="span3">

          <!-- Logo starts -->

          <div class="logo">

            <div class="logo-image">
              <!-- Image link -->
              <a href="index.html"><i class="icon-desktop blue"></i></a>
            </div>
            
            <div class="logo-text">
              <h1><a href="index.html"><spring:message code="frontend.index.body.appname"/></a></h1>
              <div class="logo-meta">Cool Metro Theme</div>
            </div>

            <div class="clearfix"></div>

          </div>

          <!-- Logo ends -->

        </div>

        <div class="span9">

          <!-- Navbar starts -->

          <div class="navi pull-right">
            <div id="ddtopmenubar" class="mattblackmenu">
              <!-- Main navigation -->
              <!-- Use the background color class in anchor tag for colorful menu -->
              <ul>

                <li><a href="index.html" class="blightblue"> <i class="icon-home"></i> Home</a></li>

                <!-- Main navigation -->
                <li><a href="#" rel="ddsubmenu2" class="bred"> <i class="icon-desktop"></i> Pages</a>
                    <!-- Sub Navigation -->
                    <ul id="ddsubmenu2" class="ddsubmenustyle">
                       <li><a href="landingpage.html">Landing Page</a></li>
                       <li><a href="comingsoon.html">Coming Soon</a></li>
                       <li><a href="features2.html">Features</a></li>
                       <li><a href="service1.html">Service</a></li>
                       <li><a href="team.html">Our Team</a></li>
                       <li><a href="aboutus.html">About Us</a></li>
                       <li><a href="resume.html">Resume</a></li>
                       <li><a href="tasks.html">Tasks</a></li>
                       <li><a href="#">Sub Navigation</a>
                          <ul>
                            <li><a href="#">Nav Level #3</a></li>
                          </ul>
                       </li>
                    </ul>
                </li>

                <!-- Main navigation -->
                <li><a href="#" rel="ddsubmenu2" class="bviolet"> <i class="icon-tablet"></i> Pages</a>
                    <!-- Sub Navigation -->
                    <ul id="ddsubmenu2" class="ddsubmenustyle">
                       <li><a href="404.html">404</a></li>
                       <li><a href="testimonials.html">Testimonials</a></li>
                       <li><a href="clients.html">Clients</a></li>
                       <li><a href="pricingtable.html">Pricing Table</a></li>
                       <li><a href="projects.html">Projects</a></li>
                       <li><a href="register.html">Register</a></li>
                       <li><a href="login.html">Login</a></li>
                       <li><a href="events.html">Events</a></li>
                    </ul>
                </li>                

                <li><a href="#" rel="ddsubmenu2" class="bgreen"> <i class="icon-comments"></i> Blog</a>
                  <!-- Sub navigation -->
                  <ul id="ddsubmenu2" class="ddsubmenustyle">
                    <li><a href="blog2.html">Blog #1</a></li>
                    <li><a href="blog1.html">Blog #2</a></li>
                    <li><a href="blogsingle.html">Blog Single</a></li>
                  </ul>
                </li>

                <li><a href="portfolio.html" class="borange"> <i class="icon-camera"></i> Portfolio</a></li>

                <li><a href="contactus.html" class="bblue"> <i class="icon-envelope-alt"></i> Contact</a></li>


              </ul>
            </div>
          </div>

          <div class="navis"></div>

          <!-- Navbar ends -->

          <div class="clearfix"></div>

        </div>

      </div>
    </div>
  </header>

  <div class="clearfix"></div>

  <!-- Header ends -->

<!-- Slider starts -->
  <div class="parallax-slider">
          <!-- Slider (Parallax Slider) -->            
            <div id="da-slider" class="da-slider">
              <!-- Each slide should be enclosed inside "da-slide" class -->
              <!-- Slide starts -->
              <div class="da-slide">

                  <p class="bviolet">
                    <!-- Heading -->
                    <span class="das-head">Amazing Theme Ever</span><br />
                    <!-- Para -->
                    When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove,  the subline of her own road, the Line Lane.
                    <br />
                    <!-- Link -->
                    <a class="das-link btn">Read More <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/1.png" alt="image01" /></div>

              </div>
              <!-- Slide ends -->

              <div class="da-slide">

                  <p class="bblue">
                    <!-- Heading -->
                    <span class="das-head">Based On Metro Interface</span><br />
                    <!-- Para -->
                    When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove,  the subline of her own road, the Line Lane.
                    <br />
                    <a class="das-link btn">Read More <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/2.png" alt="image01" /></div>

              </div>
              <div class="da-slide">

                  <p class="bgreen">
                    <!-- Heading -->
                    <span class="das-head">Tons Of Features</span><br />
                    <!-- Para -->
                    When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove,  the subline of her own road, the Line Lane.
                    <br />
                    <a class="das-link btn">Read More <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/3.png" alt="image01" /></div>

              </div>
              <div class="da-slide">

                  <p class="bred">
                    <!-- Heading -->
                    <span class="das-head">All In One Theme</span><br />
                    <!-- Para -->
                    When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove,  the subline of her own road, the Line Lane.
                    <br />
                    <a class="das-link btn">Read More <i class="icon-double-angle-right"></i></a>
                  </p>
                  <!-- Image -->
                  <div class="da-img"><img src="img/parallax/4.png" alt="image01" /></div>

              </div>

              <nav class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>
              </nav>
            </div>
  </div>
<!-- Slider ends -->

<!-- Hero starts -->

  <div class="hero">
    <div class="container">
      <div class="row">
        <div class="span12">

          <div class="hero-left">
            <i class="icon-desktop"></i>
          </div>

          <div class="hero-right">
            <div class="hero-title">Howdy Dude! <b class="lightblue">Welcome</b> to the most amazing <b class="lightblue">Metro</b> Theme ever made in the history of Internet.</div>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum condimentum magna, vel cursus turpis fermentum vel. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum condimentum magna, vel cursus turpis fermentum vel.</p>
          </div>

          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>


<!-- Hero Ends -->

<!-- Big box starts -->

  <div class="big-box">
    <div class="container">
      <div class="row">
        <div class="span12">

          <!-- Left box -->
          <div class="big-box-left blightblue">
            <!-- Box content -->
            <div class="box-content">
              <!-- title -->
              <div class="box-title">Welcome to the <br />world of MetroMan</div>
              <!-- Para -->
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut dictum condimentum magna, vel cursus turpis fermentum vel. </p>
              <!-- Button -->
              <a href="#" class="btn btn-inverse">Check It Out</a>
              <br /><br />
              <!-- Links -->
              <div class="box-links">
                <a href="#">Checkout other projects of ours <i class="icon-double-angle-right"></i></a>
                <a href="#">Download Now <i class="icon-double-angle-right"></i></a>
              </div>
            </div>
          </div>

          <!-- Center box -->
          <div class="big-box-mid blightblue">
            <!-- Image -->
            <a href="#"><img src="img/photos/girl1.jpg" alt="" /></a>
          </div>

          <!-- Right box -->
          <div class="big-box-right bblack">
             <div class="box-content">
                <div class="box-title">Be<span class="lightblue">Stylish</span></div>

                <h4>Name</h4>
                Jennifer
                <h4>Date Of Birth</h4>
                02/07/1990
                <h4>Address</h4>
                19,Kumar Street,<br />
                Nagarkovil, <br />
                India
             </div>
          </div>

          <div class="clearfix"></div>

        </div>
      </div>
    </div>  
  </div>
  <div class="clearfix"></div>

<!-- Big box ends -->


<!-- CTA Starts -->

<div class="cta">
  <div class="container bviolet">
    <div class="row">
      <div class="span5">
        <div class="ctas">
          <!-- Title and Para -->
          <h5><i class="icon-arrow-right icon-metroid"></i> Professional Product Ever Made </h5>
          <p>Sed diam nisi, pulvinar vitae molestie vitae molestie hendreri hendrerit, venenatis eget mauris.</p>
        </div>
      </div>
      <div class="span4">
        <div class="ctas">
          <!-- List -->
          <ul>
            <li>Very Cheap in Market. Check it today.</li>
            <li>Professional and Powerful. Don't miss it.</li>
            <li>1000% Guanrantee. No Worries. No Probs.</li>
          </ul>
        </div>
      </div>
      <div class="span3">
        <div class="ctas">
          <!-- Button -->
          <a href="#" class="btn btn-inverse btn-large">Buy it Today for $99 <i class="icon-double-angle-right"></i></a>
          <p>limited period offer</p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- CTA Ends -->


<!-- Service and Social media starts -->

<div class="service-home">
  <div class="container">
    <!-- Title -->
    <h3 class="title"><i class="icon-arrow-right title-icon"></i> Service</h3>
    <div class="row">

      <!-- Social -->
      <div class="span3">

        <div class="service-social bblack">
          <!-- Big number -->
          <div class="service-big">1,40,<span class="lightblue">000</span></div>
          <!-- Labels -->
          <div class="label label-important">Customers</div> 
          <div class="label label-info">Business</div> 
          <div class="label label-success">Clients</div>

          <hr />

          <!-- Social media -->
          <div class="service-box bblue">
            <!-- name and followers -->
            <a href="#">Facebook <span class="pull-right">25000</span></a>
          </div>
          <div class="service-box borange">
            <!-- name and followers -->
            <a href="#">Google Plus <span class="pull-right">500</span></a>
          </div>
          <div class="service-box blightblue">
            <!-- name and followers -->
            <a href="#">Twitter <span class="pull-right">25000</span></a>
          </div>
          <div class="service-box bred">
            <!-- name and followers -->
            <a href="#">PInterest <span class="pull-right">15000</span></a>
          </div>
          <div class="service-box borange">
            <!-- name and followers -->
            <a href="#">RSS <span class="pull-right">25000</span></a>
          </div>    

          <div class="clearfix"></div>

        </div>

      </div>

      <!-- Service -->

      <div class="span6 service-list">

          <!--  Service #1 -->
          <!-- Service icon -->
          <div class="service-icon">
            <i class="icon-camera bred"></i>
          </div>

          <div class="service-content">
            <!-- Title -->
            <div class="service-home-meta">something</div>
            <h4>We Design Websites</h4>
            <p>Aenean sodales augue ac rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
          </div>

          <hr />

          <!-- Service #2 -->

          <div class="service-icon">
            <i class="icon-desktop blightblue"></i>
          </div>

          <div class="service-content">
            <div class="service-home-meta">something</div>
            <h4>Our Designs are Responsive</h4>
            <p>Aenean sodales augue ac rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
          </div>

          <hr />   

          <!-- Service #3 -->

          <div class="service-icon">
            <i class="icon-cloud borange"></i>
          </div>

          <div class="service-content">
            <div class="service-home-meta">something</div>
            <h4>Everything in Cloud</h4>
            <p>Aenean sodales augue ac rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
          </div>
          
          <hr />

          <!-- Service #4 -->

          <div class="service-icon">
            <i class="icon-user bviolet"></i>
          </div>

          <div class="service-content">
            <div class="service-home-meta">something</div>
            <h4>Top Notch Support</h4>
            <p>Aenean sodales augue ac rhoncus erat hendrerit. Vivamus vel ultricies elit.</p>
          </div>
          
          <br />


          <div class="clearfix"></div>

      </div>

      <!-- Image -->
      <div class="span3">
        <a href="#" class="service-image"><img src="img/photos/girl2.png" alt="" /></a>
      </div>

    </div>

    <hr />
    
  </div>
</div>

<!-- Service and Social media ends -->

<!-- Features starts -->

<div class="features-one">
  <div class="container">

    <div class="row">

      <div class="span6">
        <a href="#"><img src="img/photos/shots.jpg" alt="" /></a>
      </div>

      <div class="span6">

        <h2>Best <span class="lightblue">Theme</span> Ever Made On The History Of The Internet.</h2>
        <!-- Meta -->
        <div class="features-meta">
          <i class="icon-desktop lightblue"></i> Responsive - 
          <i class="icon-gift lightblue"></i> Professional - 
          <i class="icon-sitemap lightblue"></i> Feature Full
        </div>
        <p>Vivamus diam diam, fermentum  eros. Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem ipsum dolor sit amet, fermentum sed dapibus eget, egestas sed eros consectetur adipiscing elit.  </p>
        <a href="#" class="btn btn-danger btn-large">Download Now <i class="icon-double-angle-right"></i></a>
      </div>

    </div>
  </div>
</div>

<!-- Features ends -->

<!-- Pricing Table starts -->

        <div class="pricing-table">
          <div class="container">
            <!-- Title -->
            <h3 class="title"><i class="icon-arrow-right title-icon"></i> Pricing Table</h3>

                  <!-- Pricing table -->                     
                     <!-- Price details. Note down the class name before you edit. -->
                     <div class="row">
                     
                        <div class="span6">
                        
                           <!-- Add the class "phighlight" to highlight specific table -->
                           
                           <!-- Pricing table #1. Class name "price-a" -->
                           <div class="price-a pricel center">
                                 <div class="phead-top blightblue">
                                    <!-- Title -->
                                    <h4>Starter</h4>
                                 </div>
                                 <div class="phead-bottom">
                                    <!-- Price. Use the syntax correctly. -->
                                    <p><span class="pst">$</span> 4.99 <span class="psb">/m</span></p>
                                 </div>
                                 <div class="arrow-down"></div>
                              <div class="plist">
                                 <!-- List -->
                                 <ul>
                                    <li>1 GB Disk Space</li>
                                    <li>10 GB Data Transfer</li>
                                    <li>10 Email Ids</li>
                                 </ul>
                              </div>
                              <div class="pbutton">  
                                 <!-- button -->
                                 <a href="#" class="btn btn-danger btn-large">Buy Now</a>
                              </div>
                           </div>
                           
                           <!-- Pricing table #2. Class name "price-b" -->
                           <div class="price-b pricel center">
                                 <div class="phead-top blightblue">
                                    <h4>Basic</h4>
                                 </div>
                                 <div class="phead-bottom">
                                    <p><span class="pst">$</span> 8.99 <span class="psb">/m</span></p>
                                 </div>
                                 <div class="arrow-down"></div>
                              <div class="plist">
                                 <ul>
                                    <li>1 GB Disk Space</li>
                                    <li>10 GB Data Transfer</li>
                                    <li>10 Email Ids</li>
                                 </ul>
                              </div>
                              <div class="pbutton">  
                                 <!-- button -->
                                 <a href="#" class="btn btn-danger btn-large">Buy Now</a>
                              </div>
                           </div>   
                                 
                           <div class="clearfix"></div>
                        </div>  
                        
                        <div class="span6">
                        
                           <!-- Pricing table #3. Class name "price-a" -->
                           <div class="price-a pricel center">
                                 <div class="phead-top bviolet">
                                    <h4>Business</h4>
                                 </div>
                                 <div class="phead-bottom">
                                    <p><span class="pst">$</span> 12.99 <span class="psb">/m</span></p>
                                 </div>
                                 <div class="arrow-down"></div>
                              <div class="plist">
                                 <ul>
                                    <li>1 GB Disk Space</li>
                                    <li>10 GB Data Transfer</li>
                                    <li>10 Email Ids</li>
                                 </ul>
                              </div>
                              <div class="pbutton">  
                                 <!-- button -->
                                 <a href="#" class="btn btn-danger btn-large">Buy Now</a>
                              </div>
                           </div>
                           
                           <!-- Pricing table #4. Class name "price-b" -->
                           <div class="price-b pricel center">
                                 <div class="phead-top blightblue">
                                    <h4>Enterprise</h4>
                                 </div>
                                 <div class="phead-bottom">
                                    <p><span class="pst">$</span> 39.99 <span class="psb">/m</span></p>
                                 </div>
                                 <div class="arrow-down"></div>
                              <div class="plist">
                                 <ul>
                                    <li>1 GB Disk Space</li>
                                    <li>10 GB Data Transfer</li>
                                    <li>10 Email Ids</li>
                                 </ul>
                              </div>
                              <div class="pbutton">  
                                 <!-- button -->
                                 <a href="#" class="btn btn-danger btn-large">Buy Now</a>
                              </div>
                           </div>   
                                 
                           <div class="clearfix"></div>                        
                                                   
                        </div>
                     </div> 
                  </div>
                </div>

<!-- Pricing Table ends -->
            
<!-- Clients starts -->
  
  <div class="clients">
    <div class="container">
            <div class="row">
               <div class="span12">
                     <h3 class="title">Our Clients</h3>
                     <p><i class="icon-quote-left lightblue"></i>Vivamus diam diam, fermentum sed dapibus eget, egestas sed eros. Lorem fermentum ipsum dolor sit amet, ipsum dolor sit amet, consectetur fermentum adipiscing elit.<i class="icon-quote-right lightblue"></i></p>
                     <img src="img/clients/amazon.png" alt="" />
                     <img src="img/clients/google.png" alt="" />
                     <img src="img/clients/twitter.png" alt="" />
                     <img src="img/clients/facebook.png" alt="" />
                     <img src="img/clients/skype.png" alt="" />
                     <img src="img/clients/youtube.png" alt="" />
               </div>
            </div>
    </div>
  </div>
            
<!-- Clients ends -->

<!-- Footer -->

<!-- Below area is for testimonial -->
<div class="foot blightblue">
  <div class="container">
    <div class="row">
      <div class="span12">
          
          <!-- User icon -->
          <span class="twitter-icon text-center"><i class="icon-user"></i></span>
          <p><em>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras elementum dolor eget nisi <br />fermentum quis hendrerit magna vestibulum."</em></p>
          
        
      </div>
    </div>
  </div>
</div>  

<footer>
  <div class="container">
    <div class="row">


      <div class="widgets">

        <div class="span3">
          <div class="fwidget">
            
            <h4>Contact</h4>

                  <p>Nullam justo nunc, dignissim at convallis posuere, sodales eu orci. </p>
                  <hr />
                  <i class="icon-home"></i> &nbsp; 123, Some Area. Los Angeles, CA, 54321.
                  <hr />
                  <i class="icon-phone"></i> &nbsp; +239-3823-3434
                  <hr />
                  <i class="icon-envelope-alt"></i> &nbsp; <a href="mailto:#">someone@company.com</a>
                  <hr />
                    <div class="social">
                      <a href="#" class="bblue"><i class="icon-facebook"></i></a>
                      <a href="#" class="borange"><i class="icon-google-plus"></i></a> 
                      <a href="#" class="blightblue"><i class="icon-twitter"></i></a>
                      <a href="#" class="bviolet"><i class="icon-linkedin"></i></a>
                      <a href="#" class="bred"><i class="icon-pinterest"></i></a>
                      <a href="#" class="borange"><i class="icon-rss"></i></a>
                    </div>

          </div>
        </div>

        <div class="span3">
          <div class="fwidget">
            <h4>Categories</h4>
            <ul>
              <li><a href="#">Condimentum - Condimentum gravida</a></li>
              <li><a href="#">Etiam at - Condimentum gravida</a></li>
              <li><a href="#">Fusce vel - Condimentum gravida</a></li>
              <li><a href="#">Vivamus - Condimentum gravida</a></li>
              <li><a href="#">Pellentesque - Condimentum gravida</a></li>
              <li><a href="#">Fusce vel - Condimentum gravida</a></li>
            </ul>
          </div>
        </div>        

        <div class="span3">
          <div class="fwidget">
            
            <h4>Subscribe</h4>
            <p>Duis leo risus, condimentum ut posuere ac, vehicula luctus nunc.  Quisque rhoncus, a sodales enim arcu quis turpis.</p>
            <p>Enter you email to Subscribe</p>
            
            <form class="form-inline">
              <div class="input-append row-fluid">
                <input type="text" class="span8" placeholder="Subscribe">
                <button type="submit" class="btn btn-danger">Subscribe</button>
              </div>
            </form>

          </div>
        </div>

        <div class="span3">
          <div class="fwidget">
            <h4>Recent Posts</h4>
            <ul>
              <li><a href="#">Sed eu leo orci, condimentum gravida metus</a></li>
              <li><a href="#">Etiam at nulla ipsum, in rhoncus purus</a></li>
              <li><a href="#">Fusce vel magna faucibus felis dapibus facilisis</a></li>
              <li><a href="#">Vivamus scelerisque dui in massa</a></li>
              <li><a href="#">Pellentesque eget adipiscing dui semper</a></li>
            </ul>
          </div>
        </div>

      </div>

      <div class="span12">
          <div class="copy">
                <p>Copyright &copy; <a href="#">Your Site</a> - <a href="index.html">Home</a> | <a href="aboutus.html">About Us</a> | <a href="faq.html">FAQ</a> | <a href="contactus.html">Contact Us</a></p>
          </div>
      </div>

    </div>
  <div class="clearfix"></div>
  </div>
</footer> 

<!-- JS -->
<script src="js/jquery.js"></script> <!-- jQuery -->
<script src="js/bootstrap.js"></script> <!-- Bootstrap -->
<script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->
<script src="js/jquery.isotope.js"></script> <!-- isotope -->
<script src="js/ddlevelsmenu.js"></script> <!-- Navigation menu -->
<script src="js/jquery.cslider.js"></script> <!-- jQuery cSlider -->
<script src="js/modernizr.custom.28468.js"></script> <!-- Extra script for cslider -->

<script src="js/filter.js"></script> <!-- Support -->
<script src="js/custom.js"></script> <!-- Custom JS -->
</body>
</html>