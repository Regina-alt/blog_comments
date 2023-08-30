<?php
include './app/downloadPosts.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog</title>
    <link rel="stylesheet" href="public/css/styles.css" />
</head>

<body>
    <div class="container">
        <div class="search-container">
            <form action="" method="get">
                <input type="text" name="search_text" class="search-input" minlength="3" required
                    placeholder="Введите минимум 3 символа..">
                <button type="submit" class="search-button">Найти</button>
            </form>
            <div class="reset">
                <a href="?page=1">Сбросить</a>
            </div>
        </div>
        <div class="posts-container" id="posts-container">
            <?php
            include './app/displayPosts.php'
                ?>
        </div>
    </div>

</body>


</html>