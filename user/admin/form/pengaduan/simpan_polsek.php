<?php 
include "../../../../assets/koneksi.php";

$polres=$_POST['polres'];
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$lot=$_POST['lot'];
$lang=$_POST['lang'];

	$q1=mysqli_query($conn, "INSERT into polsek set 
		
		
		  id_polres='$polres',
		 nama_polsek='$nama',
		 alamat='$alamat',
		 lot='$lot',
		 lang ='$lang'
		
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data polsek masyarakat berhasil disimpan');
		window.location.href="../../?a=polsek"

	</script>
