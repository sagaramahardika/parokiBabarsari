<?php
$this->assign('title', 'Halaman Baptis Umat');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Manajemen Data Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'baptis')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari akun ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				 <!-- <button class="btn btn-default btn-warning" type="button" id="alluserbtn">Semua</button>
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
							<?php if($usrlvl!=1){ ?>
							<th></th>
							<?php }?>
							<th>Kode Stasi</th>
							<th>No Urut</th>
							<th>Nama Lengkap</th>
							<th>Nama Baptis</th>
							<th>Gender</th>
							<th>Tempat Lahir</th>
							<th>Tanggal Lahir</th>
              <th>Tempat Meninggal</th>
              <th>Tanggal Meninggal</th>
              <th>Tempat Dimakamkan</th>
              <th>Tanggal Dimakamkan</th>
              <th>Nama Saudara</th>
              <th>Hubungan Persaudaraan</th>
              <th>Sakramen Terakhir</th>
              <th>Pemberi Sakramen</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$i=0;
						foreach($datas as $user) {
							$i++; ?>
						<tr>
							<?php if($usrlvl!=1){ ?>
							<td>
								<a href="<?php
								echo $this->Html->url(array('controller'=>'umats','action'=>'editBaptis', $user['Kematian']['id_kematian']));
								?>"<span class="fa fa-edit" aria-hidden="true"></span></a>
							</td>
							<?php } ?>
							<td><?php echo $user['Kematian']['kode_stasi'] ?> </td>
							<td><?php echo $user['Kematian']['no_urut'] ?> </td>
							<td><?php echo $user['Kematian']['nama_lengkap'] ?> </td>
							<td><?php echo $user['Kematian']['nama_baptis'] ?></td>
							<td><?php echo $user['Kematian']['gender'] ?></td>
							<td><?php echo $user['Kematian']['tempat_lahir'] ?></td>
							<td><?php echo $user['Kematian']['tanggal_lahir'] ?></td>
              <td><?php echo $user['Kematian']['tempat_meninggal'] ?></td>
              <td><?php echo $user['Kematian']['tanggal_meninggal'] ?></td>
              <td><?php echo $user['Kematian']['tempat_dimakamkan'] ?></td>
              <td><?php echo $user['Kematian']['tanggal_dimakamkan'] ?></td>
              <td><?php echo $user['Kematian']['nama_saudara'] ?></td>
              <td><?php echo $user['Kematian']['hubungan_persaudaraan'] ?></td>
              <td><?php echo $user['Kematian']['sakramen_terakhir'] ?></td>
              <td><?php echo $user['Kematian']['pemberi_sakramen'] ?></td>
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
