
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];
$gambar=$_GET['gambar'];

	$q1=mysqli_query($conn, "DELETE from kegiatan where id_kegiatan='$id'") or die(mysqli_error()); 

	unlink('gambar/'.$gambar);
	
?>

	<script type="text/javascript">
		alert('Data kegiatan dihapus');
		window.location.href="../../?a=kegiatan"

	</script>