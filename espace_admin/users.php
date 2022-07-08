<?php
session_start();
$bdd = new PDO('mysql:host=localhost; dbname=books;','root','');
$data = [
    'title' => "Site ebook - Gérer les utilisateurs"
];
ob_start();
?>
<h1>Gestion les utilisateurs</h1>

<?php
$recupUsers = $bdd->query('SELECT * FROM users WHERE type = "student"');
$users = $recupUsers->fetchAll();
echo "<table class='table table-bordered'>
<tr class='bg-primary'>
<th>CNE</th>
<th>Nom</th>
<th>Prenom</th>
<th>Groupe</th>
<th>Action</th>
</tr>";
foreach($users as $user){
    echo "<tr>
    <td>".$user['CNE']."</td>
    <td>".$user['Nom']."</td>
    <td>".$user['Prenom']."</td>
    <td>".$user['Groupe']."</td>
    <td><a href='userDetail.php?CNE=";?><?=$user['CNE']?>
    <?php echo "' class='btn btn-primary'>Détail</a></td>";
}
?>

<?php 
$content = ob_get_clean();
require_once '../public/template.php';
?>