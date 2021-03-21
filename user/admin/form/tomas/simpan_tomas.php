<?php 
include "../../../../assets/koneksi.php";

$nama=$_POST['nama'];
$kategori=$_POST['kategori'];
$pekerjaan=$_POST['pekerjaan'];
$alamat=$_POST['alamat'];
$kecamatan=$_POST['kecamatan'];
$nohp=$_POST['nohp'];

	$q1=mysqli_query($conn, "INSERT into tomas set 
		
		
		 nama='$nama',
		kategori_tomas='$kategori',
		pekerjaan='$pekerjaan',
		alamat='$alamat',
		id_kecamatan='$kecamatan',
		nohp ='$nohp'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data tokoh masyarakat berhasil disimpan');
		window.location.href="../../?a=tomas"

	</script>
