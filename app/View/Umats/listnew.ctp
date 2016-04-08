<br><br>
<?php
$this->assign('title', 'Halaman Manajemen Umat');
?>
<h3><i class="fa fa-angle-right"></i> <i class="fa fa-users"></i> Daftar Member Sign Up </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="row">
			<div class="col-lg-6">
			  <form action="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'listnew')); ?>" method="post" id="frmCari">
			  <div class="input-group">
				<input type="text" class="form-control" name="data[cari]" placeholder="Cari akun ...">
				<span class="input-group-btn">
				  <button class="btn btn-default" type="button" id="finduserbtn">Cari</button>
				  <button class="btn btn-default btn-warning" type="button" id="alluserbtn">Semua</button>
				  <a href="<?php echo $this->Html->url(array('controller'=>'umats','action'=>'signup')); ?>"<button class="btn btn-default btn-success" type="button" id="adduserbtn"><span class="fa fa-user-plus"></span>Tambah</button></a>

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
		</tr>

	</thead>
	<tbody>
	<?php foreach($datas as $data) { ?>

<tr>
<td>

<?php
echo ' '.$this->Form->postlink('<span class="fa fa-check"></span>',array('controller'=>'umats','action'=>'terima',$data['Umat']['id']),array('escape'=>false),array('confirm'=>'Yakin ingin hapus?'));
?>
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
	</td>
</tr>
	<?php } ?>

	</tbody>
</table>
</section>
</div></div>