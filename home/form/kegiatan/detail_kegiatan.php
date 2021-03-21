
   


<div class="container">
        <?php 
      $id = $_GET['idk'];

      $q = mysqli_query($conn, "SELECT * from kegiatan where id_kegiatan='$id'");
      $j = mysqli_num_rows($q);
      $d = mysqli_fetch_array($q)
     ?>

<h4><?php echo $d['nama_kegiatan'] ?></h4>
<br>
  <div style=" ; padding: 15px;">

<img src="../user/admin/form/kegiatan/gambar/<?php echo $d['cover'] ?>" style="width:40%; float: left; margin-right:  20px; margin-bottom:  20px;">


 <div style="text-align: justify;"> 
 Kegiatan ini dilaksanakan pada <br>
 <?php $pt = explode('-', $d['tanggal_dilaksanakan']);
 echo $pt[2].'-'.$pt[1].'-'.$pt[0]; ?>  
 Jam <?php echo $d['jam_pelaksanaan'] ?>        
<?php echo $d['deskripsi']; ?>
</div>
<a href="?id=<?php echo $idukm ?>&m=kegiatan" class="btn btn-info">Kembali</a>
</div>


</div> 