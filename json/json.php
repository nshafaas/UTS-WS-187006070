<?php 

	require_once('koneksi.php');

	$query = "SELECT * FROM kpop";
	$sql   = mysqli_query($db_connect, $query);

	if ($sql){
		$result = array();
		while ($row = mysqli_fetch_array($sql)){
			array_push ($result,array(
				'id' => $row['id'],
				'tahun_debut' => $row['tahun_debut'],
				'asal' => $row['asal'],
				'label' => $row['label'],
				'anggota' => $row['anggota'],
				'release_at' => $row['release_at'],
			) );
		}

	echo json_encode( array('k-pop' => $result) );
    }
?>