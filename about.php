<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>
<br><br>
<h1 class="title">About us </h1>



<section class="about">

   <div class="row">

   

      <div class="content">
         <h3>why choose us?</h3>
         <p>The idea behind Asian Food was to show everyone the vast selection of Asian products. What we believe sets us apart is the ability to bring our customers items from many different regions across Asia.</p>
         <a href="menu.php" class="btn">our menu</a>
      </div>
      <div class="image">
         <img src="images/ABOUT_US_ILLUSTRATION.3.png" alt="">
      </div>
   </div>

</section>

<section class="steps">

   <h1 class="title">simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>choose order</h3>
         <p>Customize Your Asian food</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>fast delivery</h3>
         <p>Swift Flavors to Your Doorstep</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>enjoy food</h3>
         <p>Savor the Delight</p>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">What our customers say</h1>

   <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <img src="images/drlama.jpeg" alt="">
            <p>this website is one of my favorite🤩</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Lama Darwish</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/mariam.jpeg" alt="">
            <p>ktir taybinn l Noodles bnsah lkel yjareb😋</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Mariam Mahmoud</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/malak.jpeg" alt="">
            <p>WAW ma fi 3nde hake y3aber saraha 🔥👌</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Malak Alkazem</h3>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>


<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   grabCursor: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
      slidesPerView: 1,
      },
      700: {
      slidesPerView: 2,
      },
      1024: {
      slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>