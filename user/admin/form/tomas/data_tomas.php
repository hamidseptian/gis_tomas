<div class="box-header with-border">
  <h3 class="box-title">Data Tokoh Masyarakat</h3>

  <div class="box-tools pull-right">
    <a href="form/tomas/print_tomas2.php" class="btn btn-info btn-sm"  target="_blank">Print Data Tokoh Masyarakat</a>
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Tokoh Masyarakat</a>
  </div>
</div>

<form action="form/tomas/simpan_tomas.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Tokoh Masyarakat</h4>
              </div>
              <div class="modal-body">
              <div class="form-group">
                  <label>Nama Tokoh Masyarakat</label>
                  <input type="text" name="nama" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Kategori</label>
                  <select name="kategori" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kategori_tomas");
                    $ktm= [];
                    $ktm2= [];
                    while ($dk = mysqli_fetch_array($qk)) {
                      $data['id_kategori'] = $dk['id_kategori'];
                      $data['kategori'] = $dk['kategori_tomas'];
                      array_push($ktm, $data);
                      array_push($ktm2, $data);
                     ?>
                      
                    <option value="<?php echo $dk['id_kategori'] ?>"><?php echo $dk['kategori_tomas'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Pekerjaan</label>
                  <input type="text" name="pekerjaan" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" name="alamat" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Kecamatan</label>
                  <select name="kecamatan" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from kecamatan");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_kecamatan'] ?>"><?php echo $dk['nama_kecamatan'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>No HP</label>
                  <input type="text" name="nohp" class="form-control" required>
              </div> 
              
              
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Tokoh Masyarakat</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from tomas as a
    left join kecamatan as b on a.id_kecamatan = b.id_kecamatan
    left join kategori_tomas as c on a.kategori_tomas = c.id_kategori
    order by a.id_tomas asc
    ");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="tabelscrol">
    <thead>
      <tr>
        <td>No</td>
        
        <?php foreach ($ktm as $ktm) { ?>
          
      
        <td><?php echo $ktm['kategori'] ?></td>
        <?php } ?>
       
        <!-- <td>Nama Tokoh Masyarakat</td> -->
        <td>Kecamatan</td>
        <td>Pekerjaan</td>
        <td>Alamat</td>
        <td>No HP</td>
        <td>Kecamatan</td>
       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  
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
    <td><?php echo $d1['nama_kecamatan'] ?></td>
    <td><?php echo $d1['pekerjaan'] ?></td>
    <td><?php echo $d1['alamat'] ?></td>
    <td><?php echo $d1['nohp'] ?></td>
    <td><?php echo $d1['nama_kecamatan'] ?></td>
    <td>
      <a href="form/tomas/hapus_tomas.php?id=<?php echo $d1['id_tomas'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <a href="?a=edit_tomas&id=<?php echo $d1['id_tomas'] ?>" class="btn btn-warning btn-xs">Edit</a>    
    </td>
  </tr>
  <?php } ?>
</table>