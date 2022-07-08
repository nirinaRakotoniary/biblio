<?php
session_start();
require_once 'database.php';
if(isset($_POST['valider']))
{
    $_SESSION['mdp'] = $_POST['mdp'];
    if(!empty($_POST['name']) AND !empty($_POST['mdp'])){
       $recupUsers = $bdd->query('SELECT * FROM users');
       $users = $recupUsers->fetchAll();
       $nom_saisi = $_POST['name'];
       $mdp_saisi = $_POST['mdp'];


       foreach ($users as $user) {
        $GLOBALS['bool'] = false;
        if($user['Nom']==$nom_saisi AND $user['password']==$mdp_saisi AND $user['type']=='admin'){
            $bool= true;
            header('Location: espace_admin/index.php');
            break;
        }elseif($user['Nom']==$nom_saisi AND $user['password']==$mdp_saisi AND $user['type']=='student'){
            $bool= true;
            header('Location: espace_users/index.php');
            break;
        }   
       }
       echo $bool==false ? "mdp ou nom incorrect" : "";
       

    }else{
        echo 'Veuillez remplir tous les champs';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Espace de connexion</title>
</head>
<body>
    <form method="POST" action="" align="center">
        <input type="text" name="name" autocomplete="off">
        <br>
        <input type="password" name="mdp">
        <br><br>
        <input type="submit" name="valider">
    </form>
</body>
</html>