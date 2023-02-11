<?php

           /*SELECT  COUNT(*) Totalarticle, 
       `categories`.`categorie`
            FROM  `article`
        LEFT JOIN `categories`
            ON `article`.`genre` = `categories`.`id`
            GROUP   BY `categories`.`categorie`*/

            $connexionDB=connexionDB();
            $sqlQuery = "SELECT COUNT(*) Totalarticle, `categories`.`id`,`categories`.`categorie` FROM `article` RIGHT JOIN `categories` ON `article`.`genre` = `categories`.`id` GROUP BY `categories`.`categorie`";
            $categories = $connexionDB->prepare($sqlQuery);
            $categories->execute();
            $categories= $categories->fetchAll();
        
?>
            

