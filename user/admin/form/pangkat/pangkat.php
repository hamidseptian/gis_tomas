<div class="box-header with-border">
  <h3 class="box-title">Data Pangkat Kantibmas</h3>

  <div class="box-tools pull-right">
    <!-- <a href="" class="btn btn-default btn-sm"  target="_blank">Print Data Paket</a> -->
    <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#addballroom">Tambah Pangkat Kantibmas</a>
  </div>
</div>

<form action="form/pangkat/simpan_pangkat.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="addballroom">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Tambah Pangkat Kantibmas</h4>
              </div>
              <div class="modal-body">
              <div class="form-group">
                  <label>Nama Pangkat </label>
                  <input type="text" name="pangkat" class="form-control">
              </div> 
              
              
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Data Pangkat </button>
               
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</form>


<hr>
<?php 
  $q1=mysqli_query($conn, "SELECT * from pangkat_kantibmas");
  $no=1;
 ?>

 <table class="table table-striped table-bordered" id="example1">
    <thead>
      <tr>
        <td>No</td>
        
      
        <td>Nama Pangkat Kantibmas</td>
       
        <td>Option</td>
      </tr>
    </thead>
  <?php 
  while ($d1=mysqli_fetch_array($q1)) { 
    ?>
  <tr>
    <td><?php echo $no++ ?></td>
   
  
    <td><?php echo $d1['nama_pangkat'] ?></td>
    <td>
      <a href="form/pangkat/hapus_pangkat.php?id=<?php echo $d1['id_pangkat'] ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah anda yakin.?')">Hapus</a>
      <a href="?a=edit_pangkat&id=<?php echo $d1['id_pangkat'] ?>" class="btn btn-warning btn-xs">Edit</a>    
    </td>
  </tr>
  <?php } ?>
</table>