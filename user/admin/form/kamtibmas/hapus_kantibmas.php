
<?php 
include "../../../../assets/koneksi.php";
$id=$_GET['id'];

	$q1=mysqli_query($conn, "DELETE from kantibmas where id_kantibmas='$id'") or die(mysqli_error()); 
	
?>

	<script type="text/javascript">
		alert('Data kamtibmas dihapus');
		window.location.href="../../?a=kamtibmas"

	</script>