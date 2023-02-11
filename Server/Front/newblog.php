<section id="posts" class="posts">
      <div class="container mt-4" data-aos="fade-up">
        <div class="row g-5">
          <div class="col-lg-12">
<!-- Default form register -->
<form class="text-center border border-light p-5" method="post" action="server/back/validerArticle.php" id="formArticle" enctype="multipart/form-data">
    <p class="h4 mb-4">Créer un article de blog</p>
    <div class="form-row mb-4">
        <div class="col">
            <!-- First name -->
            <input type="text" name="chtitre" class="form-control" placeholder="Titre">
        </div>
        <div class="col">

            <select class="form-control" name="chgenre">
                <?php 
                 foreach ($categories as $categorie) {
                    ?>
                    <option value="<?php echo $categorie["id"]?>"><?php echo $categorie["categorie"]?></option>
                    <?php
                    }
                 ?>
                
            </select>
           

        </div>
    </div>
    <div class="mb-4">
    <textarea id="default-editor" name="chcontenu" class="form-control">
    </textarea>

    </div>

     <div class="mb-4">
         <input type="text" name="chtags" class="form-control" placeholder="Tages">
    </div>

   
    <div class="mb-4">
        <input type="file" name="chphoto" id="chphoto" class="form-control" placeholder="Phone number" aria-describedby="descriphoto">
        <small id="descriphoto" class="form-text text-muted mb-4">
            (.jpg, .png, .gif)
        </small>
    </div>



    <!-- Sign up button -->
    <button class="btn btn-info my-4 btn-block" type="submit">Créer un artcile de blog</button>

   

</form>
<!-- Default form register -->
</div>

</div> <!-- End .row -->
</div>
</section> <!-- End Post Grid Section -->