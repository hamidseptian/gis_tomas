<div class="box-header with-border">
  <h3 class="box-title">Edit Data Pangkat</h3>

  <div class="box-tools pull-right">
    <a href="?a=pangkat" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from pangkat_kantibmas where id_pangkat='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/pangkat/simpanedit_pangkat.php" method="post" enctype="multipart/form-data">

              <div class="form-group">
                  <label>Nama Pangkat</label>
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_pangkat'] ?>">
                  <input type="text" name="pangkat" class="form-control" value="<?php echo $d1['nama_pangkat'] ?>">
              </div> 
              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>