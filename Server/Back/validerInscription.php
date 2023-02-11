<?php
session_start();
require_once("../functions/fonctSession.php"); 
require_once("../functions/fonctConnexion.php"); 
print_r($_POST);
if(!empty($_POST)&&(!empty($_FILES)))
{
	$valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
	$path = '../../assets/photos/';
	$img = $_FILES['chphoto']['name'];
	$tmp = $_FILES['chphoto']['tmp_name'];
	$ext = strtolower(pathinfo($img, PATHINFO_EXTENSION));
	if(in_array($ext, $valid_extensions))
	{
			$nomphoto='_'.time().'_'.$img;
			$path = $path.'_'.time().'_'.$img;
			if(move_uploaded_file($tmp,$path))
			{
				$nom =$_POST['chnom'];
				$prenom =$_POST['chprenom'];
				$email =$_POST['chemail'];
				$mp =$_POST['chmp'];
				$connexionDB=connexionDB();
				$sqlQuery = "INSERT INTO `user` (`id`, `nom`, `prenom`, `email`, `mdp`,`photo`) VALUES (NULL, '$nom', '$prenom', '$email', '$mp','$nomphoto');";
				$users = $connexionDB->prepare($sqlQuery);
				$users->execute();
				echo $sqlQuery;
				$latest_id = $connexionDB->lastInsertId(); 
				addSession($latest_id,$nom,$prenom,$email,$nomphoto);
				echo "true";
			}
			else{
				echo 'invalide';
			}
	}
	else{
		echo 'invalide extension';
	}
}

?>