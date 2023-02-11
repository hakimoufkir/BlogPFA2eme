
  <main id="main">

<!-- ======= Hero Slider Section ======= -->
<section id="hero-slider" class="hero-slider">
  <div class="container-md" data-aos="fade-in">
  <center><div class="post-meta"><span class="date"></span>Recents<span class="mx-1">&bullet;</span> <span>Blogs</span></div></center>

    <div class="row">
      <div class="col-12">
        <div class="swiper sliderFeaturedPosts">
          <div class="swiper-wrapper">
          <?php

//Recent Blogs for slider
    $connexionDB=connexionDB();
    $sqlQuery = "SELECT * FROM article ORDER BY `id` DESC LIMIT 2; ";
    $recentblog = $connexionDB->prepare($sqlQuery);
    $recentblog->execute();
    $recentblog= $recentblog->fetchAll(); 
    foreach ($recentblog as $article) {

   
?>
            <div class="swiper-slide">
              <a href="index.php?article=<?php echo $article['id']?>"  class="img-bg d-flex align-items-end" style="background-image: url('assets/blog/<?php echo $article["photo1"]?>');">
                <div class="img-bg-inner">
                  <h2><?php echo $article['titre'];?></h2>
                </div>
              </a>
            </div>
<?php
 }
?>
          <div class="custom-swiper-button-next">
            <span class="bi-chevron-right"></span>
          </div>
          <div class="custom-swiper-button-prev">
            <span class="bi-chevron-left"></span>
          </div>

          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
  </div>
</section><!-- End Hero Slider Section -->

<hr>