<?php
session_start();
$bdd = new PDO('mysql:host=localhost; dbname=books;','root','');
$data = [
    'title' => "Site ebook - Gérer les livres"
];
ob_start();
?>
<h1>Gestion des livres</h1>

<?php
$recupBooks = $bdd->query('SELECT * FROM book');
$books = $recupBooks->fetchAll();
echo "<table class='table table-bordered'>
<tr class='bg-primary'>
<th>N°</th>
<th>Titre</th>
<th>Auteur</th>
<th>Date</th>
<th>Action</th>
</tr>";
foreach($books as $book){
    echo "<tr>
    <td>".$book['id']."</td>
    <td>".$book['title']."</td>
    <td>".$book['author']."</td>
    <td>".$book['date']."</td>
    <td><a href='bookDetail.php?id=";?><?=$book['id']?>
    <?php echo "' class='btn btn-primary'>Détail</a></td>";
}
?>

<?php 
$content = ob_get_clean();
require_once '../public/template.php';
?>