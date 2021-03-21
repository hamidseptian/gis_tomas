
   


<div class="container">
  <h4>Pengaduan Masyarakat</h4>
<br>
<?php 
if (isset($_SESSION['pesan'])) {
  echo $_SESSION['pesan'];
  unset($_SESSION['pesan']);
}
 ?>
<form method="post" action="form/pengaduan/simpan_pengaduan.php">
  <div class="form-group">
                  <label>Nama Pelapor</label>
                  <input type="text" name="nama" class="form-control" required>
              </div> 
             
              <div class="form-group">
                  <label>Kejadian</label>
                  <textarea name="kejadian" class="form-control" required></textarea>
              </div>   
              <div class="form-group">
                  <label>TKP</label>
                  <input type="text" name="tkp" class="form-control" required>
              </div> 
              <div class="form-group">
                  <label>No HP Pelapor</label>
                  <input type="text" name="nohp" class="form-control" required>
              </div> 
              <div class="form-group">
                  <button class="btn btn-info">Simpan</button>
              </div> 
  </form>
              
</div> 