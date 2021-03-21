<div class="box-header with-border">
  <h3 class="box-title">Data Kantibmas</h3>

  <div class="box-tools pull-right">
    <a href="form/kamtibmas/print_kamtibmas.php" class="btn btn-info btn-sm"  target="_blank">Print Data Kantibmas</a>
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Kantibmas</a>
  </div>
</div>

<form action="form/kamtibmas/simpan_kantibmas.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Kantibmas</h4>
              </div>
              <div class="modal-body">
              <div class="form-group">
                  <label>Nama Kantibmas</label>
                  <input type="text" name="nama" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>Pangkat</label>
                  <select name="pangkat" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from pangkat_kantibmas");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_pangkat'] ?>"><?php echo $dk['nama_pangkat'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>NRP</label>
                  <input type="number" name="nrp" class="form-control" required>
              </div> 
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
                  <label>Polsek</label>
                  <select name="polsek" class="form-control">
                    <?php 
                    $qk = mysqli_query($conn, "SELECT * from polsek where id_polres='1'");
                    while ($dk = mysqli_fetch_array($qk)) { ?>
                      
                    <option value="<?php echo $dk['id_polsek'] ?>"><?php echo $dk['nama_polsek'] ?></option>
                    <?php } ?>
                  </select>
              </div> 
              <div class="form-group">
                  <label>Desa / Kel</label>
                  <textarea name="desa" class="form-control" required></textarea>
              </div> 
              <div class="form-group">
                  <label>Kep Pengangkatan</label>
                  <input type="text" name="kepp" class="form-control" required>
              </div> 
              
              
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Kantibmas</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from kantibmas as a
    left join polsek as b on a.id_polsek = b.id_polsek
    left join pangkat_kantibmas as c on a.id_pangkat = c.id_pangkat
    left join polres as d on a.id_polres = d.id_polres
    ");
  $no=1;
  $iduser = $_SESSION['id_user'];
 ?>

 <table class="table table-striped table-bordered" id="tabelscrol">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Nama</td>
        <td>Pangkat</td>
        <td>NRP</td>
        <td>Polres/TA</td>
        <td>Polsek/TA</td>
        <td>Desa / Kel</td>
        <td>Kep Pengangkatan</td>
       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['nama'] ?></td>
    <td><?php echo $d1['nama_pangkat'] ?></td>
    <td><?php echo $d1['nrp'] ?></td>
    <td><?php echo $d1['nama_polres'] ?></td>
    <td><?php echo $d1['nama_polsek'] ?></td>
    <td><?php echo $d1['desa'] ?></td>
    <td><?php echo $d1['kep_pengangkatan'] ?></td>
    <td>
      <?php if ($iduser!=$d1['id_kantibmas']): ?>
        
      <a href="form/kamtibmas/hapus_kantibmas.php?id=<?php echo $d1['id_kantibmas'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <?php endif ?>
      <a href="?a=edit_kantibmas&id=<?php echo $d1['id_kantibmas'] ?>" class="btn btn-warning btn-xs">Edit</a>    
    </td>
  </tr>
  <?php } ?>
</table>