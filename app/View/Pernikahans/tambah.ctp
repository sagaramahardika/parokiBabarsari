<?php


$this->assign('title', 'Halaman Tambah Pernikahan');
?>

<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Pernikahan', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Pernikahan
</h3>


<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Pernikahan</h3>
			</div>
			<div class="panel-body">

			<?php



			echo $this->Form->create('Pernikahan', array('action'=>'tambah','class'=>'form-horizontal', 'role'=>'form','id'=>'formSubmit'));

			?>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Kode Stasi </label></div>
					<?php

					// echo $this->Form->input('Pernikahan.a', array(
          			//liat jspernikahan fungsi #input_nama keyup;
					echo $this->Form->input('Pernikahan.kode_stasi', array(
								'label' => false,
								'id'=>'kdstasi',
								'placeholder'=>'Kode Stasi',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								"min" => "0",
								'value' => 07300
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Kode LM </label></div>
					<?php
					echo $this->Form->input('Pernikahan.kode_LM', array(
								'label' => false,
								'id'=>'kdLM',
								'placeholder'=>'Kode LM',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								"min" => "0"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>No</label></div>
					<?php
					echo $this->Form->input('Pernikahan.no', array(
								'label' => false,
								'id'=>'noLM',
								'placeholder'=>'No',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								"min" => "0"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Halaman</label></div>
					<?php
					echo $this->Form->input('Pernikahan.halaman', array(
								'label' => false,
								'id'=>'halaman',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								'placeholder'=>'Halaman Buku',
								"min" => "0"
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-2 control-label"><label>Nama Umat </label></div>

					<div class="col-md-4">
						<input name="input_umat" id="input_nama" placeholder="Nama Umat" class="form-control input-xlarge ui-autocomplete-input" type="text" autocomplete="off">
					</div>
<!-- 
					<div class="col-md-4">
						<input name="data[Pernikahan][umat_id]" id="form_id_umat" placeholder="ID Umat" class="form-control input-xlarge ui-autocomplete-input" type="text" autocomplete="off">
					</div> -->

					<?php

					// echo $this->Form->input('Pernikahan.waton',array(
					// 	'name'=>'input_umat',
					// 	'label'=> false,
					// 	'id'=>'input_nama',
					// 	'placeholder'=>'Nama Umat',
					// 	'class'=>"form-control input-xlarge",
					// 	'div'=>array('class'=>'col-md-4')
					// 	));


					echo $this->Form->input('Pernikahan.umat_id', array(
						'id'=>'form_id_umat','type'=>'hidden'
						));
					?>
					<div class="col-md-2">
						<i class="fa fa-times fa-2x" style="color:red" id="cek_umat" cek="false"></i>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="row">
						<div class="col-md-6">
							<div class="col-md-1"></div>
						<div class="col-md-10">
							<h4 >Silahkan pilih daerah pasangan Umat :</h4>
						</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="col-md-1"></div>
						<div class="col-md-4">
							<?php $options = array('ling' => '&nbsp;Lingkungan', 'wil' => '&nbsp;Wilayah','par' => '&nbsp;Paroki','lain' => '&nbsp;Lainnya');
								$attributes = array('id'=>'pil', 'name'=>'radioPil' , 'legend' => false,  'separator' => '</br>',);
								echo $this->Form->radio('pilihan', $options, $attributes); ?>
						</div>
					</div>
				</div>
				<br>
				<div class="row" id='nama_pasangan_dalam' >
					<div class="col-md-2 control-label">
						<label>Nama Pasangan</label>
					</div>
					<?php
					
					
					echo $this->Form->input(null, array('name'=>'input_pasangan', 'label'=>false,'type'=>'text', 'id'=>'lingkungan_nama', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control  input-xlarge", 'div'=>array('class'=>'col-md-4'),'gender'=>'','id_umat'=>'','type_find'=>''));
					echo $this->Form->input('Pernikahan.pasangan_id', array('id'=>'form_id_pasangan','type'=>'hidden'));
					?>
					<div class="col-md-2">
						<i class="fa fa-times fa-2x" style="color:red" id="cek_pasangan" cek="false"></i>
					</div>
				</div>
				<br>
				<div class="row" id="form_pasangan_lain">
					<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.nm_pasangan', 'Nama Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.nm_pasangan', array('id'=>'nm_pas_luar','label'=>false, 'placeholder'=>"Nama aPsangan",  'class'=>"form-control input-xlarge form_pasangan", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.alamat_pasangan', 'Alamat Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.alamat_pasangan', array('label'=>false,'id'=>'alamat_pasangan_luar', 'placeholder'=>"Alamat",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.telp_pasangan', 'Nomor telpon Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.telp_pasangan', array('label'=>false,'id'=>'nama_pasangan_telp', 'placeholder'=>"telepon",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tmplhr_pasangan', 'Tempat lahir Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tmplhr_pasangan', array('label'=>false,'id'=>'tmplahir_pasangan_luar', 'placeholder'=>"tempat lahir",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tgllhr_pasangan', 'Tanggal lahir Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tgllhr_pasangan', array('label'=>false,'id'=>'tgllhr_pasangan_luar', 'placeholder'=>"nama",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4'),'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0));
					?>
				<label style="color:red">*</label>
				</div>
				</div>

				<hr>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tglpernikahan', 'Tanggal Pernikahan', 'col-md-2 control-label');
					// echo $this->Form->input('Pernikahan.tglpernikahan', array(
					// 	'label'=>false,
					// 	'class'=>"form-control ",
					// 	'div'=>array('class'=>'col-md-4'),
					// 	'dateFormat' => 'DMY',
					// 	'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0



					// 	));
					?>
					<div class="col-md-4">
			            <input type="text" name="data[Pernikahan][tglpernikahan]" class="form-control datepicker input-xlarge" role="date" placeholder="Tanggal Pernikahan" readonly=""> 
			        </div>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tmppernikahan', 'Tempat Pernikahan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tmppernikahan', array('label'=>false,'id'=>'tmpper', 'placeholder'=>"Tempat Pernikahan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.kota', 'Kota', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.kota', array('label'=>false,'id'=>'kota', 'placeholder'=>"Kota", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.romopernikahan', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.romopernikahan', array('label'=>false,  'class'=>"form-control ", 'div'=>array('class'=>'col-md-4'),'id'=>'romoper', 'placeholder'=>"Romo"));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.saksi1', 'Saksi 1', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.saksi1', array('label'=>false,'id'=>'saksi1', 'placeholder'=>"Saksi 1", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.saksi2', 'Saksi 2', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.saksi2', array('label'=>false,'id'=>'saksi2', 'placeholder'=>"Saksi 2", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.dispensasi', 'Dispensasi', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.dispensasi', array('label'=>false,'id'=>'dispensasi', 'placeholder'=>"Dispensasi", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>
				
				<?php
					$userRole = $this->Session->read('Auth.User.user_level');

					if ($userRole == 2){ ?>
						<div class="form-group">
						<?php
							echo $this->Form->label('Pernikahan.statuspernikahan', 'Status Pernikahan', 'col-md-2 control-label');
							echo $this->Form->input('statuspernikahan', array(
									'options' => $statusPer,
									'label' => false,
									'id'=>'stsper',  
									'div'=>array('class'=>'col-md-4'),
									'class'=>"form-control input-xlarge"
								)
							);
						?>
						<label style="color:red">*</label>
					</div>

				<?php }?>
					<p>&nbsp;</p>
				<?php
					$this->Form->end();
				?>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="buttonaddper" name="button1id" class="btn btn-success" >Simpan</button>
					  <button id="buttonbtlper" name="buttonbtlper" class="btn btn-danger">Batal</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.row -->
