<?php 
include "../../../assets/koneksi.php";
$id = $_GET['id'];
  $q = mysqli_query($conn, "SELECT * from kantibmas a left join pangkat_kantibmas b on a.id_pangkat = b.id_pangkat where a.id_polsek='$id'");
  $j = mysqli_num_rows($q);

  $wadah = array();
  while ($d = mysqli_fetch_array($q)) {
    $data['nama'] = $d['nama'];
    $data['pangkat'] = $d['nama_pangkat'];
    $data['nrp'] = $d['nrp'];
    $data['kep_pengangkatan'] = $d['kep_pengangkatan'];
    // $data['pangkat'] = $d['nama'];
    array_push($wadah, $data);
  }
  $datanya = array(
  	'jumlahdata'=> $j,
  	'data' =>$wadah
  );
echo json_encode($datanya);
  
 ?>

