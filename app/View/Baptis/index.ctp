<?php
$this->assign('title', 'Halaman Manajemen Komuni');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Baptis</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'index')); ?>" method="post" id="frmCari">
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
							<td>Nama Umat</td>
							<td>Nama Baptis</td>
							<td>Tanggal</td>
							<td>Kode Stasi</td>
							<td>Liber Baptis</td>
							<td>Tempat</td>
							<td>Kota</td>
							<td>Romo</td>
							<td>Wali</td>
							<td>Status Baptis</td>
							<td>Catatan</td>
 						</tr>
						</thead>
						<tbody>
							<?php foreach($datas as $data){?>
							<tr>
								<td>
									<button class="btnedit" idparam="<?php echo $data['Baptis']['id_umat'] ?>">
										<i class="fa fa-pencil"></i>
									</button></td>
								</td>
								<td><?php echo $data['Umat']['nama']; ?></td>
								<td><?php echo $data['Baptis']['nama_baptis'] ?></td>
								<td> <?php echo $data['Baptis']['tanggal'] ?></td>
								<td><?php echo $data['Baptis']['kode_stasi'] ?></td>
								<td><?php echo $data['Baptis']['liberbap'] ?></td>
								<td><?php echo $data['Baptis']['tempat'] ?></td>
								<td><?php echo $data['Baptis']['kota'] ?></td>
								<td><?php echo $data['Baptis']['romo'] ?></td>
								<td><?php echo $data['Baptis']['wali_baptis'] ?></td>
								<td><?php echo $data['Statusbaptis']['status'] ?></td>
								<td><?php echo $data['Baptis']['catatan'] ?></td>
							</tr>
							<?php } ?>
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
