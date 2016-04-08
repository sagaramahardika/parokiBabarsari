<?php
$this->assign('title', 'Halaman Manajemen Pernikahan');
?>

<h3><i class="fa fa-angle-right"></i> 
	<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Pernikahan', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>

	<i class="fa fa-users"></i> Manajemen Data Pernikahan </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			 	
			</div>
		</div>
		

		<div class="row">
			<div class="col-lg-12">
				<section id="unseen">
					<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Data Pernikahan Umat</h3>
			</div>
			<div class="panel-body">
				<table  class="">
					<tr>
						<th>Nama Umat 	</th>
						<td>: <?php echo $nama[$this->request->data['Pernikahan']['umat_id']] ?></td>
					</tr>
					<?php if ($this->request->data['Pernikahan']['pasangan_id']) {
						# code...
						?>
						<tr>
						<th>Nama Pasangan 	</th>
						<td>: <?php echo $nama[$this->request->data['Pernikahan']['pasangan_id']] ?></td>
					</tr>
						<?php 
						}else{
						?>
						<tr>
							<th>Nama Pasangan 	</th>
							<td>: <?php echo $this->request->data['Pernikahan']['nm_pasangan'] ?></td>
						</tr>
						<tr>
							<th>Alamat Pasangan 	</th>
							<td>: <?php echo $this->request->data['Pernikahan']['alamat_pasangan'] ?></td>
						</tr>
						<tr>
							<th>Nomor Telepon Pasangan 	</th>
							<td>: <?php echo $this->request->data['Pernikahan']['telp_pasangan'] ?></td>
						</tr>
						<tr>
							<th>Tempat Lahir Pasangan 	</th>
							<td>: <?php echo $this->request->data['Pernikahan']['tmplhr_pasangan'] ?></td>
						</tr>
						<tr> 
							<th>Tanggal Lahir Pasangan 	</th>
							<td>: <?php echo date('d-m-Y',strtotime($this->request->data['Pernikahan']['tgllhr_pasangan'])); ?></td>
						</tr>
						
						<?php 
						}
					 ?>
						
					<tr>
						<th>Tempat Pernikahan 	</th>
						<td>: <?php echo $this->request->data['Pernikahan']['tmppernikahan'] ?></td>
					</tr>
					<tr>
						<th>Tanggal Pernikahan 	</th>
						<td>: <?php echo date('d-m-Y',strtotime($this->request->data['Pernikahan']['tglpernikahan'])); ?></td>
					</tr>
					<tr>
						<th>Romo Pernikahan 	</th>
						<td>: <?php echo $this->request->data['Pernikahan']['romopernikahan'] ?></td>
					</tr>
					<tr>
						<th>Status Pernikahan 	</th>
						<td>: <?php echo $status[$this->request->data['Umat']['id_statuspernikahan']] ?></td>
					</tr>
					<tr>
						<th>Libermat 	</th>
						<td>: <?php echo $this->request->data['Pernikahan']['libermat'] ?></td>
					</tr>
				</table>

				</div>
				</div>
				</section>
			</div>
		</div>
	</div>
</div>
