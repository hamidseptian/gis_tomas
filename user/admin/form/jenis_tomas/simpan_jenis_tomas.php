<?php 
include "../../../../assets/koneksi.php";

$kategori=$_POST['kategori'];

	$q1=mysqli_query($conn, "INSERT into kategori_tomas set 
		
		
		kategori_tomas='$kategori'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data kategori tokoh masyarakat berhasil disimpan');
		window.location.href="../../?a=jenis_tomas"

	</script>
