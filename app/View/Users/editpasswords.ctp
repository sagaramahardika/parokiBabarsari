<?php
$this->assign('title', 'Halaman Ubah Password');
?>
<br><br>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Ubah Password </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Ubah Password User</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('User',array('class'=>'form-horizontal', 'controller'=>'users', 'action'=>'editpasswords')); ?>	
				<div class="form-group">
					<?php
					echo $this->Form->label('User.username', 'Username', 'col-md-2 control-label');
					// echo $this->Form->input('username', array('label'=>false,'placeholder'=>"Nama", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
echo $this->Form->label('User.username', $usern, 'col-md-2 control-label');
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.passwordlama', 'Password Lama', 'col-md-2 control-label');
					echo $this->Form->input('passwordlama', array('type'=>'password', 'label'=>false, 'placeholder'=>"Password Lama", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.passwordlama', 'Password Baru', 'col-md-2 control-label');
					echo $this->Form->input('passwordbaru', array('type'=>'password', 'label'=>false, 'placeholder'=>"Password Baru", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.passwordlama', 'Ulang Password Baru', 'col-md-2 control-label');
					echo $this->Form->input('passwordulang', array('type'=>'password','label'=>false, 'placeholder'=>"Ulangi Password Baru", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbatalpass" name="button2id" class="btn btn-danger">Batal</button>
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
