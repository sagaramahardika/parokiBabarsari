<?php
$this->assign('title', 'Halaman Tambah Kematian');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Kematian', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Kematian
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Kematian</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Kematian',  array('controller' => 'kematians','action' => 'tambah','class'=>'form-horizontal', 'role'=>'form'));
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

				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaLengkap', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('nama_lengkap', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'value'=> $this->Session->read('Auth.User.nama'),
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaBaptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('nama_baptis', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
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
					echo $this->Form->label('tempatLahir', 'Tempat Lahir', 'col-md-2 control-label');
					echo $this->Form->input('tempat_lahir', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tanggalLahir', 'Tanggal Lahir', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_lahir', array(
						'label'=>false,
						'class'=>"form-control ",
						'div'=>array('class'=>'col-md-4'),
                        'type'=>'date',
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115,
                        'maxYear' => date('Y') - 0
						));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tempatMeninggal', 'Tempat Meninggal', 'col-md-2 control-label');
					echo $this->Form->input('tempat_meninggal', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tanggalMeninggal', 'Tanggal Meninggal', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_Meninggal', array(
						'label'=>false,
						'class'=>"form-control ",
						'div'=>array('class'=>'col-md-4'),
                        'type'=>'date',
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115,
                        'maxYear' => date('Y') - 0
						));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tempatDimakamkan', 'Tempat Dimakamkan', 'col-md-2 control-label');
					echo $this->Form->input('tempat_dimakamkan', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('tanggalDimakamkan', 'Tanggal Dimakamkan', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_dimakamkan', array(
						'label'=>false,
						'class'=>"form-control ",
						'div'=>array('class'=>'col-md-4'),
                        'type'=>'date',
						'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115,
                        'maxYear' => date('Y') - 0
						));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('namaSaudara', 'Nama Saudara', 'col-md-2 control-label');
					echo $this->Form->input('nama_saudara', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('hubunganPersaudaraan', 'Hubungan Persaudaraan', 'col-md-2 control-label');
					echo $this->Form->input('hubungan_persaudaraan', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'options'=>array("Saudara Kandung", "Saudara Tiri"),
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">

					<?php
					echo $this->Form->label('sakramenTerakhir', 'Sakramen Terakhir', 'col-md-2 control-label');
					echo $this->Form->input('sakramen_terakhir', array(
                        'label'=>false,
                        'placeholder'=>"Tempat Krisma",
                        'class'=>"form-control input-xlarge",
                        'options'=>array("Masih Belum Tau"),
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('pemberiSakramen', 'Pemberi Sakramen', 'col-md-2 control-label');
					echo $this->Form->input('pemberi_sakramen', array(
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
