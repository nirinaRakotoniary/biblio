<?php
session_start();
$bdd = new PDO('mysql:host=localhost; dbname=books;','root','');
if(isset($_SESSION['mdp']) AND !empty($_SESSION['mdp'])){
    echo "vous êtes admin, vous pouvez tout gérer";
    $data = [
        'title' => "Site ebook - paga d'accueil"
    ];
}else{
    header('Location: ../logout.php');
}
ob_start();
?>
<h1>Espace admin</h1>
<p>Vous êtes un étudiant</p>
<a href="../espace_admin/books.php"><button>Gérer les livres</button></a>
<a class="btn btn-info"  href="../logout.php">Déconnexion</a>

<?php 
$content = ob_get_clean();
require_once '../public/template.php';?>
<p></p>
