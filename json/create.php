<?php

	require_once('koneksi.php');

	$tahun_debut = $_POST['tahun_debut'];
    $asal = $_POST['asal'];
    $label = $_POST['label'];
    $anggota = $_POST['anggota'];

    $query = "INSERT INTO kpop(tahun_debut,asal,,label,anggota)VALUES('$tahun_debut','$asal','$label','$anggota')";
    $sql    = mysqli_query($db_connect, $query);
    if ($sql){
    echo json_encode ( array('message' => 'created!') );
    }else {
        echo json_encode ( array('message' => 'error!') );
    }
?>
