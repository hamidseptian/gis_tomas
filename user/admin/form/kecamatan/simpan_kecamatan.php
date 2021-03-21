<?php 
include "../../../../assets/koneksi.php";

$kecamatan=$_POST['kecamatan'];

	$q1=mysqli_query($conn, "INSERT into kecamatan set 
		
		
		nama_kecamatan='$kecamatan'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data kecamatan berhasil disimpan');
		window.location.href="../../?a=kecamatan"

	</script>
