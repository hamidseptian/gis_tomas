<?php 
include "../../../../assets/koneksi.php";

session_start();
$id = $_POST['id'];

$judul = $_POST['judul'];
$tgl = $_POST['tgl'];
$jam = $_POST['jam'];
$desc = $_POST['desc'];


$fotolama = $_POST['fotolama'];

$desc = $_POST['desc'];



			$ekstensi_diperbolehkan	= array('png','jpg','PNG','JPG','JPEG');
			$nama = $_FILES['file']['name'];
			$x = explode('.', $nama);
			$ekstensi = strtolower(end($x));
			$ukuran	= $_FILES['file']['size'];
			$file_tmp = $_FILES['file']['tmp_name'];
			$namabaru = date('ymdhis').$nama;
 if ($nama=='') {
 		$q1=mysqli_query($conn, "UPDATE kegiatan set 
		
			
		nama_kegiatan='$judul',
		tanggal_dilaksanakan='$tgl',
		jam_pelaksanaan='$jam',
		deskripsi='$desc'

		where id_kegiatan='$id'
		
		
		")or die(mysqli_error()); ?>
			<script type="text/javascript">
		alert('Data kegiatan berhasil disimpan');
		window.location.href="../../?a=kegiatan"

	</script>
	<?php 
 }else{
			if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
					move_uploaded_file($file_tmp, '../../form/kegiatan/gambar/'.$namabaru);

 		$q1=mysqli_query($conn, "UPDATE kegiatan set 
		
		
		nama_kegiatan='$judul',
		tanggal_dilaksanakan='$tgl',
		jam_pelaksanaan='$jam',
		deskripsi='$desc',
		cover='$namabaru'
		where id_kegiatan='$id'
		
		
		
		")or die(mysqli_error()); 
			unlink('gambar/'.$fotolama);

?>

	<script type="text/javascript">
		alert('Data kegiatan berhasil disimpan');
		window.location.href="../../?a=kegiatan"

	</script>
<?php }else{ ?>
	<script type="text/javascript">
		alert('Data kegiatan gagal disimpan\nharap pilih file gambar dengan benar');
		window.location.href="../../?a=kegiatan"

	</script>
<?php } 
}?>