<?php
$this->assign('title', 'Halaman Ubah Profil');
?>
<?php $urole = $this->Session->read('Auth.User.role'); ?>
<h3><i class="fa fa-angle-right"></i>
<?php
if ($urole === 'admin') {
echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)) . ' / ';
}
?>
<i class="fa fa-pencil"></i> Update Akun Pengguna
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pembaruan Akun Pengguna</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('User', array('class'=>'form-horizontal', 'role'=>'form', 'type' => 'file'));
			echo $this->Form->input('User.id', array('type' => 'hidden', 'value'=> $this->request->data['User']['id']));
			?>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.username', 'Username', 'col-md-2 control-label');
					echo $this->Form->input('username', array('label'=>false, 'placeholder'=>"username", 'disabled'=>'disabled', 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
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
					if ($this->Session->read('Auth.User.role') === 'admin') {
						echo $this->Form->label('User.role', 'Peran Akun', 'col-md-2 control-label');
						echo $this->Form->input('role', array(
									'options' => $roles,
									'label'=>false,
									'div'=>array('class'=>'col-md-4'),
									'class'=>"form-control input-xlarge"
								)
							 );
					}
					?>
				</div>
				<p>&nbsp;</p>
				<div class="form-group">
					<?php
					if ($this->Session->read('Auth.User.role') === 'admin') {
						echo $this->Form->label('User.aktif', 'Status aktif?', 'col-md-2 control-label');
					?>
					<div class="col-md-4">
					<?php echo $this->Form->input('User.aktif', array('type'=>'hidden', 'value'=>'Non Aktif')); ?>
					<div class="switch switch-square"
						data-on-label="<i class='fa fa-check'></i>"
						data-off-label="<i class='fa fa-times'></i>">
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
					<?php
					}
					?>
				</div>
				<div class="form-group">
					<?php echo $this->Form->label('User.file', 'Profil Picture', 'col-md-2 control-label'); ?>
					<div class="col-md-8">
						<?php
						echo $this->Html->image($this->request->data['User']['filedir'] . $this->request->data['User']['filename'],
												array('id' => 'uploadPreview1'));
						echo $this->Form->input('file', array('type' => 'file',
													'label' => false,
													'div' => array('class' => 'col-md-4'),
													'id' => 'uploadImage1',
													'onchange' => 'PreviewImage(1);'
											));
						?>
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
