<?php
session_start();
$bdd = new PDO('mysql:host=localhost; dbname=books;','root','');
$data = [
    'title' => "Site ebook - détail du livre"
];
if(isset($_POST['retourner'])){
    header('Location: books.php');
}
if(isset($_GET['id']) AND !empty($_GET['id'])){
    $getid = $_GET['id'];
    $recupBook = $bdd->prepare('SELECT * FROM book WHERE id =?');
    $recupBook->execute(array($getid));

    if($recupBook->rowCount() > 0){
        $book = $recupBook->fetch();
        print_r($book);

        if(isset($_POST['modifier']) AND !empty($_POST['title']) AND !empty($_POST['author']) AND !empty($_POST['date'])){
            $titre_saisi = $_POST['title'];
            $auteur_saisi = $_POST['author'];
            $date_saisie = $_POST['date'];
            $modifierBook = $bdd->prepare('UPDATE book SET title=?, author=?, date=? WHERE id=?' );
            $modifierBook->execute(array($titre_saisi, $auteur_saisi, $date_saisie,$getid));
            header('Location: books.php');

        }else{
            echo "<script>
            alert('Veuillez remplir tous les champs !');
            </script>";
        }

    }else{
        echo "<script>
            alert('Aucun livre trouvé !');
        </script>";
    }
    
}else{
    echo "<script>
       alert('Aucun identifiant trouvé !');
    </script>";
}



ob_start();
?>
    <h1>Détail du livre avec mis à jour</h1>
    <form method="post" action="">
        <div class="form-group" >

        </div>
        Titre : 
        <input class="form-control" type="text" name="title" value="<?= $book['title'];?>"> 
        Auteur : 
        <input class="form-control" type="text" name="author" value="<?= $book['author'];?>"> 
        Date : 
        <input class="form-control" type="text" name="date" value="<?= $book['date'];?>">
        <br>
        <input class="btn btn-secondary" type="submit" name="modifier" value="modifier">
    
        <input class="btn btn-dark" type="submit" name="retourner" value="Retour à la liste des utilisateurs">
        <p id="altMsg" ></p>
    </form>


<?php 
$content = ob_get_clean();
require_once '../public/template.php';?>
