<?php

include "../../../../assets/koneksi.php";

 // header("Content-type: application/vnd-ms-excel");
 
 // header("Content-Disposition: attachment; filename=Data_Kamtibmas.xls");
 
 // header("Pragma: no-cache");
 
 // header("Expires: 0");



   $q1=mysqli_query($conn, "SELECT * from kantibmas as a
    left join polsek as b on a.id_polsek = b.id_polsek
    left join pangkat_kantibmas as c on a.id_pangkat = c.id_pangkat
    left join polres as d on a.id_polres = d.id_polres
    ");
  $no=1;
  $no=1;
 ?>
<center>
  Data Anggota Khantibmas
</center>
<br>
 <table class="table table-striped table-bordered" id="tabelscrol" border="1" style="font-size:11px; border-collapse: collapse;" >
    <thead>
      <tr align="center">
        <td rowspan="2">No</td>
        
      
        <td rowspan="2">Nama</td>
        <td rowspan="2">Pangkat</td>
        <td rowspan="2">NRP</td>
        <td colspan="2">Polres/TA</td>
        
        <td rowspan="2">Desa / Kel</td>
        <td rowspan="2">Kep Pengangkatan</td>
       
      
      </tr>
      <tr align="center">
        <td>Polres / TA</td>
        <td>Polsek / TA</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td valign="top"><?php echo $no++ ?></td>
   
  
    <td valign="top"><?php echo $d1['nama'] ?></td>
    <td valign="top"><?php echo $d1['nama_pangkat'] ?></td>
    <td valign="top"><?php echo $d1['nrp'] ?></td>
    <td valign="top"><?php echo $d1['nama_polres'] ?></td>
    <td valign="top"><?php echo $d1['nama_polsek'] ?></td>
    <td valign="top"><?php echo $d1['desa'] ?></td>
    <td valign="top"><?php echo $d1['kep_pengangkatan'] ?></td>
  </tr>
  <?php } ?>
</table>

<script type="text/javascript">
  window.print();
</script>