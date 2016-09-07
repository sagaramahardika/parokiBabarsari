<?php
$this->assign('title', 'Halaman Edit Pernikahan');
?>
 
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Pernikahan', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Edit Data Pernikahan
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Pernikahan</h3>
			</div>
			<div class="panel-body">

			<?php

			echo $this->Form->create('Pernikahan', array('action'=>'edit','class'=>'form-horizontal', 'role'=>'form','id'=>'formEdit'));
			echo $this->Form->input('Pernikahan.id', array('type' => 'hidden', 'value'=> $this->request->data['Pernikahan']['id']));
			
			?>

				<div class="row">
					<?php
					
					
					

					echo $this->Form->input('Pernikahan.umat_id', array('id'=>'form_id_umat','type'=>'hidden'));
					?>
				</div>
				<div class="form-group">
					<div class="col-md-2 control-label"><label>Kode Stasi </label></div>
					<?php

					// echo $this->Form->input('Pernikahan.a', array(
          			//liat jspernikahan fungsi #input_nama keyup;
					echo $this->Form->input('kode_stasi', array(
								'label' => false,
								'id'=>'kdstasi',
								'placeholder'=>'Kode Stasi',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								'name'=>'kode_stasi'
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Kode LM </label></div>
					<?php
					echo $this->Form->input('kode_LM', array(
								'label' => false,
								'id'=>'kdLM',
								'placeholder'=>'Kode LM',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								'name'=>'kode_LM'
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>No</label></div>
					<?php
					echo $this->Form->input('no', array(
								'label' => false,
								'id'=>'noLM',
								'placeholder'=>'No',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								'name'=>'no'
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="form-group">
					<div class="col-md-2 control-label"><label>Halaman</label></div>
					<?php
					echo $this->Form->input('halaman', array(
								'label' => false,
								'id'=>'halaman',
								'div'=> array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge",
								'name'=>'halaman',
								'placeholder'=>'Halaman Buku'
							)
						 );
					?>
					<label style="color:red">*</label>
				</div>

				<div class="row">
					<div class="col-md-2 control-label"><label>Nama Umat</label></div>
					<?php 
					$idUmat = $this->request->data['Pernikahan']['umat_id'];

					echo $this->Form->input(null,array('disabled'=>'disabled','value'=>$nama[$idUmat], 'name'=>'input_umat','type'=>'text', 'label'=>false,'id'=>'input_nama','placeholder'=>'Nama Umat','class'=>"form-control  input-xlarge",'div'=>array('class'=>'col-md-4')));

					 ?>

				</div>
				<br>

				<?php 
				$cekpassluar  = null;
				if($this->request->data['Pernikahan']['pasangan_id']){
						$cekpassluar = "dalam";
				}else{
					$cekpassluar = "luar";
				}
				echo $this->Form->input(null, array('disabled'=>'disabled','value'=>$cekpassluar, 'name'=>'cekpassluar', 'label'=>false,'type'=>'hidden', 'id'=>'cekpassluar'));
				 ?>
				<!-- <div class="row">
				<div class="row">
					<div class="col-md-6">
					<h4 class='col-md-10'>Silahkan pilih Daerah pasangan Umat :</h4>
					</div>
				</div>	
				<div class="col-md-4">	
					<?php $options = array('ling' => 'lingkungan', 'wil' => 'wilayah','par' => 'paroki','lain' => 'lainnya');
						$attributes = array( 'name'=>'radioPil' , 'legend' => false,  'separator' => '</br>',);
						echo $this->Form->radio('pilihan', $options, $attributes); ?>
						</div>
				</div> -->

				<?php if ($this->request->data['Pernikahan']['pasangan_id']){ ?>
					<?php 


					 ?>
					<div class="row"  >
						<div class="col-md-2 control-label"><label>Nama Pasangan</label></div>
					<?php
					
					$idPas = $this->request->data['Pernikahan']['pasangan_id'];
					echo $this->Form->input(null, array('disabled'=>'disabled','value'=>$nama[$idPas], 'name'=>'input_pasangan', 'label'=>false,'type'=>'text', 'id'=>'lingkungan_nama', 'placeholder'=>"Nama Lengkap", 'class'=>"form-control  input-xlarge", 'div'=>array('class'=>'col-md-4'),'gender'=>'','id_umat'=>'','type_find'=>''));
					echo $this->Form->input('Pernikahan.pasangan_id', array('id'=>'form_id_pasangan','type'=>'hidden'));
					?>
				</div>

				<br>
				<?php } else{?>
				
				
				<div >
					<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.nm_pasangan', 'Nama Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.nm_pasangan', array('label'=>false,'id'=>'namaeditpas', 'placeholder'=>"nama",  'class'=>"form-control input-xlarge form_pasangan", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.alamat_pasangan', 'Alamat Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.alamat_pasangan', array('label'=>false, 'id'=>'alamateditpas','placeholder'=>"nama",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.telp_pasangan', 'Nomor telpon Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.telp_pasangan', array('label'=>false, 'id'=>'telpeditpas','placeholder'=>"nama",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tmplhr_pasangan', 'Tempat lahir Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tmplhr_pasangan', array('label'=>false,'id'=>'tmplhreditpas', 'placeholder'=>"nama",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				<label style="color:red">*</label>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tgllhr_pasangan', 'Tanggal lahir Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tgllhr_pasangan', array('label'=>false, 'id'=>'tgllhreditpas','placeholder'=>"nama",  'class'=>"form_pasangan form-control input-xlarge", 'div'=>array('class'=>'col-md-4'),'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0));
					?>
				<label style="color:red">*</label>
				</div>
				</div>
				<?php } ?>
				<div class="form-group">
					
					<?php
					echo $this->Form->label('Pernikahan.tmppernikahan', 'Tempat Pernikahan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tmppernikahan', array('label'=>false, 'id'=>'tmpeditper','placeholder'=>"tempat", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.tglpernikahan', 'Tanggal pernikahan', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.tglpernikahan', array(
						'label'=>false,  
						'class'=>"form-control ", 
						'id'=>'tgleditper',
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0



						));
					?>
					<label style="color:red">*</label>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.romopernikahan', 'Romo', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.romopernikahan', array('label'=>false,'id'=>'romoeditper',  'class'=>"form-control ", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div>
			 <div class="form-group">
					<?php
					echo $this->Form->label('Pernikahan.libermat', 'Libermat', 'col-md-2 control-label');
					echo $this->Form->input('Pernikahan.libermat', array('label'=>false, 'id'=>'libermateditper', 'class'=>"form-control ", 'div'=>array('class'=>'col-md-4')));
					?>
					<label style="color:red">*</label>
				</div> 

				
				<?php 
					$userRole =$this->Session->read('Auth.User.user_level');

					if ($userRole == 2){ ?>
						<div class="form-group">
							<?php
								echo $this->Form->label('Pernikahan.statuspernikahan', 'Status Pernikahan', 'col-md-2 control-label');
								echo $this->Form->input('statuspernikahan', array(
											'options' => $statusPer,
											'label' => false,
											'value'=> $this->request->data['Umat']['id_statuspernikahan'],
											'div'=>array('class'=>'col-md-4'),
											'class'=>"form-control input-xlarge"
									)
								);
							?>
							<label style="color:red">*</label>
						</div>
				<?php }?>
				<p>&nbsp;</p>
<!-- 
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
				</div> -->
				<?php
			  echo $this->Form->end();
			  ?>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="btnSubmitEdit" name="button1id" class="btn btn-success"  >Simpan</button>
					  <button id="buttonbtlper" name="buttonbtlper" class="btn btn-danger">Batal</button>
					</div>
				</div>
			  

			</div>
		</div>
	</div>
</div>
<!-- /.row -->
