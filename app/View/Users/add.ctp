<?php
$this->assign('title', 'Halaman Tambah Pengguna');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('User', array('class'=>'form-horizontal', 'role'=>'form')); ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.username', 'Username', 'col-md-2 control-label');
					echo $this->Form->input('username', array('label'=>false, 'placeholder'=>"username", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.name', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('name', array('label'=>false, 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.role', 'Peran Akun', 'col-md-2 control-label');
					echo $this->Form->input('role', array(
								'options' => $roles,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<p>&nbsp;</p>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.password', 'Password', 'col-md-2 control-label');
					echo $this->Form->input('password', array('label'=>false, 'placeholder'=>"Password", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.password2', 'Ulangi Password', 'col-md-2 control-label');
					echo $this->Form->input('password2', array('type'=>'password', 'label'=>false, 'placeholder'=>"Ketik Ulang Password", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<p>&nbsp;</p>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.aktif', 'Status aktif?', 'col-md-2 control-label');
					?>
					<div class="col-md-4">
					<?php echo $this->Form->input('User.aktif', array('type'=>'hidden', 'value'=>'Non Aktif')); ?>
					<div>
					<?php
					echo $this->Form->input('aktif', array(
								'type'=>'checkbox',
								'label'=>false,
								'value'=>'Aktif',
								'hiddenField' => false,
								'div'=> false
							)
						);
					?>
					</div>
					</div>
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
