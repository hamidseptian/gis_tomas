<div class="box-header with-border">
  <h3 class="box-title">Data Kategori Tokoh Masyarakat</h3>

  <div class="box-tools pull-right">
    <!-- <a href="" class="btn btn-default btn-sm"  target="_blank">Print Data Paket</a> -->
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Kategori Tokoh Masyarakat</a>
  </div>
</div>

<form action="form/jenis_tomas/simpan_jenis_tomas.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Kategori Tokoh Masyarakat</h4>
              </div>
              <div class="modal-body">
              <div class="form-group">
                  <label>Nama Kategori Tokoh Masyarakat</label>
                  <input type="text" name="kategori" class="form-control">
              </div> 
              
              
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Kategori Tokoh Masyarakat</button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from kategori_tomas");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Nama Kategori Tokoh Masyarakat</td>
       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['kategori_tomas'] ?></td>
    <td>
      <a href="form/jenis_tomas/hapus_jenis_tomas.php?id=<?php echo $d1['id_kategori'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <a href="?a=edit_jenis_tomas&id=<?php echo $d1['id_kategori'] ?>" class="btn btn-warning btn-xs">Edit</a>    
    </td>
  </tr>
  <?php } ?>
</table>