<?php

include "../../../../assets/koneksi.php";

 // header("Content-type: application/vnd-ms-excel");
 
 // header("Content-Disposition: attachment; filename=Data_Pengaduan_Masyarakat.xls");
 
 // header("Pragma: no-cache");
 
 // header("Expires: 0");



  $q1=mysqli_query($conn, "SELECT * from pengaduan order by status asc
    ");
  $no=1;
 ?>
<center>
  Laporan data pengaduan masyarakat
</center>
<br>
<center>
 <table class="table table-striped table-bordered" id="example1" border="1" style="border-collapse: collapse;">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Pelapor</td>
        <td>No HP Pelapor</td>
        <td>Kejadian</td>
        <td>Lokasi Kejadian</td>
        <td>Status</td>       
      
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td valign="top"><?php echo $no++ ?></td>
   
  
    <td valign="top"><?php echo $d1['pelapor'] ?></td>
    <td valign="top"><?php echo $d1['nohp'] ?></td>
    <td valign="top"><?php echo $d1['peristiwa'] ?></td>
    <td valign="top"><?php echo $d1['tkp'] ?></td>
    <td valign="top"><?php echo $d1['status'] ?></td>
  
  </tr>
  <?php } ?>
</table>
</center>


<script>
  window.print();
</script>