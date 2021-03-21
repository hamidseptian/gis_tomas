<div class="box-header with-border">
  <h3 class="box-title">Data Kegiatan </h3>

  <div class="box-tools pull-right">
    <!-- <a href="" class="btn btn-default btn-sm"  target="_blank">Print Data Paket</a> -->
    <a href="?a=tambah_kegiatan" class="btn btn-info btn-sm">Tambah Kegiatan</a>
  </div>
</div>

<hr>
<?php 


  $q1=mysqli_query($conn, "SELECT * from kegiatan");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
        <td>Gambar</td>
        <td>Nama Kegiatan</td>
        <td>Dilaksanakna Pada</td>
        
        
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td> <img src="form/kegiatan/gambar/<?php echo $d1['cover'] ?>" style="width:200px"></td>
    <td><?php echo $d1['nama_kegiatan'] ?></td>
    <td><?php echo $d1['tanggal_dilaksanakan'] ?><br><?php echo $d1['jam_pelaksanaan'] ?></td>
    
   
    
    <td>
      <a href="form/kegiatan/hapus_kegiatan.php?id=<?php echo $d1['id_kegiatan'] ?>&gambar=<?php echo $d1['cover'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <a href="?a=edit_kegiatan&id=<?php echo $d1['id_kegiatan'] ?>" class="btn btn-warning btn-xs">Edit</a>    
      <a href="?a=lihat_kegiatan&id=<?php echo $d1['id_kegiatan'] ?>" class="btn btn-info btn-xs">Lihat</a>    
    </td>
  </tr>
  <?php } ?>
</table>