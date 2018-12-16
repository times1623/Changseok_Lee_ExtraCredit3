<?php
include 'connect.php';

function get_single_video($pdo, $vid) {
    $query = "SELECT * FROM video WHERE id = '$vid'";

    $get_video = $pdo->query($query);
    $results = array();

    while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;

        // you could run subresult queries here - just write another function and append.
    }

    return $results;
}

function get_all_videos($pdo) {
    $query = "SELECT
    *
FROM
    tbl_genre,
    video,
    tbl_vid_genre
WHERE
    tbl_genre.genre_id = tbl_vid_genre.genre_id AND video.id = tbl_vid_genre.id";

    $get_video = $pdo->query($query);
    $results = array();

    while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;
    }

    return $results;
}

function get_one_desc($pdo, $id) {
    $query = "SELECT
    tbl_synopsis.synopsis_desc,
    tbl_thumbnail.thumbnail_name
FROM
    tbl_synopsis,
    tbl_thumbnail,
    video,
    tbl_vid_synopsis,
    tbl_vid_thumb
WHERE
    tbl_synopsis.synopsis_id = tbl_vid_synopsis.synopsis_id 
    AND video.id = tbl_vid_synopsis.id 
    AND tbl_thumbnail.thumbnail_id = tbl_vid_thumb.thumbnail_id 
    AND video.id = tbl_vid_thumb.id 
    AND video.id = '$id'";

    $get_video = $pdo->query($query);
    $results = array();

    while($row = $get_video->fetch(PDO::FETCH_ASSOC)) {
        $results[] = $row;

        // you could run subresult queries here - just write another function and append.
    }

    return $results;
}

?>