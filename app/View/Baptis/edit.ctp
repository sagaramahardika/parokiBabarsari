<?php
$this->assign('title', 'Halaman Status Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'edit','class'=>'form-horizontal', 'role'=>'form')); ?>
			
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.sts_baptis','Status Baptis', 'col-md-2 control-label');
					echo $this->Form->input('sts_baptis', array('type' => 'checkbox','label'=>false,'id' => 'checkBaptis', 'div'=>array('class'=>'col-md-4')));?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_baptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('nama_baptis', array('label'=>false,'id' => 'bapNama', 'placeholder'=>"Nama Baptis", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat', 'Tempat Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tempat', array('label'=>false,'id' =>'bapTempat', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.liberbap', 'Tempat Baptis', 'col-md-2 control-label');
					echo $this->Form->input('liberbap', array('label'=>false,'id' =>'bapTempat', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tanggal', 'Tanggal', 'col-md-2 control-label');
					echo $this->Form->input('tanggal', array('label' => false,'id' =>'bapTanggal', 'class'=>"form-control input-xlarge",'div'=>array('class'=>'col-md-4', 'id' => 'datepicker'),'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0 ));
					?>
				</div>
				<p>&nbsp;</p>
				<div class="form-group">
					<?php
					//echo $this->Form->input('password', array('type' => 'password'));
					echo $this->Form->label('Baptis.romo', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('romo', array('label'=>false,'id' =>'bapRomo', 'placeholder'=>"Nama Romo", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));

			  	?>
				</div>
				
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="button2id" name="button2id" class="btn btn-danger">Batal</button>
					</div>
				</div>
			  <?php
			  echo $this->Form->end();
			  ?>

			</div>
		</div>
	</div>
</div>
<!-- /.row -->
