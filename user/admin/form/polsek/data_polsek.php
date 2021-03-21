<div class="box-header with-border">
  <h3 class="box-title">Data Polsek</h3>

  <div class="box-tools pull-right">
    <!-- <a href="" class="btn btn-default btn-sm"  target="_blank">Print Data Paket</a> -->
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Polsek</a>
  </div>
</div>

<form action="form/polsek/simpan_polsek.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Polsek</h4>
              </div>
              <div class="modal-body">
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
                  <label>Kecamatan</label>
                  <!-- <label>Kategori</label> -->
                  <select name="kecamatan" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kecamatan");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_kecamatan'] ?>"><?php echo $dk['nama_kecamatan'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Nama Polsek</label>
                  <input type="text" name="nama" class="form-control" required>
              </div> 
           
              <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" name="alamat" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Lotitude</label>
                  <input type="text" name="lot" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Langitude</label>
                  <input type="text" name="lang" class="form-control" required>
              </div> 
            
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Polsek</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT a.nama_polsek, a.id_polsek, a.alamat, a.lot, a.lang, b.nama_polres, c.nama_kecamatan from polsek as a
    left join polres as b on a.id_polres = b.id_polres
    left join kecamatan as c on a.id_kecamatan= c.id_kecamatan
    ");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Polres</td>
        <td>Polsek</td>
        <td>Alamat</td>
        <td>Kecamatan</td>
        <td>Lotitude</td>
        <td>Langitude</td>
       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['nama_polres'] ?></td>
    <td><?php echo $d1['nama_polsek'] ?></td>
    <td><?php echo $d1['alamat'] ?></td>
    <td><?php echo $d1['nama_kecamatan'] ?></td>
    <td><?php echo $d1['lot'] ?></td>
    <td><?php echo $d1['lang'] ?></td>
    <td>
      <a href="form/polsek/hapus_polsek.php?id=<?php echo $d1['id_polsek'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <a href="?a=edit_polsek&id=<?php echo $d1['id_polsek'] ?>" class="btn btn-warning btn-xs">Edit</a>    
    </td>
  </tr>
  <?php } ?>
</table>