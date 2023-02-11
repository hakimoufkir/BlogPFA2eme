
<?php

if(isset($_GET['page'])){
    switch ($_GET['page']){
        case 'inscription':
            require_once('server/front/inscription.php');
            break;
      
        case 'newblog':
            require_once('server/front/newblog.php');
            break;
        case 'contact':
            require_once('server/front/contact.php');
            break;
      
        case 'about':
            require_once('server/front/about.php');
            break;
      

        
        default: 
            echo "???";
            break;

    }
}

else if(isset($_GET['annonce'])&& (!verfiSession()))
    {
    }
else if(isset($_GET['search'])) 
    {
    }

else if(!isset($_GET['page']))
    {
        require_once('server/front/slider.php');
        require_once('server/front/accueil.php');    }
else
    {
        require_once('server/front/404.php');
    }
?>
