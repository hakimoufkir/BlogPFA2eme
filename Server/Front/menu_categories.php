<ul class="list-group">

   <a href="#!" class="list-group-item list-group-item-action active">
    Les Catégories
  </a>
  <li class="list-group-item d-flex justify-content-between align-items-center">
      <a href="index.php">
        Tout les categories
        </a>
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