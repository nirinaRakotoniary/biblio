<?php
session_start();
$bdd = new PDO('mysql:host=localhost; dbname=books;','root','');
$data = [
    'title' => "Site ebook - détail étudiant"
];
if(isset($_POST['retourner'])){
    header('Location: users.php');
}
if(isset($_GET['CNE']) AND !empty($_GET['CNE'])){
    $getcne = $_GET['CNE'];
    $recupUser = $bdd->prepare('SELECT * FROM users WHERE CNE =?');
    $recupUser->execute(array($getcne));

    if($recupUser->rowCount() > 0){
        $user = $recupUser->fetch();

        if(isset($_POST['modifier']) AND !empty($_POST['cne']) AND !empty($_POST['nom']) AND !empty($_POST['prenom'])){
            $cne_saisi = $_POST['cne'];
            $nom_saisi = $_POST['nom'];
            $prenom_saisi = $_POST['prenom'];
            $modifierUser = $bdd->prepare('UPDATE users SET CNE=?, Nom=?, Prenom=? WHERE CNE=?' );
            $modifierUser->execute(array($cne_saisi, $nom_saisi, $prenom_saisi,$getcne));
            header('Location: users.php');

        }else{
            echo "<script>
            alert('Veuillez remplir tous les champs !');
            </script>";
        }

    }else{
        echo "<script>
            alert('Aucun utilisateur trouvé !');
        </script>";
    }
    
}else{
    echo "<script>
       alert('Aucun identifiant trouvé !');
    </script>";
}



ob_start();
?>
    <h1>Détail de l'utilisateur avec mis à jour</h1>
    <form method="post" action="">
        <div class="form-group" >

        </div>
        CNE : 
        <input class="form-control" type="text" name="cne" value="<?= $user['CNE'];?>"> 
        Nom : 
        <input class="form-control" type="text" name="nom" value="<?= $user['Nom'];?>"> 
        Prénom : 
        <input class="form-control" type="text" name="prenom" value="<?= $user['Prenom'];?>">
        <br>
        <input class="btn btn-secondary" type="submit" name="modifier" value="modifier">
    
        <input class="btn btn-dark" type="submit" name="retourner" value="Retour à la liste des utilisateurs">
        <p id="altMsg" ></p>
    </form>


<?php 
$content = ob_get_clean();
require_once '../public/template.php';?>
