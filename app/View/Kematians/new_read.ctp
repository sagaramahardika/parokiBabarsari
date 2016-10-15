<?php
$this->assign('title','Halaman Manajemen Kematian')

 ?>

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
				 			<td></td>
              <td>Tanggal Kematian</td>
				 			<td>Nama Diri</td>
              <td>Tempat Pemakaman</td>
              <td>Tanggal Pemakaman</td>
              <td>Nama Ayah</td>
              <td>Nama Ibu</td>
 						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;


							# code...

						foreach($datas as $data) {

							?>

						<tr>
							<td>
								<?php if($userRole <> 1){ ?>
							  <a href="<?php
								echo $this->Html->url(array('controller'=>'kematians','action'=>'newEdit', $data['Kematian']['id']));
								?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
 					      <?php } ?>
 				      </td>
              <td>	<?php echo $data['Kematian']['tanggal_meninggal']; ?> </td>
       				<td>	<?php echo $data['Kematian']['nama_diri']; ?></td>
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
