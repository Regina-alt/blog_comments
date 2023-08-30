<?php
include './conf/dbConnection.php';

$postsPerPage = 5;
$searchText = isset($_GET['search_text']) ? $_GET['search_text'] : '';

try {
    $currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
    $startFrom = ($currentPage - 1) * $postsPerPage;

    if (!empty($searchText)) {
        $searchText = '%' . $searchText . '%';
        $commentQuery = "SELECT posts.title_post, comments.name_comment, comments.body_comment, comments.email
                         FROM comments
                         JOIN posts ON posts.id_post = comments.postId
                         WHERE comments.body_comment LIKE ?
                         LIMIT $startFrom, $postsPerPage";
        $commentCountQuery = "SELECT COUNT(*) as total
                              FROM comments
                              WHERE body_comment LIKE ?";
    } else {
        $commentQuery = "SELECT posts.title_post, comments.name_comment, comments.body_comment, comments.email
                         FROM comments
                         JOIN posts ON posts.id_post = comments.postId
                         LIMIT $startFrom, $postsPerPage";
        $commentCountQuery = "SELECT COUNT(*) as total FROM comments";
    }

    $commentStmt = $mysqli->prepare($commentQuery);

    if (!empty($searchText)) {
        $commentStmt->bind_param("s", $searchText);
    }

    $commentStmt->execute();
    $commentResult = $commentStmt->get_result();
    $commentStmt->close();

    $stmt = $mysqli->prepare($commentCountQuery);

    if (!empty($searchText)) {
        $stmt->bind_param("s", $searchText);
    }

    $stmt->execute();
    $countResult = $stmt->get_result();
    $totalComments = $countResult->fetch_assoc()['total'];
    $stmt->close();

    $currentPostTitle = null;

    while ($comment = $commentResult->fetch_assoc()) {
        if ($currentPostTitle !== $comment['title_post']) {
            if ($currentPostTitle !== null) {
                echo "</div>";
            }
            $currentPostTitle = $comment['title_post'];
            echo "<div class='post'>";
            echo "<h2 class='post-title'>$currentPostTitle</h2>";
        }

        echo "<div class='comments'>";
        echo "<div class='comment'>";
        echo "<h4>{$comment['name_comment']}</h4>";
        echo "<p>{$comment['body_comment']}</p>";
        echo "<p class='comment-author'>{$comment['email']}</p>";
        echo "</div>";
        echo "</div>";
    }

    if ($currentPostTitle !== null) {
        echo "</div>";
    }

    $totalPages = ceil($totalComments / $postsPerPage);
    echo '<div class="pagination">';
    if ($currentPage > 1) {
        echo '<a href="?page=1&search_text=' . urlencode($searchText) . '">В начало</a> ';
        echo '<a href="?page=' . ($currentPage - 1) . '&search_text=' . urlencode($searchText) . '">&lt; </a> ';
    }

    echo "Страница $currentPage / $totalPages";

    if ($currentPage < $totalPages) {
        echo '<a href="?page=' . ($currentPage + 1) . '&search_text=' . urlencode($searchText) . '"> &gt;</a> ';
        echo '<a href="?page=' . $totalPages . '&search_text=' . urlencode($searchText) . '">В конец</a> ';
    }
    echo '</div>';

} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>