<?php $id=$_GET['id'];
$q=mysqli_query($conn, "SELECT * from kegiatan where id_kegiatan='$id'");
$d=mysqli_fetch_array($q);
 ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo $d['nama_kegiatan'] ?></h3>

  <div class="box-tools pull-right">
    <a href="?a=kegiatan" class="btn btn-info" >Kembali</a>
  </div>
</div>

<br>
  <div style=" ; padding: 15px;">

<img src="form/kegiatan/gambar/<?php echo $d['cover'] ?>" style="width:40%; float: left; margin-right:  20px; margin-bottom:  20px;">


 <div style="text-align: justify;"> 
 Kegiatan ini dilaksanakan pada <br>
 <?php $pt = explode('-', $d['tanggal_dilaksanakan']);
 echo $pt[2].'-'.$pt[1].'-'.$pt[0]; ?>  
 Jam <?php echo $d['jam_pelaksanaan'] ?>        
<?php echo $d['deskripsi']; ?>
</div>
<a href="?id=<?php echo $idukm ?>&m=kegiatan" class="btn btn-info">Kembali</a>
</div>