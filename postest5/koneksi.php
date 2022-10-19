<?php
    $conn = mysqli_connect("localhost", "root", "", "daftarpesanan");

    if (!$conn){
        die("Gagal Terhubung ke Database anda ".mysqli_connect_error());
    }
?>