<?php
function verfiSession()
{
	if(isset($_SESSION['info']))
	{
		return true;
	}
	else
	{
		return false;
	}
}

function addSession($id,$nom,$prenom,$email,$avatar)
{

	if(!verfiSession())
	{
		$_SESSION['info']=Array();
		$_SESSION['info']['id']=$id;
		$_SESSION['info']['nom']=$nom;
		$_SESSION['info']['prenom']=$prenom;
		$_SESSION['info']['email']=$email;
		$_SESSION['info']['avatar']=$avatar;
	}
}

function delSession()
{
	if(verfiSession())
	{
		unset($_SESSION['info']);
		session_destroy();
	}
}

?>