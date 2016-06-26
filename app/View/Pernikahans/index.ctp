<?php
	$this->assign('title', 'Halaman Manajemen Pernikahan');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Pernikahan </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">

			  <form action="<?php echo $this->Html->url(array('controller'=>'pernikahans', 'action'=>'index')); ?>" method="post" id="frmCari">
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
				  			<button class="btn btn-default btn-success" type="button" id="addpernikahan"><span class="fa fa-user-plus"></span> Tambah Data Pernikahan</button>
				  		
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
					 			<td>Nama</td>
					 			<td>Nama Pasangan</td>
					 			<td>Tempat Pernikahan</td>
					 			<td>Tanggal Pernikahan</td>
					 			<td>Romo</td>
					 			<td>Status</td>
					 			<td>Libermat</td>
	 						</tr>
						</thead>
						<?php 

						 ?>
						<tbody>
						<?php
							$i=0;
					
							foreach($datas as $data) {

								$idPas = $data['Pernikahan']['pasangan_id'];
						
								 
								$idStatus = $data['Umat']['id_statuspernikahan'];
								/*$idPria = $data['Pernikahan']['paroki_pria'];
					 			$idWanita = $data['Pernikahan']['paroki_wanita'];*/	
					 		
						?>

							<tr>
								<td>
									<?php 
										if($userRole <> 1){ 
									?>
										<!-- 	<button class="btneditper btn-primary dropdown-toggle" idparam='<?php echo $data['Pernikahan']['id']?>' >
										<i class="fa fa-pencil"  >sunting</i>
										</button> -->
										<a href="<?php 

											echo $this->Html->url(array('controller'=>'pernikahans','action'=>'edit', $data['Pernikahan']['id']));


											?>"<span class="fa fa-edit" aria-hidden="true"></span>
										</a>

									<?php 
										} 
									?>
										<a href="<?php 

										echo $this->Html->url(array('controller'=>'pernikahans','action'=>'view', $data['Pernikahan']['id']));

										?>"<span class="fa fa-eye" aria-hidden="true"></span></a>
								</td>
								<td>	
									<?php echo $data['Umat']['nama']; ?>		
								</td>
								<td> 	
									<?php 
										if($idPas == 0) echo $data['Pernikahan']['nm_pasangan'];  
										else echo $namaUmat[$data['Pernikahan']['pasangan_id']]; 
									?>
								</td>
								<td>	
									<?php echo $data['Pernikahan']['tmppernikahan']; ?>
								</td>
								<td>	
									<?php echo date('d-m-Y',strtotime($data['Pernikahan']['tglpernikahan'])) ?>
								</td>
								<td>	
									<?php echo $data['Pernikahan']['romopernikahan']; ?>
								</td>
								<td>	
									<?php
										if ($idStatus == 0) {
											echo $statusPer[1];
										}
										else{
											echo $statusPer[$idStatus]; 
										}
									?>
								</td>

								<td>	
									<?php echo $data['Pernikahan']['libermat']; ?>
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
