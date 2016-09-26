<?php


$this->assign('title', 'Halaman Tambah Pengurapan');
?>

<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Pengurapan', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Pengurapan
</h3>


<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Pengurapan</h3>
			</div>
			<div class="panel-body">

			<?php



			echo $this->Form->create('Pengurapan', array('action'=>'tambah','class'=>'form-horizontal', 'role'=>'form','id'=>'formSubmit'));

			?>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Nama Penerima </label></div>
					<?php

					// echo $this->Form->input('Pengurapan.a', array(
          			//liat jsPengurapan fungsi #input_nama keyup;
					echo $this->Form->input('Pengurapan.nama_penerima', array(
								'label' => false,
								'id'=>'nama_penerima',
								'placeholder'=>'Nama Penerima Pengurapan',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Usia</label></div>
					<?php
					echo $this->Form->input('Pengurapan.usia', array(
								'label' => false,
								'id'=>'usia',
								'placeholder'=>'Usia',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								"min" => "0"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Tempat Pengurapan</label></div>
					<?php
					echo $this->Form->input('Pengurapan.tempat', array(
								'label' => false,
								'id'=>'tempat',
								'placeholder'=>'Tempat',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								"min" => "0"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<hr>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pengurapan.tanggal_penerimaan', 'Tanggal Penerimaan', 'col-md-2 control-label');
					echo $this->Form->input('Pengurapan.tanggal_penerimaan', array(
						'label'=>false,
						'class'=>"form-control ",
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0



						));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pengurapan.pelayan_sakramen', 'Pelayan Sakramen', 'col-md-2 control-label');
					echo $this->Form->input('Pengurapan.pelayan_sakramen', array('label'=>false,'id'=>'pelayan_sakramen', 'placeholder'=>"Pelayan Sakramen", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pengurapan.keterangan', 'Keterangan', 'col-md-2 control-label');
					echo $this->Form->input('Pengurapan.keterangan', array('label'=>false,  'class'=>"form-control ", 'div'=>array('class'=>'col-md-4'),'id'=>'keterangan', 'placeholder'=>"Keterangan"));
					?>
					<label style="color:red">*</label>
				</div>

				<?php
					$this->Form->end();
				?>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="buttonaddpeng" name="button1i" class="btn btn-success" >Simpan</button>
					  <button id="buttonbtlpeng" name="buttonbtlper" class="btn btn-danger">Batal</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.row -->
