<section id="posts" class="posts">
      <div class="container" data-aos="fade-up">
        <div class="row g-5">
          <div class="col-lg-12">
<?php 
if(isset($_GET['categorie']))
    {
      $idcat=$_GET['categorie'];

      $sqlQuery = "SELECT `article`.*,`user`.`nom`,`user`.`prenom` FROM `article`,`user`  WHERE `article`.`id_user`= `user`.`id` AND `genre`=$idcat ORDER BY `date` DESC";
      $lien="index.php?categorie=$idcat&";
    }
    else
    {
     $sqlQuery = "SELECT `article`.*,`user`.`nom`,`user`.`prenom` FROM `article`,`user`  WHERE `article`.`id_user`= `user`.`id` ORDER BY `date` DESC";
      $lien="index.php?";
    }
   

?>

<section class="text-center dark-grey-text">

    <h2 class="font-weight-bold text-center dark-grey-text pb-2">
      <?php
      if(isset($_GET['categorie']))
    {
      $sqlQueryCat = "SELECT `categorie` FROM `categories` WHERE `id`=$idcat";
            $categorie = $connexionDB->prepare($sqlQueryCat);
            $categorie->execute();
            $categorie= $categorie->fetchAll();

            echo "Les Articles : ".$categorie[0][0];
    }
    else
    {
      echo "Tout les Articles";
    }
     
?>
  </h2>
    <hr class="w-header my-4">
    <!-- Section description -->
   
    <!-- Grid row -->
    <div class="row">
    	<?php
            
            $articles = $connexionDB->prepare($sqlQuery);
            $articles->execute();
            $lesarticles= $articles->fetchAll();
           
            $nbrArticles=count($lesarticles);
            $articlePage=6;
            $nbrPages=ceil($nbrArticles/$articlePage);

              if(isset($_GET['nbrpage']))
              {
                $nbrpage=$_GET['nbrpage'];
              }
              else
              {
                $nbrpage=1;
              }

              $debut=$articlePage*($nbrpage-1);
            $sqlQuery.=" limit $debut,$articlePage";
              // echo $sqlQuery;
            $articles = $connexionDB->prepare($sqlQuery);
            $articles->execute();
            $lesarticles= $articles->fetchAll();

          
    foreach ($lesarticles as $article) {
		?>
      <!-- Grid column -->
      <div class="col-md-4 mb-4">

        <div class="view z-depth-1 mb-4">
          <img src='assets/blog/<?php echo $article["photo1"]?>' class="img-fluid mx-auto w-100" alt="smaple image">
        </div>
        <h6 class="font-weight-bold"><?php echo $article["titre"]?></h6>
        <small class="text-muted text-uppercase"><?php echo $article["nom"].' '.$article["prenom"]?></small>
        <p class="mt-3 text-muted text-left"><?php echo substr($article["paragraphe"], 0, 150); ?> ...</p>


      <a href="index.php?article=<?php echo $article['id']?>" class="btn btn-primary py-1 px-2">Lire la suite</a>
      </div>
      <!-- Grid column -->
      <?php
  		}
  ?>
    </div>
    <!-- Grid row -->
    <hr/>
    <nav aria-label="Page navigation example">
      <ul class="pagination pg-blue d-flex justify-content-center">
        <li class="page-item <?php echo $disabled = ($nbrpage == 1) ? 'disabled' : '';?>">
          <a href="<?php echo $lien?>nbrpage=<?php echo $nbrpage-1?>" class="page-link" tabindex="-1">Previous</a>
        </li>

          <?php 
          for($i=1;$i<=$nbrPages;$i++)
          {
              ?>
                <li class="page-item <?php echo $active = ($i == $nbrpage) ? 'active' : '';?>"><a href="<?php echo $lien?>nbrpage=<?php echo $i?>" class="page-link"><?php echo $i?></a></li>
              <?php
          }
          ?>
        

        
        <li class="page-item <?php echo $disabled = ($nbrpage == $nbrPages) ? 'disabled' : '';?>">
          <a href="<?php echo $lien?>nbrpage=<?php echo $nbrpage+1?>" class="page-link">Next</a>
        </li>
      </ul>
    </nav>
  </section>
  </div>
          </div>

        </div> <!-- End .row -->
      </div>
    </section> <!-- End Post Grid Section -->