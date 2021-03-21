<?php 
include "../../../../assets/koneksi.php";

$id=$_POST['id'];
$kecamatan=$_POST['kecamatan'];

	$q1=mysqli_query($conn, "UPDATE kecamatan set 
		
		
		nama_kecamatan='$kecamatan'
		where id_kecamatan='$id'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data kecamatan berhasil disimpan');
		window.location.href="../../?a=kecamatan"

	</script>
