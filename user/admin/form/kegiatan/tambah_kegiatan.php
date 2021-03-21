<div class="box-header with-border">
  <h3 class="box-title">Tambah Kegiatan</h3>

  <div class="box-tools pull-right">
    <a href="?a=kegiatan" class="btn btn-info" >Kembali</a>
  </div>
</div>

<br>

<form action="form/kegiatan/simpan_kegiatan.php" method="post" enctype="multipart/form-data">

  <div class="col-md-12">
     <div class="form-group">
                <label>Nama Kegiatan</label>
                <input type="text" name="judul" class="form-control">
              </div> 
     <div class="form-group">
                <label>Tanggal Pelaksanaan</label>
                <input type="date" name="tgl" class="form-control">
              </div> 
     <div class="form-group">
                <label>Waktu Pelaksanaan</label>
                <input type="time" name="jam" class="form-control">
              </div> 
              <div class="form-group">
                <label>Deskripsi Kegiatan</label>
                <textarea class="ckeditor" id="ckeditor" name="desc"></textarea>
              </div> 
      
              <div class="form-group">
                  <label>Gambar</label>
                  <input type="file" name="file" required>
              </div> 

             
              <div class="form-group">
                 <input type="submit" class="btn btn-info" onclick="return confirm('apakah data yang anda masukan sudah benar.?')" value="Simpan Kegiatan">
              </div> 

  </div>
             


              
          
</form>