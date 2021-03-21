
   


<div class="container">
  <h4>Data Tokoh Masyarakat Pesisir Selatan</h4>
<br>
<?php 
  $q1=mysqli_query($conn, "SELECT * from tomas as a
    left join kecamatan as b on a.id_kecamatan = b.id_kecamatan
    left join kategori_tomas as c on a.kategori_tomas = c.id_kategori
    ");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Kategori</td>
        <td>Nama Tokoh Masyarakat</td>
        <td>Kecamatan</td>
        <td>Pekerjaan</td>
        <td>Alamat</td>
        <td>No HP</td>
       
        
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['kategori_tomas'] ?></td>
    <td><?php echo $d1['nama'] ?></td>
    <td><?php echo $d1['nama_kecamatan'] ?></td>
    <td><?php echo $d1['pekerjaan'] ?></td>
    <td><?php echo $d1['alamat'] ?></td>
    <td><?php echo $d1['nohp'] ?></td>
    
  </tr>
  <?php } ?>
</table>
</div> 