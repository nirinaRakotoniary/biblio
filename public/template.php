<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title><?= $data['title']; ?></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    	<link rel="icon" type="" href="./../public/images/favicon.png">
     </head>        
    <body class="d-flex flex-column min-vh-100">
    <?php include('header.php'); ?>
	<main class="container">
        <section class="row">
            <article class="col">
                <div>
                    <?=$content;?>
                </div>
            </article>			        
        </section>
	</main>
        <?php include('footer.php'); ?>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>