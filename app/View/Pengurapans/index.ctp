<?php
	$this->assign('title', 'Halaman Manajemen Pengurapan');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Pengurapan </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">

			  <form action="<?php echo $this->Html->url(array('controller'=>'pengurapans', 'action'=>'index')); ?>" method="post" id="frmCari">
				  <div class="input-group">
					<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama umat ...">
					<span class="input-group-btn">
					  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
					  
					</span>
				  </div>
				  <br>
				  <div class="input-group">
				  	<span class="input-group-btn">
				  		<?php 
				  		
							$userRole =$this->Session->read('Auth.User.user_level');
					  		if ($userRole == 2) {
					  			# code...
			  				?>
				  			<button class="btn btn-default btn-success" type="button" id="addpengurapan"><span class="fa fa-user-plus"></span> Tambah Data Pengurapan</button>
				  		
						<?php 
							}
						?>	
				  	</span>
				  </div>			  	
			  </form>
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
					 			<td>Kode Stasi</td>
					 			<td>Nama Penerima</td>
					 			<td>Usia</td>
					 			<td>Tempat</td>
					 			<td>Tanggal Penerimaan</td>
					 			<td>Pelayan Sakramen</td>
					 			<td>Keterangan</td>
	 						</tr>
						</thead>
						<?php 

						 ?>
						<tbody>
						<?php
							$i=0;
							foreach($datas as $data) {
						?>

							<tr>
								<td>
									<?php 
										if($userRole <> 1){ 
										?>										
										</button> 
										<a href="<?php 

											echo $this->Html->url(array('controller'=>'pengurapans','action'=>'edit', $data['Pengurapan']['id']));


											?>"<span class="fa fa-pencil" aria-hidden="true"></span>
										</a>

										<?php 
										} 
										?>
										<a href="<?php 

										echo $this->Html->url(array('controller'=>'pengurapans','action'=>'view', $data['Pengurapan']['id']));

										?>"<span class="fa fa-eye" aria-hidden="true"></span></a>
								</td>
								<td>	
									<?php echo $data['Pengurapan']['kode_stasi']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['nama_penerima']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['usia']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['tempat']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['tanggal_penerimaan']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['pelayan_sakramen']; ?>		
								</td>
								<td>	
									<?php echo $data['Pengurapan']['keterangan']; ?>		
								</td>
							</tr>
						<?php 	
							$i++; }
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
