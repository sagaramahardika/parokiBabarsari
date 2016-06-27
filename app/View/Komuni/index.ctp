<?php
$this->assign('title', 'Halaman Manajemen Komuni');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Komuni </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'komuni', 'action'=>'index')); ?>" method="post" id="frmCari">
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
					echo 's' ;
			  		if ( $userRole <> 1) {
			  			# code...
			  			?>
			  			<!-- <button class="btn btn-default btn-success" type="button" id="addkomuni"><span class="fa fa-user-plus"></span> Tambah Data</button> -->
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
                <td>Kode Stasi</td>
                <td>Liber</td>
                <td>No Urut</td>
					 			<td>Tempat Komuni</td>
					 			<td>Tanggal Komuni</td>
					 			<!--<td>Status Komuni</td>-->

 						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
            //print_r($datas);
						foreach($datas as $data) {
						?>
              <tr>
              <td>
              <?php if($userRole <> 1){ ?>
              <a href="<?php
                echo $this->Html->url(array('controller'=>'komuni','action'=>'edit', $data['Umat']['id']));
              ?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
 					    <?php } ?>

       				</td>
       				<td>	<?php echo $data['Umat']['nama']; ?></td>
       				<td>	<?php echo $data['Komuni']['kode_stasi']; ?></td>
              <td>	<?php echo $data['Komuni']['id_liber']; ?></td>
              <td>	<?php echo $data['Komuni']['no_urut']; ?></td>
              <td>	<?php echo $data['Komuni']['tempat']; ?></td>
       				<td>	<?php if ($data['Komuni']['tanggal'] <> '0000-00-00') {
       					# code...
       					echo date('d-m-Y',strtotime($data['Komuni']['tanggal']));
       				}  ?></td>
       				<!--<td class="text-center">	<?php
       				/*$status = $data['Umat']['stskomuni'];
       				if ($status == 1) {
       					echo '<i style="color:green" class="fa fa-check"></i>';
       					# code...
       				}elseif ($status == 0){
       					echo '<i style="color:red" class="fa fa-times"></i>';
       				}else{
       					echo '<i style="color:blue" class="fa fa-question"></i>';
       				}
 				      */?></td>
            -->
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
