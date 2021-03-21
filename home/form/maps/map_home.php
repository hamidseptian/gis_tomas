<?php 
  $qtengah = mysqli_query($conn, "SELECT * from tengah_map where id='0'");
  $dtengah = mysqli_fetch_array($qtengah);
 ?>


    <style>
       /* Set the size of the div element that contains the map */
      #map {
        height: 600px;  /* The height is 400 pixels */
        width: 100%;  /* The width is the width of the web page */
       }
    </style>
<br>
<div class="col-md-12">
<h4>Peta Pesisir Selatan</h4>
    <div id="map"></div>
    <br>
</div>
<div class="col-md-12">
<h4>Keterangan Titik Lokasi</h4>
<br>





<div id="info_lokasi">
  <div class="alert alert-info">
    Silahkan Klik Marker untuk menampilkan identitas lokasi
  </div>
</div>

<div class="col-lg-12">
  <div id="detail_map" style="display: none" >
    <h5>Polsek </h5>
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
              <div id="pesan"></div>
            <div id="show_kantibmas" style="height: 400px; width:100%; overflow: scroll;">
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
    </div>
    <br>
    <hr>
    <br>
  </div>
<div class="col-lg-12">
  <div id="detail_map_tomas" style="display: none;" >
    <h5 id="tomas_judul"></h5>
         <br>
          <div class="form-group">
            
            <div id="show_tomas" style="height: 400px; width:100%; overflow: scroll;">
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
// addmarker({ lat: <?php echo $d['lot'] ?>, lng: <?php echo $d['lang'] ?>} , '<b><?php echo $d['nama_polsek'] ?></b><br>', '<?php echo $d['alamat'] ?>')

addmarker({ lat: <?php echo $d['lot'] ?>, lng: <?php echo $d['lang'] ?>} , '<b><?php echo $d['nama_polsek'] ?></b><br>', '<?php echo $d['alamat'] ?>', '<?php echo $d['id_polsek'] ?>', '<?php echo $d['id_kecamatan'] ?>')
<?php } ?>

function addmarker(koordinat, polsek, alamat, id_polsek , id_kecamatan){
    var marker = new google.maps.Marker({
    position: koordinat, 
    map: map, 
    // icon : ''
  });

      var infowindow = new google.maps.InfoWindow({
    content : polsek + alamat
    //,maxWidth: 200

  });

  marker.addListener('click', function(){
    detail_map(id_polsek, polsek, alamat);
    detail_tomas(id_kecamatan);

  })

}

}



function detail_map(id, polsek, alamat){
  $('#info_lokasi').hide();
  $('#detail_map').attr('style','');
  $('#nama_polsek').html(polsek);
  $('#alamat_polsek').html(alamat);

  $.ajax({
    url : 'form/maps/anggota_polsek.php?id=' + id,
    success: function(data){

      var pecah = JSON.parse(data);
      if (pecah.jumlahdata==0) {
        $('#data_kantibmas').hide();
        
        $('#pesan').html('<div class="alert alert-info">Tidak ada data kantibmas yang bertugas di '+ polsek+'</div>');
        $('#show_kantibmas').attr('style','display:none');

      }else{
        $('#show_kantibmas').attr('style','height: 400px; width:100%; overflow: scroll;');
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
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjDbd3vDLLI3tTy-HHmsd0yf2mdXa_7Eg&callback=initMap">
    </script>
 