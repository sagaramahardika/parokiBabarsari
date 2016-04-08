<?php
$this->assign('title', 'Halaman Status Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Baptis', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Edit Status Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

					<?php echo $this->Form->create('Umat', array('controller' => 'umats', 'action' => 'editBaptis','class'=>'form-horizontal', 'role'=>'form')); ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.namabaptis', 'Nama Umat', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false,'disabled' => 'disabled', 'placeholder'=>"Nama Baptis", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statusbaptis','Status Baptis', 'col-md-2 control-label');
				//	echo $this->Form->input('statusbaptis', array('type' => 'checkbox','label'=>false,'id' => 'checkBaptis', 'div'=>array('class'=>'col-md-4')));

					echo $this->Form->input('id_statusbaptis', array(
								'options' => $statusbaptises,
								'label' => false,
								'id' => 'checkBaptis',
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>

				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.namabaptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('namabaptis', array('label'=>false,'id' => 'bapNama', 'placeholder'=>"Nama Baptis", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tmpbaptis', 'Tempat Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tmpbaptis', array('label'=>false,'id' =>'bapTempat', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tglbaptis', 'Tanggal', 'col-md-2 control-label');
					echo $this->Form->input('tglbaptis', array('label' => false,'id' =>'bapTanggal', 'class'=>"form-control input-xlarge",'div'=>array('class'=>'col-md-4'),'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.liberbap', 'Liber Baptis', 'col-md-2 control-label');
					echo $this->Form->input('liberbap', array('label'=>false,'id' =>'bapLiber', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>				
				<div class="form-group">
					<?php
					//echo $this->Form->input('password', array('type' => 'password'));
					echo $this->Form->label('Umat.romobaptis', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('romobaptis', array('label'=>false,'id' =>'bapRomo', 'placeholder'=>"Nama Romo", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));

			  	?>
				</div>
				<p>&nbsp;</p>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbaptis" name="button2id" class="btn btn-danger">Batal</button>
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
