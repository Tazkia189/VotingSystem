<?php
    include 'db_connection/connection.php';
    session_start();

    $key = $_GET["key"];
    $query = "SELECT * FROM users WHERE email LIKE '%$key%' or  `name` LIKE '%$key%'";
    // echo $query;
    $returnval = $dbcon->query($query);

    $productList = $returnval->fetchAll();

    echo json_encode($productList);

?>