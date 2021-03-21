<div class="box-header with-border">
  <h3 class="box-title">Edit Data kantibmas</h3>

  <div class="box-tools pull-right">
    <a href="?a=kamtibmas" class="btn btn-info" >Kembali</a>
  </div>
</div>


<?php 
$id=$_GET['id'];
  $q1=mysqli_query($conn, "SELECT * from kantibmas where id_kantibmas='$id'") or die(mysqli_error());
  $d1=mysqli_fetch_array($q1);
  $j1=mysqli_num_rows($q1);
  $desa = str_replace('<br />', '',$d1['desa']);
 ?>

<br>

<form action="form/kamtibmas/simpanedit_kantibmas.php" method="post" enctype="multipart/form-data">
                  <input type="hidden" name="id" class="form-control" value="<?php echo $d1['id_kantibmas'] ?>">

              

              <div class="form-group">
                  <label>Nama Kantibmas</label>
                  <input type="text" name="nama" class="form-control" required value="<?php echo $d1['nama'] ?>">
              </div> 
              <div class="form-group">
                  <label>Pangkat</label>
                  <select name="pangkat" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from pangkat_kantibmas");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_pangkat'] ?>"  <?php if($dk['id_pangkat']==$d1['id_pangkat']){echo "selected";} ?>><?php echo $dk['nama_pangkat'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>NRP</label>
                  <input type="number" name="nrp" class="form-control" required value="<?php echo $d1['nrp'] ?>">
              </div> 
              <div class="form-group">
                  <label>Polres</label>
                  <select name="polres" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from polres");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_polres'] ?>"  <?php if($dk['id_polres']==$d1['id_polres']){echo "selected";} ?>><?php echo $dk['nama_polres'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Polsek</label>
                  <select name="polsek" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from polsek where id_polres='1'");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_polsek'] ?>" <?php if($dk['id_polsek']==$d1['id_polsek']){echo "selected";} ?>><?php echo $dk['nama_polsek'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Desa / Kel</label>
                  <textarea name="desa" class="form-control" required><?php echo $desa ?></textarea>
              </div> 
              <div class="form-group">
                  <label>Kep Pengangkatan</label>
                  <input type="text" name="kepp" class="form-control" required value="<?php echo $d1['kep_pengangkatan'] ?>">
              </div> 
              



              <div class="form-group">
                 <input type="submit" class="btn btn-info"  value="Simpan Perubahan Data">
              </div> 

              
          
</form>