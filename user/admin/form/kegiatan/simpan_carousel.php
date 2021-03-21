<?php 
include "../../../../assets/koneksi.php";

session_start();
$idukm = $_SESSION['id_ukm'];
$namaslide = $_POST['nama'];

$desc = $_POST['desc'];



			$ekstensi_diperbolehkan	= array('png','jpg','PNG','JPG','JPEG');
			$nama = $_FILES['file']['name'];
			$x = explode('.', $nama);
			$ekstensi = strtolower(end($x));
			$ukuran	= $_FILES['file']['size'];
			$file_tmp = $_FILES['file']['tmp_name'];
			$namabaru = date('ymdhis').$nama;
 
			if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
					move_uploaded_file($file_tmp, '../../form/carousel/gambar/'.$namabaru);


			
	$q1=mysqli_query($conn, "INSERT into carousel set 
		
		id_ukm='$idukm',
		foto='$namabaru',
		judul='$namaslide',
		keterangan='$desc'
		
		
		")or die(mysqli_error()); 
?>

	<script type="text/javascript">
		alert('Data slide berhasil disimpan');
		window.location.href="../../?a=carousel"

	</script>
<?php }else{ ?>
	<script type="text/javascript">
		alert('Data slide gagal disimpan\nharap pilih file gambar dengan benar');
		window.location.href="../../?a=carousel"

	</script>
<?php } ?>