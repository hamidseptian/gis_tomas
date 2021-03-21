<div class="box-header with-border">
  <h3 class="box-title">Edit Data polsek</h3>

  <div class="box-tools pull-right">
    <a href="?a=polsek" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from polsek where id_polsek='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/polsek/simpanedit_polsek.php" method="post" enctype="multipart/form-data">
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_polsek'] ?>">
                   <div class="form-group">
                  <label>Polres</label>
                  <select name="polres" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from polres");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_polres'] ?>"><?php echo $dk['nama_polres'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Nama Polsek</label>
                  <input type="text" name="nama" class="form-control" required value="<?php echo $d1['nama_polsek'] ?>">
              </div> 
           
              <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" name="alamat" class="form-control" required value="<?php echo $d1['alamat'] ?>">
              </div> 
             <div class="form-group">
                  <label>Kecamatan</label>
                  <!-- <label>Kategori</label> -->
                  <select name="kecamatan" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kecamatan");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_kecamatan'] ?>" <?php if($dk['id_kecamatan']==$d1['id_kecamatan']){echo "selected";} ?>><?php echo $dk['nama_kecamatan'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Lotitude</label>
                  <input type="text" name="lot" class="form-control" required value="<?php echo $d1['lot'] ?>">
              </div> 
              <div class="form-group">
                  <label>Langitude</label>
                  <input type="text" name="lang" class="form-control" required value="<?php echo $d1['lang'] ?>">
              </div> 



              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>