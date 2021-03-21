<?php 
include "../../../../assets/koneksi.php";

$id=$_POST['id'];
$pangkat=$_POST['pangkat'];

	$q1=mysqli_query($conn, "UPDATE pangkat_kantibmas set 
		
		
		nama_pangkat='$pangkat'
		where id_pangkat='$id'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data pangkat berhasil disimpan');
		window.location.href="../../?a=pangkat"

	</script>
