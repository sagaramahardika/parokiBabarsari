<?php
$this->assign('title', 'Halaman Ubah Password');
?>
<?php $urole = $this->Session->read('Auth.User.role'); ?>
<h3><i class="fa fa-angle-right"></i>
<?php
if ($urole === 'admin') {
echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)) . ' / ';
}
?>
	<i class="fa fa-key"></i> Update Akun Pengguna
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pembaruan Akun Pengguna</h3>
			</div>
			<div class="panel-body">

				<?php
				echo $this->Form->create('User', array('class'=>'form-horizontal', 'role'=>'form'));
				echo $this->Form->input('User.id', array('type' => 'hidden', 'value'=> $this->request->data['User']['id']));
				?>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.username', 'Username', 'col-md-2 control-label');
					echo $this->Form->input('username', array('label'=>false, 'placeholder'=>"username", 'class'=>"form-control input-xlarge", 'disabled'=>'disabled', 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.name', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('name', array('label'=>false, 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'disabled'=>'disabled', 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<?php if ($this->Session->read('Auth.User.role') === 'admin') { ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.role', 'Peran Akun', 'col-md-2 control-label');
					echo $this->Form->input('role', array(
								'options' => $roles,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'disabled'=>'disabled',
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<?php } ?>

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
