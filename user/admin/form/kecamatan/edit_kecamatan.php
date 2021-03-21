<div class="box-header with-border">
  <h3 class="box-title">Edit Data kecamatan</h3>

  <div class="box-tools pull-right">
    <a href="?a=kecamatan" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from kecamatan where id_kecamatan='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/kecamatan/simpanedit_kecamatan.php" method="post" enctype="multipart/form-data">

              <div class="form-group">
                  <label>Nama Kecamatan</label>
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_kecamatan'] ?>">
                  <input type="text" name="kecamatan" class="form-control" value="<?php echo $d1['nama_kecamatan'] ?>">
              </div> 
              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>