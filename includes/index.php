<?php

include 'functions.php';

if (isset($_GET['movie'])) {
    // pass the connection and the movie id to a function
    $data = get_single_video($conn, $_GET['movie']);
    echo json_encode($data);
}

else if (isset($_GET['info'])) {
    // pass the connection and the movie id to a function
    $data = get_one_desc($conn, $_GET['info']);
    echo json_encode($data);
}

else {
    // pass the connection and the movie id to a function
    $data = get_all_videos($conn);
    echo json_encode($data);
}



?>