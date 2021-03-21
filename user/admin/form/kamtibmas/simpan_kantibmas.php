<?php 
include "../../../../assets/koneksi.php";

$nama=$_POST['nama'];
$pangkat=$_POST['pangkat'];
$nrp=$_POST['nrp'];
$polres=$_POST['polres'];
$polsek=$_POST['polsek'];
$desa=nl2br($_POST['desa']);
$kepp=$_POST['kepp'];

	$q1=mysqli_query($conn, "INSERT into kantibmas set 
		
		
		  nama='$nama',
		 id_pangkat='$pangkat',
		 nrp='$nrp',
		 id_polres='$polres',
		 id_polsek='$polsek',
		 desa='$desa',
		 kep_pengangkatan ='$kepp',
		 password='123'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data kantibmas berhasil disimpan');
		window.location.href="../../?a=kamtibmas"

	</script>
