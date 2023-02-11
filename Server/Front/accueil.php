<?php 
$connexionDB=connexionDB();
/**************affichage article*****************/
if(isset($_GET['article']))
{
      require_once('server/front/article.php');

}
/**************fin affichage article*****************/
else
{
  /**************affichage categorie*****************/
   require_once('server/front/liste_articles.php');
   
}
?>