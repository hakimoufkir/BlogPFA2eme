<?php
    session_start();
    require_once("../functions/fonctSession.php"); 
    require_once("../functions/fonctConnexion.php"); 

    if(verfiSession())
    {
        $id_user=$_SESSION['info']['id'];
    }

if(!empty($_POST)&&(!empty($_FILES)))
{
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
    $path = '../../assets/blog/'; 
    $img = $_FILES['chphoto']['name'];
    $tmp = $_FILES['chphoto']['tmp_name'];
    $ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));


    if(in_array($ext, $valid_extensions)) 
    { 
            $nomphoto=''.time().'_'.$img;
            $path = $path.$nomphoto; 
            if(move_uploaded_file($tmp,$path)) 
            {
            $titre=$_POST['chtitre'];
            $contenu=$_POST['chcontenu'];
            $tags=$_POST['chtags'];
            $id_genre=$_POST['chgenre'];
            $connexionDB=connexionDB();
            $sqlQuery = "INSERT INTO article (id, titre, paragraphe,  genre, id_user, photo1,tags) VALUES (NULL, '$titre', '$contenu', '$id_genre', '$id_user', '$nomphoto','$tags');";
            $users = $connexionDB->prepare($sqlQuery);
            $users->execute();
            echo "true";
            header('Location: http://localhost/zenblog/index.php');
            }
            else
            {
                echo 'invalide';
            }
        }
        else
        {
            echo "extension invalide";
        }
}
?>