<?php 
include "../../../../assets/koneksi.php";

$pangkat=$_POST['pangkat'];

	$q1=mysqli_query($conn, "INSERT into pangkat_kantibmas set 
		
		
		nama_pangkat='$pangkat'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data pangkat berhasil disimpan');
		window.location.href="../../?a=pangkat"

	</script>
