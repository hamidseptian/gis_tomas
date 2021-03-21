
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];

	$q1=mysqli_query($conn, "DELETE from kategori_tomas where id_kategori='$id'") or die(mysqli_error()); 
	
?>

	<script type="text/javascript">
		alert('Data kategori tokoh masyarakat dihapus');
		window.location.href="../../?a=jenis_tomas"

	</script>