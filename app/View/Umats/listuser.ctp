<?php
$this->assign('title', 'Halaman Manajemen Pengguna');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari akun ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				  <!--<button class="btn btn-default btn-warning" type="button" id="alluserbtn">Semua</button>
				  <button class="btn btn-default btn-success" type="button" id="adduserbtn"><span class="fa fa-user-plus"></span> Tambah Akun</button>-->
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
					<table class="table table-bordered table-striped table-condensed">
						<thead>
						<tr>
							<td></td>
							<td>Nama</td>
							<td>Alamat</td>
							<td>Telp</td>
							<td>Jenis Kelamin</td>
							<td>Tempat Lahir</td>
							<td>Tanggal Lahir</td>
							<td>Golongan Darah</td>
							<td>Hubungan KK</td>		
						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
						foreach($datas as $data) {
							$i++; ?>
						<tr>
							<td>
								<a href="<?php 
								if($usrlvl == 1)
								echo $this->Html->url(array('controller'=>'umats','action'=>'edit', $data['Umat']['id']));
								else
								echo $this->Html->url(array('controller'=>'umats','action'=>'editAdmin', $data['Umat']['id'])); 
								?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
							</td>
								
							<td>
								<?php echo $data['Umat']['nama'] ?>
							</td>
							<td>
								<?php echo $data['Umat']['alamat'] ?>
							</td>
							<td>
								<?php echo $data['Umat']['tlp'] ?>
							</td>
							<td>
								<?php echo $data['Umat']['jenis_kelamin'] ?>
							</td>
							<td>
								<?php echo $data['Umat']['tmplahir'] ?>
							</td>
							<td>
								<?php echo $data['Umat']['tgl_lahir'] ?>
							</td>
							<td>
									<?php echo $data['Umat']['goldarah'] ?>
							<!-- 	<?php
									$idpend = $data['Umat']['id_pendidikan'];
									if($idpend != 0)
										echo $pendidikan[$idpend];
									else
										echo "-";
								?> -->
							</td>
							<td>
								<?php echo $data['Hubkk']['hubkk'] ?>
							</td>
						</tr>
						<?php }
						unset($users);
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