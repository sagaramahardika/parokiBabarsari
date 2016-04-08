<?php
$this->assign('title', 'Halaman Tambah Krisma');
?>
 
<h3><i class="fa fa-angle-right"></i>
<?php
echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Krisma', array('action'=>'index'), array('escape'=>false)) . ' / ';
?>
<i class="fa fa-pencil"></i> Ubah Data Krisma
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Krisma</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Umat', array('url' => '/krismas/edit/'.$this->request->data['Umat']['id'],'class'=>'form-horizontal', 'role'=>'form','id'=>'formKrisEdit'));
		echo $this->Form->input('Umat.id', array('type' => 'hidden', 'value'=> $this->request->data['Umat']['id']));
			?>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama ', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"nama ",'value'=>$this->request->data['Umat']['nama'], 'disabled'=>'disabled', 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				
				</div>
				<div class="form-group">
					<?php
			
					
				
					echo $this->Form->label('Umat.stskrisma', 'Status Krisma', 'col-md-2 control-label');
					echo $this->Form->input('stskrisma', array(
								'options' => array('1'=>'Belum Krisma','2'=>'Sudah Krisma','0'=>'-'),
								'label' => false,
								'id'=>'stskrismaedit',
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.namakrisma', 'Nama Krisma', 'col-md-2 control-label');
					echo $this->Form->input('namakrisma', array('label'=>false,'id'=>'nmkrisedit', 'placeholder'=>"nama krisma",  'class'=>"form-control input-xlarge editkrisma", 'div'=>array('class'=>'col-md-4')));
					?>
				
				</div>
				
				
				<div class="form-group">
					
					<?php
					echo $this->Form->label('Umat.tmpkrisma', 'Tempat Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tmpkrisma', array('label'=>false,'id'=>'tmpkrisedit', 'placeholder'=>"tempat", 'class'=>"form-control input-xlarge editkrisma", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				
				<div class="form-group">
					<?php
					
					echo $this->Form->label('Umat.tglkrisma', 'Tanggal Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tglkrisma', array(
						'label'=>false,  
						'class'=>"form-control editkrisma", 
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0,
						
						'empty'=>true


						));
					?>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.romokrisma', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('romokrisma', array('label'=>false,  'class'=>"form-control editkrisma", 'div'=>array('class'=>'col-md-4 ')));
					?>
				</div>
				
				
				<p>&nbsp;</p>



				
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="btnsubmitkris" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
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
