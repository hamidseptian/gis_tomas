<?php 
@$menu = $_GET['a'];
if ($menu=='') {
  include "form/dashboard/dashboard.php";
  // echo "Segera Aktif";
}
else if ($menu=='maps') {
  include "form/maps/index.php";
}
else if ($menu=='jenis_tomas') {
  include "form/jenis_tomas/jenis_tomas.php";
}
else if ($menu=='kecamatan') {
  include "form/kecamatan/kecamatan.php";
}
else if ($menu=='pangkat') {
  include "form/pangkat/pangkat.php";
}
else if ($menu=='edit-akun') {
  include "form/dashboard/edit_akun.php";
}
else if ($menu=='pengaduan') {
  include "form/pengaduan/pengaduan.php";
}
else if ($menu=='edit_pangkat') {
  include "form/pangkat/edit_pangkat.php";
}
else if ($menu=='tomas') {
  include "form/tomas/data_tomas.php";
}
else if ($menu=='kegiatan') {
  include "form/kegiatan/data_kegiatan.php";
}
else if ($menu=='tambah_kegiatan') {
  include "form/kegiatan/tambah_kegiatan.php";
}
else if ($menu=='edit_kegiatan') {
  include "form/kegiatan/edit_kegiatan.php";
}
else if ($menu=='lihat_kegiatan') {
  include "form/kegiatan/lihat_kegiatan.php";
}
else if ($menu=='polsek') {
  include "form/polsek/data_polsek.php";
}
else if ($menu=='kamtibmas') {
  include "form/kamtibmas/data_kamtibmas.php";
}
else if ($menu=='edit_tomas') {
  include "form/tomas/edit_tomas.php";
}
else if ($menu=='edit_kantibmas') {
  include "form/kamtibmas/edit_kamtibmas.php";
}
else if ($menu=='edit_polsek') {
  include "form/polsek/edit_polsek.php";
}
else if ($menu=='edit_kecamatan') {
  include "form/kecamatan/edit_kecamatan.php";
}
else if ($menu=='edit_jenis_tomas') {
  include "form/jenis_tomas/edit_jenis_tomas.php";
}
else{
	echo "Fitur ini belum tersedia";
}
 ?>

