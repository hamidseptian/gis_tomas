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

    <div class="box-body">
      <div id="map"></div>
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
addmarker({ lat: <?php echo $d['lot'] ?>, lng: <?php echo $d['lang'] ?>} , '<b><?php echo $d['nama_polsek'] ?></b><br>', '<?php echo $d['alamat'] ?>', '<?php echo $d['id_polsek'] ?>')

// addmarker({ lat: -6.175040,  lng: 106.827228} , 'Judul', 'Konten');
<?php } ?>

function addmarker(koordinat, polsek, alamat , id_polsek ){

function show_popup(){
   const contentString =
    '<div id="content">' +
    '<div id="siteNotice">' +
    "</div>" +
    '<h3 id="firstHeading" class="firstHeading">'+polsek+'</h3>' +
    '<h5 id="firstHeading" class="firstHeading">'+alamat+'</h5>' +
    '<div id="bodyContent">' +
    "<ul class='kantibmas'>" +
   
    "</ul>" +
    
    "</div>" +
    "</div>";

$.ajax({
    url :"form/maps/anggota_polsek.php?id=" + id_polsek,
    success : function(data){
      $pecah = JSON.parse(data);
        $.each($pecah, function(i, v){
            $('.kantibmas').html('<li>'+'csojs'+'</li>');
        


        });
    },
    error : function(){

    }
  });





    return contentString;
}

            $('#kantibmas').append('<li>'+'csojs'+'</li>');
 

 $.ajax({
    url :"form/maps/anggota_polsek.php?id=" + id_polsek,
    success : function(data){
      $pecah = JSON.parse(data);
        $.each($pecah, function(i, v){
            // $('#kantibmas').append('<li>'+'csojs'+'</li>');
        


        });
    },
    error : function(){

    }
  });




    var marker = new google.maps.Marker({
    position: koordinat, 
    map: map, 
    // icon : ''
  });

      var infowindow = new google.maps.InfoWindow({
    content : show_popup() 
    //,maxWidth: 200

  });

  marker.addListener('click', function(){

    infowindow.open(map, marker);

  })

}

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
 