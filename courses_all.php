<?php 
require $_SERVER['DOCUMENT_ROOT'].'/top/App/Views/Utils/const.php';
require APP_URL;
?>
<!DOCTYPE html>
<html lang="en">
  

<head>
    <meta charset="UTF-8">
    
    <!-- Title-->
    <title>All courses | topupgrade ltd </title>
    
    <!-- SEO Meta-->
    <meta name="description" content="Education theme by EchoTheme">
    <meta name="keywords" content="HTML5 Education theme, responsive HTML5 theme, bootstrap 4, Clean Theme">
    <meta name="author" content="education">
    
    <!-- viewport scale-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <?php include VIEWS.'Utils/styles.php'; ?>      
  </head>
  
  <body>
    <?php include VIEWS.'Utils/header.php'; ?> 
    <?php include VIEWS.'Courses/course_counter.php'; ?>
    <?php include VIEWS.'Courses/filter.php'; ?>
    <?php include VIEWS.'Courses/courses_list.php'; ?>

<footer class="site-footer">
  <div class="footer-top bg-dark text-white-0_6 pt-5 paddingBottom-100">
    <div class="container"> 
      <div class="row">

        <div class="col-lg-3 col-md-6 mt-5">
         <img src="assets/img/logo-white.png" alt="Logo">
         <div class="margin-y-40">
           <p>
            Availing qualified professionals is our role, the beneficiaries will always appreciate the quality of continuous education we deliver.
          </p>
         </div>
          <ul class="list-inline"> 
            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary" href="#"><i class="ti-facebook"> </i></a></li>
            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary" href="#"><i class="ti-twitter"> </i></a></li>
            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary" href="#"><i class="ti-linkedin"> </i></a></li>
            <li class="list-inline-item"><a class="iconbox bg-white-0_2 hover:primary" href="#"><i class="ti-pinterest"></i></a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 mt-5">
          <h4 class="h5 text-white">Contact Us</h4>
          <div class="width-3rem bg-primary height-3 mt-3"></div>
          <ul class="list-unstyled marginTop-40">
            <li class="mb-3"><i class="ti-headphone mr-3"></i><a href="tel:+8801740411513">(+250) 789044439</a></li>
            <li class="mb-3"><i class="ti-email mr-3"></i><a href="mailto:support@educati.com">topupgradeltd@gmail.com</a></li>
            <li class="mb-3">
             <div class="media">
              <i class="ti-location-pin mt-2 mr-3"></i>
              <div class="media-body">
                <span>TELECOM HOUSE,
                        6th Floor, K-Lab - 250 Startup</span>
              </div>
             </div>
            </li>
          </ul>
        </div>

        <div class="col-lg-2 col-md-6 mt-5">
          <h4 class="h5 text-white">Quick links</h4>
          <div class="width-3rem bg-primary height-3 mt-3"></div>
          <ul class="list-unstyled marginTop-40">
            <li class="mb-2"><a href="about.html">About Us</a></li>
            <li class="mb-2"><a href="contact.html">Contact Us</a></li>
            <li class="mb-2"><a href="faq.html">Faq</a></li>
            <li class="mb-2"><a href="privacy-policy.html">privacy policy</a></li>
            <li class="mb-2"><a href="all-courses.html">All Courses</a></li>
            
          </ul>
        </div>

        <div class="col-lg-4 col-md-6 mt-5">
          <h4 class="h5 text-white">Newslatter</h4>
          <div class="width-3rem bg-primary height-3 mt-3"></div>
          <div class="marginTop-40">
            <p class="mb-4">Subscribe to get update and information. Don't worry, we won't send spam!</p>
            <form class="marginTop-30" action="#" method="POST">
              <div class="input-group">
                <input type="text" placeholder="Enter your email" class="form-control py-3 border-white" required="">
                <div class="input-group-append">
                  <button class="btn btn-primary" type="submit">Subscribe</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        
      </div> <!-- END row-->
    </div> <!-- END container-->
  </div> <!-- END footer-top-->

  <div class="footer-bottom bg-black-0_9 py-5 text-center">
    <div class="container">
      <p class="text-white-0_5 mb-0">&copy; 2019 topupgrade ltd. All rights reserved. designed by <a href="https://sagesalvio.000webhostapp.com" target="_blunk">DIA Lab</a></p>
    </div>
  </div>  <!-- END footer-bottom-->
</footer> <!-- END site-footer -->


<div class="scroll-top">
  <i class="ti-angle-up"></i>
</div>
     
   
  <script src="assets/js/vendors.bundle.js"></script>
  <script src="assets/js/scripts.js"></script>
</body>
</html>