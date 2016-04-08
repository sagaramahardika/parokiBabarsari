
<?php
$this->assign('title', 'Kode Aktivasi Umat');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Kode Aktivasi Umat </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'lihataktivasi')); ?>" method="post" id="frmCariAktif">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari nama jemaat....">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduseraktifbtn">Cari</button>
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
			<td>Kode Umat</td>
			<td>Kode Aktivasi</td>
			<td>Nama Umat</td>
			<td>Status Aktivasi</td>
		</tr>

	</thead>
	<tbody>
	<?php foreach($datas as $data) { ?>

<tr>
	
	
	<td>
		<?php echo $data['Kodeumataktif']['kodeumat']; ?>
	</td>
	<td>
		<?php echo $data['Kodeumataktif']['kodeaktivasi']; ?>
	</td>
	<td>
		<?php echo $kodeu[$data['Kodeumataktif']['kodeumat']]; ?>
	</td>
	<td>
		<?php 
		if($data['Kodeumataktif']['aktif'] == 1){
		?>
			<center><span id="gambaraktif" class="fa fa-check fa-2x" aria-hidden="true" style= "color:#00FF00"></span></center>
		<?php } else{ ?>
			<center><span id="gambaraktif" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#FF0000"></span></center>
		<?php } ?>
	</td>
	
</tr>
	<?php } ?>

	</tbody>
</table>
<div class="paging">
					<?php
		echo $this->Paginator->prev(' << ',array('escape' => false), null, array('escape'=>'false', 'class'=>'prev disabled')).$this->Paginator->numbers(array('before'=>false, 'after'=>false, 'separator'=>false)).$this->Paginator->next(' >> ', array('escape' => false), null, array('escape'=>false, 'class'=>'next disabled'));
	?>
					</div>
</section>
</div></div>