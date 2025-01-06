<?php
    include "connection.php";
    session_start();

    if (!isset($_SESSION['isLoggedIn']))
    {
        header("Location: login.php"); 
    }

    $id = $_POST['id'];
    $tahun = $_POST['tahun'];
    $judul = $_POST['judul'];