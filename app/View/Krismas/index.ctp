<?php 
$this->assign('title','Halaman Pendataan Krisma')

 ?>

<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Krisma</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'krismas', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama umat ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				 
				  
				</span>
			  </div>
			  <br>
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
				 			<td>Nama Umat</td>
				 			<td>Nama Krisma</td>
				 			<td>Tempat Krisma</td>
				 			<td>Tanggal Krisma</td>
				 			<td>Romo</td>
				 			<td>status</td>
 						</tr>
						</thead>
						<?php 



						 ?>
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
							
								echo $this->Html->url(array('controller'=>'krismas','action'=>'edit', $data['Umat']['id']));
								
								
								?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
 					<?php } ?>
 				</td>
 				<td>	<?php echo $data['Umat']['nama']; ?></td>
 				<td>	<?php echo $data['Umat']['namakrisma']; ?></td>
 				<td>	<?php echo $data['Umat']['tmpkrisma']; ?></td>
 				<td>	<?php if ($data['Umat']['tglkrisma'] <> '0000-00-00') {
 					# code...
 					echo date('d-m-Y',strtotime($data['Umat']['tglkrisma']));
 				}  ?></td>
 				<td>	<?php echo $data['Umat']['romokrisma']; ?></td>
 				<td class="text-center">	<?php

 					$status = $data['Umat']['stskrisma'];
 					
 					if ($status == 1) {
 						# code...
 						echo '<i style="color:red" class="fa fa-times"></i>';
 					}elseif($status == 2){
 						echo '<i style="color:green" class="fa fa-check"></i>';
 					}else{
 						echo '<i style="color:blue" class="fa fa-question"></i>';
 					}

 				 ?></td>
 				
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
