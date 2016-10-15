<?php
$this->assign('title', 'Halaman Tambah Krisma');
?>
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
			echo $this->Form->create('Krisma', array('url' => '/krismas/tambah','class'=>'form-horizontal', 'role'=>'form',));
		    echo $this->Form->input('Umat.id', array('type' => 'hidden', 'value'=> $this->Session->read('Auth.User.id')));
			?>


				<div class="form-group">
					<?php
					echo $this->Form->label('kodeStasi', 'Kode Stasi ', 'col-md-2 control-label');
					echo $this->Form->input('kode_stasi', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'options'=>array(1, 2, 3 ,4, 5),
                        'div'=>array('class'=>'col-md-4')));
					?>

				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('noUrut', 'No Urut', 'col-md-2 control-label');
					echo $this->Form->input('no_urut', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
					?>

					<?php
					echo $this->Form->label('namaDiri', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('nama_diri', array(
                        'label' => false,
                        'class' => "form-control ",
                        'id'    => 'nama_lengkap_krisma',
                        'div'   => array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('gender', 'Gender', 'col-md-2 control-label');
					echo $this->Form->input('gender', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'options'=>array('L', 'P'),
                        'div'=>array('class'=>'col-md-4')));
                    echo $this->Form->label('ketGender', 'L=Laki-laki, P=Perempuan', 'control-label');
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaAyah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('nama_ayah', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaIbu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('nama_ibu', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('parokiBaptis', 'Dibaptis di Paroki', 'col-md-2 control-label');
					echo $this->Form->input('paroki', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('kodeLB', 'Kode LB', 'col-md-2 control-label');
					echo $this->Form->input('kode_lb', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
                    echo $this->Form->label('no', 'No', 'col-md-1 control-label');
					echo $this->Form->input('no', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tanggalBaptis', 'Tanggal Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_baptis', array(
                        'label'=>false,
                        'type'=>'date',
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4'),
                        'dateFormat' => 'DMY',
            						'minYear' => date('Y') - 115,
                        'maxYear' => date('Y') - 0
                      ));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaPelindung', 'Nama Pelindung', 'col-md-2 control-label');
					echo $this->Form->input('nama_pelindung', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('uskupDelegatus', 'Uskup/Delegatus', 'col-md-2 control-label');
					echo $this->Form->input('uskup_delegatus', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('waliKrisma', 'Wali Krisma', 'col-md-2 control-label');
					echo $this->Form->input('wali_krisma', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('Umat.tglkrisma', 'Tanggal Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_krisma', array(
						'label'=>false,
						'class'=>"form-control ",
            'type'=>'date',
						'div'=>array('class'=>'col-md-4'),
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115,
            'maxYear' => date('Y') - 0
						));
					?>
				</div>

				<div class="form-group">

					<?php
					echo $this->Form->label('Umat.tmpkrisma', 'Tempat Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tempat_krisma', array(
                        'label'=>false,
                        'placeholder'=>"Tempat Krisma",
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
                    echo $this->Form->label('kota', 'Kota', 'col-md-1 control-label');
					echo $this->Form->input('Krisma.kota', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
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
