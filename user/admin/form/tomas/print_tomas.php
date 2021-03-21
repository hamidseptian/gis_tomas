<?php

include "../../../../assets/koneksi.php";
require_once("../../../../assets/dompdf/src/Autoloader.php");
Dompdf\Autoloader::register();
use Dompdf\Dompdf;

   
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
  $q1=mysqli_query($conn, "SELECT * from tomas as a
    left join kecamatan as b on a.id_kecamatan = b.id_kecamatan
    left join kategori_tomas as c on a.kategori_tomas = c.id_kategori
    order by a.id_tomas asc
    ");
  $no=1;

 $colspan = $jjt +  5;  

$html = '

 <table class="table table-striped table-bordered" id="tabelscrol" border=1 style="border-collapse:collapse; width:100%">
    <thead>
      <tr>
        <td rowspan="2">No</td>
        <td colspan="'.$jjt.'"><center>Nama Tokoh</center></td>
        
        
       
        
        
        <td rowspan="2">Pekerjaan</td>
        <td rowspan="2">Alamat</td>
        <td rowspan="2">No HP</td>
       
      </tr>
      <tr>';
      foreach ($ktm as $ktm) { 
        $html .='  
      
        <td>'.$ktm['kategori'].'</td>
        ';
        } 
      $html.='</tr>
    </thead>';



  while ($dkec=mysqli_fetch_array($qkec)) { 
  	$idkecamatan = $dkec['id_kecamatan'];

  	$html .= '
  	 <tr style="background: yellow"> 
        <td colspan="'.$colspan.'"><center>Kec. '.$dkec['nama_kecamatan'].'</center></td>
        
      
      </tr>';

       $q1=mysqli_query($conn, "SELECT id_tomas,nama, pekerjaan, alamat from tomas as a

    where a.id_kecamatan='$idkecamatan'
    order by a.id_tomas asc ")or die (mysqli_error());
       while ($d1=mysqli_fetch_array($q1)) { 
       	$html .= '
       		  <tr>
		    <td>'.$no++.'</td>';
		   

		      foreach ($ktm2 as $ktm) { 
		          $idkt = $ktm['id_kategori'];
		          $idtomas = $d1['id_tomas'];
		          $qtomas = mysqli_query($conn, "SELECT nama from tomas where id_tomas = '$idtomas' and kategori_tomas='$idkt'")or die(mysqli_error());
		          $dtomas = mysqli_fetch_array($qtomas);
		          $namatomas = $dtomas['nama'];
		          
		          
		      $html .='
		      <td>'.$namatomas.'</td>
		      ';
		        
		    
		        } 
		    $html .='
		     <td>'.$d1['pekerjaan'].'</td>
		    <td>'.$d1['alamat'].'</td>
		    <td>2323</td>
		    
		   
		  </tr>
		    ';
		   
       	

       }
}










$html .= '
</table>';

$dompdf = new Dompdf();

$dompdf->loadHtml($html);
$dompdf->render();
$dompdf->stream('File.pdf', ['Attachment'=>0]);

?>
<p style="font-size: "></p>

