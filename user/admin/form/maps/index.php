<?php 
  $qtengah = mysqli_query($conn, "SELECT * from tengah_map where id='0'");
  $dtengah = mysqli_fetch_array($qtengah);
 ?>


    <style>
       /* Set the size of the div element that contains the map */
      #map {
        height: 400px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
       }
    </style>

    <div class="box-header with-border">
      <h3 class="box-title">Pemetaan Lokasi Polsek</h3>
      <div class="pull-right">
        <a href="#" class="btn btn-info btn-sm"  data-toggle="modal" data-target="#tengah">Ganti Posisi Tengah</a>
      </div>
    </div>
    <div class="box-body">
      <div id="map"></div>
    </div>



 

<form action="form/maps/ubahposisi.php" method="post" enctype="multipart/form-data">
<div class="modal fade" id="tengah">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Ganti Posisi Tengah</h4>
              </div>
              <div class="modal-body">
              <div class="form-group">
                  <label>Latitude</label>
                  <input type="text" name="lat" class="form-control" value="<?php echo $dtengah['lot'] ?>">
              </div> 
              <div class="form-group">
                  <label>Longitude</label>
                  <input type="text" name="long" class="form-control" value="<?php echo $dtengah['lang'] ?>">
              </div> 
              <div class="form-group">
                  <label>Zoom</label>
                  <input type="number" name="zoom" class="form-control" maxlength="2" value="<?php echo $dtengah['zoom'] ?>">
              </div> 
              
              
             
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan Posisi Tengah </button>
               
              </div>
            </div>
          </div>
        </div>
</form>


  <script defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjDbd3vDLLI3tTy-HHmsd0yf2mdXa_7Eg&callback=initMap">
    </script>
    <script>
// Initialize and add the map
function initMap() {

  var tengahmap = { lat : <?php echo $dtengah['lot'] ?>, lng: <?php echo $dtengah['lang'] ?>}

// pengaturan posisi tengah
  var option ={
    zoom : <?php echo $dtengah['zoom'] ?> , 
    center : tengahmap
  }


// buat map baru
  var map = new google.maps.Map(
      document.getElementById('map'), option);
  
  //menambahkan merker
/*
  var marker = new google.maps.Marker({
    position: tengahmap, 
    map: map, 
    // icon : ''
  });

  var infowindow = new google.maps.InfoWindow({
    content :'tes'
  });

  marker.addListener('click', function(){
    infowindow.open(map, marker);
  })
*/

<?php 
$q = mysqli_query($conn, "SELECT * from polsek");
while ($d=mysqli_fetch_array($q)) {

  
 ?>
addmarker({ lat: <?php echo $d['lot'] ?>, lng: <?php echo $d['lang'] ?>} , '<b><?php echo $d['nama_polsek'] ?></b><br>', '<?php echo $d['alamat'] ?>', '<?php echo $d['id_polsek'] ?>', '<?php echo $d['id_kecamatan'] ?>')

// addmarker({ lat: -6.175040,  lng: 106.827228} , 'Judul', 'Konten');
<?php } ?>

function addmarker(koordinat, polsek, alamat , id_polsek , id_kecamatan){



    var marker = new google.maps.Marker({
    position: koordinat, 
    map: map, 
    // icon : ''
  });



  marker.addListener('click', function(){
    detail_map(id_polsek, polsek, alamat);
    detail_tomas(id_kecamatan);
    

  })

}

}



