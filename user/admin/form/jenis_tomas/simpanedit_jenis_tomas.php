<?php 
include "../../../../assets/koneksi.php";

$id=$_POST['id'];
$kategori=$_POST['kategori'];

	$q1=mysqli_query($conn, "UPDATE kategori_tomas set 
		
		
		kategori_tomas='$kategori'
		where id_kategori='$id'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data kategori tokoh masyarakat berhasil diperbaharui');
		window.location.href="../../?a=jenis_tomas"

	</script>
