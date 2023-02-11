 <!-- ======= Footer ======= -->
 <footer id="footer" class="footer">

<div class="footer-content">
  <div class="container">

    <div class="row g-5">
      <div class="col-lg-4">
        <h3 class="footer-heading">About Bloger</h3>
        <p>Bloger is a new version of bloger by Mr.khaled just a few touches in design and a little in back end</p>
      </div>
      <div class="col-6 col-lg-2">
        <h3 class="footer-heading">Navigation</h3>
        <ul class="footer-links list-unstyled">
          <li><a href="index.php?page=about"><i class="bi bi-chevron-right"></i> Home</a></li>
          <li><a href="index.php?page=contact"><i class="bi bi-chevron-right"></i> Contact</a></li>
          <li><a href="index.php?page=about"><i class="bi bi-chevron-right"></i> About</a></li>
        </ul>
      </div>
      <div class="col-6 col-lg-2">
        <h3 class="footer-heading">Categories</h3>
        <ul class="footer-links list-unstyled">
        <?php 
 foreach ($categories as $categorie) {
 ?>
     <li><a href="index.php?categorie=<?php echo $categorie["id"]?>"><i class="bi bi-chevron-right"></i>  <?php echo $categorie["categorie"]?></a></li>

 </li>
 <?php
   }
?>

        </ul>
      </div>

      <div class="col-lg-4">
        <h3 class="footer-heading">Recent Posts</h3>

        <ul class="footer-links footer-blog-entry list-unstyled">

        <?php

//Recent Blogs for slider
    $connexionDB=connexionDB();
    $sqlQuery = "SELECT * FROM article ORDER BY `id` DESC LIMIT 5; ";
    $recentblog = $connexionDB->prepare($sqlQuery);
    $recentblog->execute();
    $recentblog= $recentblog->fetchAll(); 
    foreach ($recentblog as $article) {

   
?>
          <li>
            <a href="single-post.html" class="d-flex align-items-center">
              <div>
                <div class="post-meta d-block"><span class="date"><?php echo $article["titre"]?></div>
              </div>
            </a>
          </li>

<?php
    }
?>
        </ul>

      </div>
    </div>
  </div>
</div>

<div class="footer-legal">
  <div class="container">

    <div class="row justify-content-between">
      <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
        <div class="copyright">
          © Copyright <strong><span>ABDEL HAKIM OUFKIR</span></strong>. All Rights Reserved
        </div>


      </div>

      

    </div>

  </div>
</div>

</footer>