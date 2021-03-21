<?php 
include "../../../../assets/koneksi.php";

$id=$_POST['id'];
$polres=$_POST['polres'];
$nama=$_POST['nama'];
$alamat=$_POST['alamat'];
$lot=$_POST['lot'];
$lang=$_POST['lang'];

	$q1=mysqli_query($conn, "UPDATE polsek set 
		
		
		  id_polres='$polres',
		 nama_polsek='$nama',
		 alamat='$alamat',
		 lot='$lot',
		 lang ='$lang'
		 where id_polsek = '$id'
		
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data polsek  berhasil diperbaharui');
		window.location.href="../../?a=polsek"

	</script>
