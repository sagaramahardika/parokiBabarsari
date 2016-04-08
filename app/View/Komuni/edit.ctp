<?php
$this->assign('title', 'Halaman Edit Komuni');
?>
 
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Komuni', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Ubah Data Komuni
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Komuni</h3>
			</div>
			<div class="panel-body">

			<?php
		echo $this->Form->create('Umat', array('url' => '/komuni/edit/'.$this->request->data['Umat']['id'],'action'=>'tambah','class'=>'form-horizontal', 'role'=>'form','id'=>'formeditkom'));
		echo $this->Form->input('Umat.id', array('type' => 'hidden', 'value'=> $this->request->data['Umat']['id']));
			?>
				
			
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama ', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"nama ",'value'=> $this->request->data['Umat']['nama'], 'disabled'=>'disabled', 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				
				</div>

				
				
				<div class="form-group">
					<?php
			
					
				
					echo $this->Form->label('Umat.stskomuni', 'Status Komuni', 'col-md-2 control-label');
					echo $this->Form->input('stskomuni', array(
								'options' => array('0'=>'Belum Komuni','1'=>'Sudah Komuni','2'=>'-'),
								'label' => false,
								'id'=>'stskomedit',
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>	
				<div class="form-group">
					
					<?php
					echo $this->Form->label('Umat.tmpkomuni', 'Tempat Komuni Pertama', 'col-md-2 control-label');
					echo $this->Form->input('tmpkomuni', array('id'=>'tmpkomedit','label'=>false, 'placeholder'=>"tempat", 'class'=>"form-control input-xlarge editkom", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tglkomuni', 'Tanggal Komuni Pertama', 'col-md-2 control-label');
					echo $this->Form->input('tglkomuni', array(
						'label'=>false,  
						'class'=>"form-control editkom", 
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0,
							'empty'=>true



						));

					
					?>
				</div>
				

				<p>&nbsp;</p>



				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="btnsubmitkom" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbtlkom" name="buttonbtlkom" class="btn btn-danger">Batal</button>
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
