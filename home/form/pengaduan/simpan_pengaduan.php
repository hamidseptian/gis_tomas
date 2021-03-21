<?php 
session_start();
include "../../../assets/koneksi.php";

$nama=$_POST['nama'];
$kejadian=$_POST['kejadian'];
$tkp=$_POST['tkp'];
$nohp=$_POST['nohp'];
$status = "Baru";

	$q1=mysqli_query($conn, "INSERT into pengaduan set 
		
		
		  pelapor='$nama',
		peristiwa='$kejadian',
		tkp='$tkp',
		nohp='$nohp',
		status ='$status'
		")or die(mysqli_error()); 


	$_SESSION['pesan'] = '<div class="alert alert-info">Pengaduan anda akan kami proses <br>Terimakasih sudah memberikan informasi</div>';
?>

	<script type="text/javascript">
		
		window.location.href="../../?m=pengaduan"

	</script>
