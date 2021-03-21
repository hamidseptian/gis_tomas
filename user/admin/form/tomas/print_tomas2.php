<?php

include "../../../../assets/koneksi.php";

 // header("Content-type: application/vnd-ms-excel");
 
 // header("Content-Disposition: attachment; filename=Data_Tokoh_Masyarakat.xls");
 
 // header("Pragma: no-cache");
 
 // header("Expires: 0");


$qkec = mysqli_query($conn, "SELECT * from kecamatan order by id_kecamatan asc");
$qjt = mysqli_query($conn, "SELECT * from kategori_tomas");
$jjt =mysqli_num_rows($qjt);

    $qk = mysqli_query($conn, "SELECT * from kategori_tomas");
                    $ktm= [];
                    $ktm2= [];
                    while ($dk = mysqli_fetch_array($qk)) {
                      $data['id_kategori'] = $dk['id_kategori'];
                      $data['kategori'] = $dk['kategori_tomas'];
                      array_push($ktm, $data);
                      array_push($ktm2, $data);
                      } 

  $no=1;
 ?>
 <center>
 Data Tokoh Masyarakat, Tokoh Agama, Tokoh Adat dan Tokoh Pemuda Pesisir Selatan</center>
<br>
 <table class="table table-striped table-bordered" id="tabelscrol" border=1 style="border-collapse:collapse;">
    <thead>
      <tr>
        <td rowspan="2">No</td>
        <td colspan="<?php echo $jjt ?>"><center>Nama Tokoh</center></td>
        
        
       
        <!-- <td>Nama Tokoh Masyarakat</td> -->
        
        <td rowspan="2">Pekerjaan</td>
        <td rowspan="2">Alamat</td>
        <td rowspan="2">No HP</td>
       
      </tr>
      <tr>
      	<?php foreach ($ktm as $ktm) { ?>
          
      
        <td><?php echo $ktm['kategori'] ?></td>
        <?php } ?>
      </tr>
    </thead>
  <?php 
$colspan = $jjt +  4; 
  while ($dkec=mysqli_fetch_array($qkec)) { 
  	$idkecamatan = $dkec['id_kecamatan'];

?>
 <tr> 
        <td colspan="<?php echo $colspan ?>"  style="background: yellow"><center>Kec. <?php echo $dkec['nama_kecamatan'] ?></center></td>
        
      
      </tr>
<?php 
 $q1=mysqli_query($conn, "SELECT * from tomas as a
    left join kecamatan as b on a.id_kecamatan = b.id_kecamatan
    left join kategori_tomas as c on a.kategori_tomas = c.id_kategori
    where a.id_kecamatan='$idkecamatan'
    order by a.id_tomas asc ")or die (mysqli_error());

      while ($d1=mysqli_fetch_array($q1)) { 
		    ?>
		  <tr>
		    <td><?php echo $no++ ?></td>
		   

		        <?php foreach ($ktm2 as $ktm) { 
		          $idkt = $ktm['id_kategori'];
		          $idtomas = $d1['id_tomas'];
		          $qtomas = mysqli_query($conn, "SELECT nama from tomas where id_tomas = '$idtomas' and kategori_tomas='$idkt'")or die(mysqli_error());
		          $dtomas = mysqli_fetch_array($qtomas);
		          $namatomas = $dtomas['nama'];
		          ?>
		          
		      
		        
		    <td><?php echo $namatomas ?></td>
		        <?php } ?>
		    
		    <td><?php echo $d1['pekerjaan'] ?></td>
		    <td><?php echo $d1['alamat'] ?></td>
		    <td><?php echo str_replace('"', '', $d1['nohp']) ?></td>
		    
		   
		  </tr>
		  <?php } 
		} ?>







</table>


<script type="text/javascript">
  window.print();
</script>