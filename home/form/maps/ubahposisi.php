<?php 
include "../../../../assets/koneksi.php";


$lat=$_POST['lat'];
$long=$_POST['long'];
$zoom=$_POST['zoom'];

	$q1=mysqli_query($conn, "UPDATE tengah_map set 
		
		
		 lot='$lat',
		lang='$long',
		zoom ='$zoom'
		where id='0'
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Posisi tengah map diperbaharui');
		window.location.href="../../?a=maps"

	</script>
