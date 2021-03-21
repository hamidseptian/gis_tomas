
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];

	$q1=mysqli_query($conn, "DELETE from tomas where id_tomas='$id'") or die(mysqli_error()); 
	
?>

	<script type="text/javascript">
		alert('Data tokoh masyarakat dihapus');
		window.location.href="../../?a=tomas"

	</script>