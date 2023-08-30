<?php
include './conf/dbConnection.php';

try {
    $urlPosts = 'https://jsonplaceholder.typicode.com/posts';
    $responsePosts = file_get_contents($urlPosts);
    $posts = json_decode($responsePosts, true);

    $urlComments = 'https://jsonplaceholder.typicode.com/comments';
    $responseComments = file_get_contents($urlComments);
    $comments = json_decode($responseComments, true);


    foreach ($posts as $post) {
        $postId = $post['id'];
        $postTitle = $post['title'];
        $postBody = $post['body'];
        $postUserId = $post['userId'];

        $query = "INSERT INTO `posts`(`id_post`, `title_post`, `body_post`, `userId`) VALUES (?, ?, ?, ?)";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("issi", $postId, $postTitle, $postBody, $postUserId);
        $stmt->execute();
        $stmt->close();
    }

    foreach ($comments as $comment) {
        $idPost = $comment['postId'];
        $commentId = $comment['id'];
        $commentName = $comment['name'];
        $commentEmail = $comment['email'];
        $commentBody = $comment['body'];

        $query = "INSERT INTO `comments` (`postId`, `id_comment`, `name_comment`, `email`, `body_comment`) VALUES (?, ?, ?, ?, ?)";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("iisss", $idPost, $commentId, $commentName, $commentEmail, $commentBody);
        $stmt->execute();
        $stmt->close();
    }


    $numComments = count($comments);
    $numPosts = count($posts);

    echo ("<script>console.log('Загружено " . $numPosts . " записей и " . $numComments . " комментариев');</script>");



    $mysqli->close();
} catch (\PDOException $e) {
    echo "Error: " . $e->getMessage();
}


?>