<div class="box-header with-border">
  <h3 class="box-title">Data Pengaduan</h3>

  <div class="box-tools pull-right">
    <a href="form/pengaduan/print_pengaduan.php" class="btn btn-default btn-sm"  target="_blank">Print Data Pengaduan</a>
    
  </div>
</div>

<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from pengaduan order by status asc
    ");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Pelapor</td>
        <td>No HP Pelapor</td>
        <td>Kejadian</td>
        <td>Lokasi Kejadian</td>
        <td>Status</td>       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['pelapor'] ?></td>
    <td><?php echo $d1['nohp'] ?></td>
    <td><?php echo $d1['peristiwa'] ?></td>
    <td><?php echo $d1['tkp'] ?></td>
    <td><?php echo $d1['status'] ?></td>
    <td>
      <a href="form/pengaduan/hapus_pengaduan.php?id=<?php echo $d1['id_pengaduan'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <?php if ($d1['status']=='Baru') { ?>
      <a href="form/pengaduan/proses_pengaduan.php?id=<?php echo $d1['id_pengaduan'] ?>" class="btn btn-info btn-xs" onclick="return confirm('Proses pengaduan.?')">Proses</a>
        
      <?php }else if ($d1['status']=='Diproses') { ?>
      <a href="form/pengaduan/selesai_pengaduan.php?id=<?php echo $d1['id_pengaduan'] ?>" class="btn btn-info btn-xs" onclick="return confirm('Selesaikan kasus.?')">Selesai</a>
        
      <?php } ?>
      
    </td>
  </tr>
  <?php } ?>
</table>