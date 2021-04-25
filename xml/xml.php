<?php

Header('Content-type: text/xml');
//koneksi ke database
$connection = mysqli_connect("localhost", "root", "", "wsuts") or die("Error " . mysqli_error($connection));
$xml = new SimpleXMLElement('<xml/>');

$sql = "SELECT * FROM kpop";
$result = mysqli_query($connection, $sql) or die("Error " . mysqli_error($connection));

//membuat array
while ($row = mysqli_fetch_assoc($result)) {

    $track = $xml->addChild('kpop');
    $track->addChild('id', $row['id']);
    $track->addChild('tahun_debut', $row['tahun_debut']);
    $track->addChild('asal', $row['asal']);
    $track->addChild('label', $row['label']);
    $track->addChild('anggota', $row['anggota']);
   
}

print($xml->asXML());
//tutup koneksi ke database
mysqli_close($connection);
?>
