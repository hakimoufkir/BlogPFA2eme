




<?php
	session_start();
	require_once("server/functions/fonctSession.php"); // add/remove/verif session
	require_once("server/functions/fonctConnexion.php"); // dbconncection
	require_once("server/back/gereSession.php"); 

	require_once("server/back/ressources.php");

	require("server/front/head.php");
	require("server/front/menu.php");
	require("server/front/corps.php");
	require("server/front/footer.php");
	require("server/front/foot.php");
?>