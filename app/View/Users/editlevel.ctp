<?php
$this->assign('title', 'Halaman Level');
?>
<br><br>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Edit Level </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Edit Level</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('User',array('class'=>'form-horizontal', 'controller'=>'umats', 'action'=>'editlevel')); ?>	
				<div class="form-group">
					<?php
					echo $this->Form->label('User.nama', 'Username', 'col-md-2 control-label');
					//echo $this->Form->input('username', array('label'=>false, 'disabled' => 'disabled','placeholder'=>"Nama", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					echo $this->Form->label('User.username', $usern, 'col-md-2 control-label');

					?>
				</div>
				

				<div class="form-group">
					<?php
					echo $this->Form->label('User.level', 'Level', 'col-md-2 control-label');
					echo $this->Form->input('user_level', array(
								'options' => $level,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>



				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbataladmin" name="button2id" class="btn btn-danger">Batal</button>
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
