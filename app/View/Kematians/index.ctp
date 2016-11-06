<?php
$this->assign('title','Halaman Manajemen Kematian')

 ?>
<script>
 $(document).ready(function(){

   $("#readKematians").on("click", ".viewSakramen", function(e){
     e.preventDefault();
     $id = $(this).attr('id');
     //alert($id);
     $.ajax({
       url           : "<?php echo $this->webroot; ?>/kematians/findAllKematianSakramen",
       data          : {
         id          : $id
       },
       success       : function(data){
         $json = $.parseJSON(data);
         console.log($json);

         var tbody = document.getElementById('readKematianSakramens');
         tbody.innerHTML = '';

         if($json.length > 0){
            for(i = 0; i<$json.length; i++){
              $namaSakramen = $json[i].KematianSakramen.nama_sakramen;
              $pelayanSakramen = $json[i].KematianSakramen.pelayan_sakramen;
    					$btnDelete = '<button class="btn btn-xs btn-danger" id=' + $json[i].KematianSakramen.id + '><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>';

              var row = tbody.insertRow();

              var colAksi = row.insertCell(0);
              var colNamaSakramen = row.insertCell(1);
              var colPelayanSakramen = row.insertCell(2);

              colNamaSakramen.setAttribute('align', 'center');
              colPelayanSakramen.setAttribute('align', 'center');

              colAksi.innerHTML = $btnDelete;
              colNamaSakramen.innerHTML = $namaSakramen;
              colPelayanSakramen.innerHTML = $pelayanSakramen;
            }
        } else{
          var row = tbody.insertRow();
          var cell = row.insertCell(0);
          cell.setAttribute('colspan', 3);
          cell.setAttribute('align', 'center');
          cell.innerHTML = "Tidak ada Data Sakramen";
        }
       },
       error         : function(){

       }
     });
   })

   $("#readKematianSakramens").on("click", "button", function(e){
     e.preventDefault();
     $row = $(this).parent().parent();
     $id = $(this).attr('id');

     $yesOrNo = confirm("Data ini sudah ada didalam database, apakah anda yakin?");
     if($yesOrNo){
       $.ajax({
         url           : "<?php echo $this->webroot; ?>/kematians/deleteKematianSakramen",
         data          : {
           id          : $id
         },
         success       : function(){
           $($row).remove();
         },
         error         : function(){

         }
       });
    }
   })

 })
</script>


<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Kematian</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'kematians', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
  				<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama umat ...">
  				<span class="input-group-btn">
  				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
  				</span>
			  </div>
        <br>
        <div class="input-group">
			  	<span class="input-group-btn">
			  		<a href="<?php echo $this->Html->url(array('controller' => 'kematians', 'action' => 'newTambah')); ?>" class="btn btn-default btn-success"><span class="fa fa-user-plus"></span> Tambah Data Kematian</a>
			  	</span>
			  </div>
			  	</form>
			  <div class="input-group">
			  	<span class="input-group-btn">
			  		<?php

					$userRole =$this->Session->read('Auth.User.user_level');

			  		if ( $userRole <> 1) {
			  			# code...
			  			?>
			  			<!-- <button class="btn btn-default btn-success" type="button" id="addkrisma"><span class="fa fa-user-plus"></span> Tambah Akun</button> -->

			  			<?php
			  		}
			  		 ?>




			  	</span>

			  </div>

			</div>
			</div>

			<div class="row">
			<div class="col-lg-12">
				<p></p>
			</div>
		</div>
 <div class="row">
			<div class="col-lg-12">
				<section id="unseen">
					<table class="table table-bordered table-striped table-condensed ">
						<thead class="text-center">
  						<tr>
  				 			<td style="width: 6%;"></td>
                <td>Tanggal Kematian</td>
  				 			<td>Nama Diri</td>
                <td>Tempat Pemakaman</td>
                <td>Tanggal Pemakaman</td>
                <td>Nama Ayah</td>
                <td>Nama Ibu</td>
   						</tr>
						</thead>
						<tbody id="readKematians">
						<?php
						$i=0;


							# code...

						foreach($datas as $data) {

							?>

						<tr>
							<td>
								<?php if($userRole <> 1){ ?>
							  <a class="btn btn-xs btn-warning" href="<?php
								echo $this->Html->url(array('controller'=>'kematians','action'=>'newEdit', $data['Kematian']['id']));
								?>"><span class="fa fa-edit" aria-hidden="true"></span></a>
              <a href="#" id="<?php echo $data['Kematian']['id']; ?>" class="btn btn-xs btn-default viewSakramen" data-toggle="modal" data-target="#modalKematianSakramen" ><span class="fa fa-eye" aria-hidden="true" style="color:#337ab7;"></span></a>
 					      <?php } ?>
 				      </td>
              <td>	<?php echo $data['Kematian']['tanggal_meninggal']; ?> </td>
       				<td>	<?php echo ($data['Kematian']['id_umat'] == 0) ? $data['Kematian']['nama_diri'] : $data['Umat']['nama'];?></td>
              <td>	<?php echo $data['Kematian']['tempat_pemakaman']; ?> </td>
              <td>	<?php echo $data['Kematian']['tanggal_pemakaman']; ?> </td>
              <td>	<?php echo $data['Kematian']['nama_ayah']; ?> </td>
              <td>	<?php echo $data['Kematian']['nama_ibu']; ?> </td>

						</tr>






						<?php }

						?>
						</tbody>
					</table>


					<div class="paging">
					<?php
						if ($this->Session->check('search')) {
							$this->Paginator->options['url'] = array_merge($this->passedArgs, array('o' => 'search'));
						}

						echo $this->Paginator->prev(' <i class="fa fa-angle-left"></i> ', array('escape' => false), null, array('escape' => false, 'class'=>'prev disabled')) .
							 $this->Paginator->numbers(array('before' => false, 'after' => false, 'separator' => false)) .
							 $this->Paginator->next(' <i class="fa fa-angle-right"></i> ', array('escape' => false, '#ok'), null, array('escape' => false, 'class' => 'next disabled'))
					?>
					</div>
				</section>
			</div>
		</div>
		</div>
</div>

<div id="modalKematianSakramen" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Data Sakramen</h4>
      </div>
      <form>
        <div class="modal-body">
          <div class="form-group" style="padding: 0% 5%;">
            <table class="table table-bordered table-striped table-condensed">
              <thead class="text-center">
    						<tr>
                  <td style="width: 5%;"></td>
                  <td>Sakramen</td>
    				 			<td>Pelayan Sakramen</td>
     						</tr>
  						</thead>
              <tbody id="readKematianSakramens"></tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </form>
    </div>
  </div>
</div>
