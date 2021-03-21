<?php 
$menu = $_GET['m'];

if ($menu=='visimisi'){ 
	include "form/home/visimisi.php";
}

else if ($menu=='tugas'){ 
	include "form/home/tugas.php";
}
else if ($menu=='data_polsek'){ 
	include "form/data/polsek.php";
}
else if ($menu=='data_tomas'){ 
	include "form/data/tomas.php";
}

else if ($menu=='pengaduan'){ 
	include "form/pengaduan/input_pengaduan.php";
}

else if ($menu=='kegiatan'){ 
	include "form/kegiatan/kegiatan.php";
}
else if ($menu=='detail_kegiatan'){ 
	include "form/kegiatan/detail_kegiatan.php";
}
else if ($menu=='maps'){ 
	include "form/maps/map_home.php" ;
}

else 
{
	echo '
 <div class="container">
 	<div class="alert alert-danger">Fitur ini belum tersedia</div>
 </div>';
}

 ?>