<div class="box-header with-border">
  <h3 class="box-title">Edit Data kategori</h3>

  <div class="box-tools pull-right">
    <a href="?a=kategori" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from kategori_tomas where id_kategori='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/jenis_tomas/simpanedit_jenis_tomas.php" method="post" enctype="multipart/form-data">

              <div class="form-group">
                  <label>Kategori Tokoh Masyarakat</label>
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_kategori'] ?>">
                  <input type="text" name="kategori" class="form-control" value="<?php echo $d1['kategori_tomas'] ?>">
              </div> 
              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>