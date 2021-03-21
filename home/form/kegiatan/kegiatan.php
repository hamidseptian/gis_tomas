<?php 

$q = mysqli_query($conn, "SELECT * from kegiatan");
while($d=mysqli_fetch_array($q)){
 ?>
	<div class="row" style="margin-bottom:20px">
						<div class="col-lg-4 col-sm-6">
							<div class="product-item">
								<div class="pi-pic">
									<div class="tag-sale">ON SALE</div>
									<img src="../user/admin/form/kegiatan/gambar/<?php echo $d['cover'] ?>" alt="">
								
								</div>
								
							</div>
						</div>
						<div class="col-lg-8 col-sm-12">
							<div class="product-item">
								
								
									<h4 style="margin-top:10px"><?php echo $d['nama_kegiatan'] ?></h4>
									<p><?php echo substr($d['deskripsi'], 0, 200); ?>....</p>
									
								
							</div>
							<a href="?m=detail_kegiatan&idk=<?php echo $d['id_kegiatan'] ?>" class="btn btn-info btn-sm">Lihat Selengkapnya</a>
						</div>
						<div class="clearfix"></div>
					</div>

						<?php } ?>