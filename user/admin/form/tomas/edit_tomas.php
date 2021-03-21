<div class="box-header with-border">
  <h3 class="box-title">Edit Data tomas</h3>

  <div class="box-tools pull-right">
    <a href="?a=tomas" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from tomas where id_tomas='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
 ?>

<br>

<form action="form/tomas/simpanedit_tomas.php" method="post" enctype="multipart/form-data">

                <div class="form-group">
                  <label>Nama Tokoh Masyarakat</label>
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_tomas'] ?>">
                  <input type="text" name="nama" class="form-control" required value="<?php echo $d1['nama'] ?>">
              </div> 
              <div class="form-group">
                  <label>Kategori</label>
                  <select name="kategori" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kategori_tomas");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_kategori'] ?>" <?php if($dk['id_kategori']==$d1['kategori_tomas']){echo "selected";} ?>><?php echo $dk['kategori_tomas'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Pekerjaan</label>
                  <input type="text" name="pekerjaan" class="form-control" required value="<?php echo $d1['pekerjaan'] ?>">
              </div> 
              <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" name="alamat" class="form-control" required value="<?php echo $d1['alamat'] ?>">
              </div> 
              <div class="form-group">
                  <label>Kecamatan</label>
                  <select name="kecamatan" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kecamatan");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_kecamatan'] ?>" <?php if($dk['id_kecamatan']==$d1['id_kecamatan']){echo "selected";} ?>><?php echo $dk['nama_kecamatan'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>No HP</label>
                  <input type="text" name="nohp" class="form-control" required value="<?php echo $d1['nohp'] ?>">
              </div> 




              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>