function detail_map(id, polsek, alamat){
  $('#detail_map').modal('show');
  $('#nama_polsek').html(polsek);
  $('#alamat_polsek').html(alamat);

  $.ajax({
    url : 'form/maps/anggota_polsek.php?id=' + id,
    success: function(data){
      var pecah = JSON.parse(data);
      if (pecah.jumlahdata==0) {
        $('#data_kantibmas').hide();
        
        $('#pesan').html('<div class="alert alert-info">Tidak ada data kantibmas yang bertugas di '+ polsek+'</div>');

      }else{
        $('#data_kantibmas').show();
        $('#list_kantibmas').html('');
        $('#pesan').html('');
        var no = 0;
        $.each(pecah.data, function(k,v){
          no++;
          $('#list_kantibmas').append(`<tr>` + 
            '<td>' + no + '</td>' +
            '<td>' +v.nama+ '</td>' +
            '<td>' +v.pangkat+ '</td>' +
            '<td>' +v.nrp+ '</td>' +
            '<td>' +v.kep_pengangkatan+ '</td>' +
            `</tr>`
            );

        });
        
      }
      console.log(pecah)
    }, 
    error : function(){

    }
  });
}
  



function detail_tomas(id){
  $('#info_lokasi').hide();
  $('#detail_map_tomas').attr('style','');

  $.ajax({
    url : 'form/maps/anggota_tomas.php?id=' + id,
    success: function(data){
      console.log(data);
      var pecah = JSON.parse(data); 
        $('#tomas_judul').html("Tokoh Masyarakat Kecamatan " + pecah.kecamatan);
      if (pecah.jumlahdata==0) {
        $('#data_tomas').hide();
        
        $('#pesan').html('<div class="alert alert-info">Tidak ada data tokoh masyarakat di kecamatan'+ pecah.kecamatan+'</div>');

      }else{
        $('#data_tomas').show();
        $('#list_tomas').html('');
        $('#pesan_tomas').html('');
        var no = 0;
        $.each(pecah.data, function(k,v){
          no++;
          $('#list_tomas').append(`<tr>` + 
            '<td>' + no + '</td>' +
            '<td>' +v.kategori+ '</td>' +
            '<td>' +v.nama+ '</td>' +
            '<td>' +v.alamat+ '</td>' +
            '<td>' +v.pekerjaan+ '</td>' +
            '<td>' +v.nohp+ '</td>' +
            `</tr>`
            );

        });
        
      }
      console.log(pecah)
    }, 
    error : function(){

    }
  });
}
    </script>




<div class="modal fade" id="detail_map">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">Identitas Maps</h4>
        </div>
        <div class="modal-body">
        <div class="form-group">
          <table class="table">
            <tr>
              <td>Polsek</td>
              <td>:</td>
              <td id="nama_polsek"></td>
            </tr>
            <tr>
              <td>Alamat</td>
              <td>:</td>
              <td id="alamat_polsek"></td>
            </tr>
          </table>
        </div> 
        <div class="form-group">
          <label>Kantibmas yang bertugas</label>
          <div id="show_kantibmas" style="max-height: 400px; width:100%; overflow-y: scroll;">
            <div id="pesan"></div>
            <table class="table" id="data_kantibmas">
             <thead>
               <tr>
                 <td>No</td>
                 <td>Nama</td>
                 <td>Pangkat</td>
                 <td>NRP</td>
                 <td>Kep Pengangkatan</td>
               </tr>
             </thead>
             <tbody id="list_kantibmas">
               
             </tbody>
            </table>
          </div>
        </div> 

        <div class="form-group">
         



          <div id="detail_map_tomas" style="display: none;" >
            <h5 id="tomas_judul"></h5>
                 <br>
                  <div class="form-group">
                    
                    <div id="show_tomas" style="max-height: 400px; width:100%; overflow-y: scroll;">
                      <div id="pesan_tomas"></div>
                      <table class="table" id="data_tomas">
                       <thead>
                         <tr>
                           <td>No</td>
                           <td>Kategori Tokoh</td>
                           <td>Nama</td>
                           <td>Alamat</td>
                           <td>Pekerjaan</td>
                           <td>No HP</td>
                         </tr>
                       </thead>
                       <tbody id="list_tomas">
                         
                       </tbody>
                      </table>
                    </div>
                  </div> 
            </div>
        </div> 



      
        
        
       
      </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
       
         
        </div>
      </div>
    </div>
  </div>
   
  