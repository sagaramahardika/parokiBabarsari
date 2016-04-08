<?php
$this->assign('title', 'Halaman Tambah Krisma');
?>
 <?php/* $urole = $this->Session->read('Auth.User.role');*/ ?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Krisma', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Krisma
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Krisma</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Umat', array('url' => '/krismas/tambah','class'=>'form-horizontal', 'role'=>'form',));
		echo $this->Form->input('Umat.id', array('type' => 'hidden', 'value'=> $this->Session->read('Auth.User.id')));
			?>


				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama ', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"nama ",'value'=> $this->Session->read('Auth.User.nama'), 'disabled'=>'disabled', 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.namakrisma', 'Nama Krisma', 'col-md-2 control-label');
					echo $this->Form->input('namakrisma', array('label'=>false, 'placeholder'=>"nama krisma",  'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				
				</div>
				
				
				<div class="form-group">
					
					<?php
					echo $this->Form->label('Umat.tmpkrisma', 'Tempat Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tmpkrisma', array('label'=>false, 'placeholder'=>"tempat", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tglkrisma', 'Tanggal Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tglkrisma', array(
						'label'=>false,  
						'class'=>"form-control ", 
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0	



						));
					?>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.romokrisma', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('romokrisma', array('label'=>false,  'class'=>"form-control ", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>


				<p>&nbsp;</p>


				<!-- <div class="form-group">
					<?php
			
					
					
				
					/*echo $this->Form->input('Umat.stskrisma', array('type' => 'hidden', 'value'=> true));*/
					?>
				</div> -->

				
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbtlper" name="buttonbtlper" class="btn btn-danger">Batal</button>
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
