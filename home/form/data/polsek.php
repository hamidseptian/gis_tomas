
   


<div class="container">
  <h4>Data Polsek Pesisir Selatan</h4>
<br>
<?php 
  $q1=mysqli_query($conn, "SELECT a.nama_polsek, a.id_polsek, a.alamat, a.lot, a.lang, b.nama_polres from polsek as a
    left join polres as b on a.id_polres = b.id_polres
    ");
  $no=1;
 ?>
<table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Polres</td>
        <td>Polsek</td>
        <td>Alamat</td>
       
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['nama_polres'] ?></td>
    <td><?php echo $d1['nama_polsek'] ?></td>
    <td><?php echo $d1['alamat'] ?></td>
  
  </tr>
  <?php } ?>
</table>

</div> 