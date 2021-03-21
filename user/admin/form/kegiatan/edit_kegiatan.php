<?php $id=$_GET['id'];
$q=mysqli_query($conn, "SELECT * from kegiatan where id_kegiatan='$id'");
$d=mysqli_fetch_array($q);
 ?>
<div class="box-header with-border">
  <h3 class="box-title">Edit Kegiatan</h3>

  <div class="box-tools pull-right">
    <a href="?a=kegiatan" class="btn btn-info" >Kembali</a>
  </div>
</div>

<br>

<form action="form/kegiatan/simpanedit_kegiatan.php" method="post" enctype="multipart/form-data">
  <div class="col-md-5">
    <img src="form/kegiatan/gambar/<?php echo $d['cover'] ?>" style="width:100%">
  </div>

  <div class="col-md-7">
     <div class="form-group">
                <label>Nama Kegiatan</label>
                <input type="hidden" name="id" class="form-control" value="<?php echo $d['id_kegiatan'] ?>">
                <input type="text" name="judul" class="form-control" value="<?php echo $d['nama_kegiatan'] ?>">
                <input type="hidden" name="fotolama" class="form-control" value="<?php echo $d['cover'] ?>">
              </div> 
     <div class="form-group">
                <label>Tanggal Pelaksanaan</label>
                <input type="date" name="tgl" class="form-control" value="<?php echo $d['tanggal_dilaksanakan'] ?>">
              </div> 
     <div class="form-group">
                <label>Waktu Pelaksanaan</label>
                <input type="time" name="jam" class="form-control" value="<?php echo $d['jam_pelaksanaan'] ?>">
              </div> 
              <div class="form-group">
                <label>Deskripsi Kegiatan</label>
                <textarea class="ckeditor" id="ckeditor" name="desc"><?php echo $d['deskripsi'] ?></textarea>
              </div> 
      
              <div class="form-group">
                  <label>Gambar</label>
                  <input type="file" name="file">
              </div> 

             
              <div class="form-group">
                 <input type="submit" class="btn btn-info" onclick="return confirm('apakah data yang anda masukan sudah benar.?')" value="Simpan Kegiatan">
              </div> 

  </div>
             


              
          
</form>