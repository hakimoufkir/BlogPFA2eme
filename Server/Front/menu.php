   <!-- ======= Header ======= -->
 <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="index.php" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>Bloger</h1>
      </a>

      <nav id="navbar" class="navbar">
        <ul>
          <li class="dropdown"><a href="index.php"><span>Categories</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
            <!-- <li><a href="#">Drop Down 2</a></li> -->

 <li>      <a class="text-success" href="index.php">
        Tout les categories
        </a></li>

            </li>
            
  <?php 
    foreach ($categories as $categorie) {
    ?>
    <li class="list-group-item d-flex justify-content-between align-items-center">
      <a href="index.php?categorie=<?php echo $categorie["id"]?>">
        <?php echo $categorie["categorie"]?>
        </a>
      <span class="badge badge-primary badge-pill"><?php echo $categorie["Totalarticle"]?></span>
    </li>
    <?php
      }
   ?>
            </ul>
          </li>
          <li><a href="index.php?page=about">About</a></li>
          <li><a href="index.php?page=contact">Contact</a></li>
          <?php
           if(verfiSession())
           {
echo  '          <li class="nav-item">
<a class="btn" href="?page=newblog">Create Blog </a>
</li>';           }
          ?>


        </ul>
      </nav><!-- .navbar -->

      <div class="position-relative d-flex align-items-center">


        <div class="dropdown ">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <span class="bi bi-person-circle"></span>  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <?php
    if(verfiSession())
      {
      require("server/front/menuAbonne.php");
      }
    else
      {
        require("server/front/signIn.php");
      }
    ?></a>

  </div>
</div>
        <a href="#" class="mx-2 js-search-open"></span></a>
        
        <!-- ======= Search Form ======= -->
   
            <button class="btn js-search-close"></button>
      
      </div>

    </div>




    
  </header><!-- End Header -->


