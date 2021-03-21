
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];

	$q1=mysqli_query($conn, "UPDATE pengaduan set status='Selesai' where id_pengaduan='$id'") or die(mysqli_error()); 
	
?>

	<script type="text/javascript">
		alert('Data pengaduan diproses');
		window.location.href="../../?a=pengaduan"

	</script>