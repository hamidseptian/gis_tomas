<?php 
include "../../../assets/koneksi.php";
$id = $_GET['id'];

$q_kec = mysqli_query($conn, "SELECT * from kecamatan where id_kecamatan = '$id'");
$d_kec = mysqli_fetch_array($q_kec);
  $q = mysqli_query($conn, "SELECT a.nama, a.alamat, a.pekerjaan, a.nohp,
    b.nama_kecamatan, 
  c.kategori_tomas
   from tomas a left join kecamatan b on a.id_kecamatan = b.id_kecamatan 
    left join kategori_tomas c on a.kategori_tomas = c.id_kategori where a.id_kecamatan='$id'");
  $j = mysqli_num_rows($q);

  $wadah = array();
  while ($d = mysqli_fetch_array($q)) {
    $data['nama'] = $d['nama'];
    $data['kategori'] = $d['kategori_tomas'];
    $data['alamat'] = $d['alamat'];
    $data['nohp'] = $d['nohp'];
    $data['pekerjaan'] = $d['pekerjaan'];
    
    // $data['pangkat'] = $d['nama'];
    array_push($wadah, $data);
  }
  $datanya = array(
  	'jumlahdata'=> $j,
  	'data' =>$wadah,
    'kecamatan' =>$d_kec['nama_kecamatan'],
  );
echo json_encode($datanya);
  
 ?>

