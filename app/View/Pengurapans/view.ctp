<?php
$this->assign('title', 'Halaman Manajemen Pengurapan');
?>

<h3><i class="fa fa-angle-right"></i> 
	<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Pengurapan', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>

	<i class="fa fa-users"></i> Manajemen Data Pengurapan </h3>
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
				<h3 class="panel-title">Data Pengurapan Umat</h3>
			</div>
			<div class="panel-body">
				<table  class="">
					<tr>
						<th>Nama Penerima</th>
						<td>: <?php echo $this->request->data['Pengurapan']['nama_penerima'] ?></td>
					</tr>
					<tr>
						<th>Usia</th>
						<td>: <?php echo $this->request->data['Pengurapan']['usia'] ?></td>
					</tr>
					<tr>
						<th>Tempat</th>
						<td>: <?php echo $this->request->data['Pengurapan']['tempat'] ?></td>
					</tr>
					<tr>
						<th>Tanggal Penerimaan</th>
						<td>: <?php echo $this->request->data['Pengurapan']['tanggal_penerimaan'] ?></td>
					</tr>
					<tr>
						<th>Pelayan Sakramen</th>
						<td>: <?php echo $this->request->data['Pengurapan']['pelayan_sakramen'] ?></td>
					</tr>
					<tr>
						<th>Keterangan</th>
						<td>: <?php echo $this->request->data['Pengurapan']['keterangan'] ?></td>
					</tr>
				</table>

				</div>
				</div>
				</section>
			</div>
		</div>
	</div>
</div>
