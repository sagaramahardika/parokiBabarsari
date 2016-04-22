<?php
$this->assign('title', 'Halaman Tambah Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'edit','class'=>'form-horizontal', 'role'=>'form')); ?>
			
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.stasi_baptis','Kode Stasi', 'col-md-2 control-label');
					echo $this->Form->input('stasi_baptis', 
							array(
									'label'	  => false,
									'type'	  => "select",
									'option'  => array(),
									'id'      => 'stasiBaptis', 
									'div'     => array('class' => 'col-md-4')
					));?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.kode_buku','Kode Buku', 'col-md-2 control-label');
					echo $this->Form->input('kode_buku', 
							array(
									'label'			=> false,
									'id' 			=> 'kodeBuku', 
									'placeholder'	=> "Kode Buku", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					
					echo $this->Form->input('halaman_buku', 
							array(
									'label'			=> false,
									'id' 			=> 'halamanBuku', 
									'placeholder'	=> "Halaman Buku", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-2')));
					
					echo $this->Form->input('nomor_buku', 
							array(
									'label'			=> false,
									'id' 			=> 'nomerBuku', 
									'placeholder'	=> "Nomor Buku", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-2')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_diri', 'Nama Diri', 'col-md-2 control-label');
					echo $this->Form->input('nama_diri', 
							array(
									'label'			=> false,
									'id' 			=> 'namaDiri', 
									'placeholder'	=> "Nama Diri", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_baptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('nama_baptis', 
							array(
									'label'			=> false,
									'id' 			=> 'namaBaptis', 
									'placeholder'	=> "Nama Baptis", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label');
					echo $this->Form->input('jenis_kelamin', 
							array(
									'label'			=> false,
									'id' 			=> 'jenisKelamin', 
									'placeholder'	=> "Jenis Kelamin", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat_lahir', 'Tempat Lahir', 'col-md-2 control-label');
					echo $this->Form->input('tempat_lahir', 
							array(
									'label'			=> false,
									'id' 			=> 'tempatLahir', 
									'placeholder'	=> "Tempat Lahir", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));

					echo $this->Form->input('tanggal_lahir', 
							array(
									'label'			=> false,
									'type'    		=> 'datepicker',
									'id' 			=> 'tanggalLahir', 
									'placeholder'	=> "Tanggal Lahir", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));

					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_ayah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('nama_ayah', 
							array(
									'label'			=> false,
									'id' 			=> 'namaAyah', 
									'placeholder'	=> "Nama Ayah", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_ibu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('nama_ibu', 
							array(
									'label'			=> false,
									'id' 			=> 'namaIbu', 
									'placeholder'	=> "Nama Ibu", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.catatan', 'Catatan', 'col-md-2 control-label');
					echo $this->Form->input('catatan', 
							array(
									'label'			=> false,
									'id' 			=> 'catatan', 
									'placeholder'	=> "Catatan", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.jenis_baptis', 'Jenis Baptis', 'col-md-2 control-label');
					echo $this->Form->input('jenis_baptis', 
							array(
									'label'			=> false,
									'type'			=> "select",
									'option' 		=> array(),
									'id' 			=> 'jenisBaptis', 
									'placeholder'	=> "Jenis Baptis", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tanggal_baptis', 'Tanggal Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tanggal_baptis', 
							array(
									'label'			=> false,
									'type'			=> "datepicker",
									'id' 			=> 'tanggalBaptis', 
									'placeholder'	=> "Tanggal Baptis", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.romo_baptis', 'Dibabtis Oleh', 'col-md-2 control-label');
					echo $this->Form->input('romo_baptis', 
							array(
									'label'			=> false,
									'id' 			=> 'romoBaptis', 
									'placeholder'	=> "", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.wali_baptis', 'Wali Baptis', 'col-md-2 control-label');
					echo $this->Form->input('wali_baptis', 
							array(
									'label'			=> false,
									'id' 			=> 'waliBaptis', 
									'placeholder'	=> "Wali Baptis", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat_baptis', 'Dibabtis di Paroki (Gereja/Kapel)', 'col-md-2 control-label');
					echo $this->Form->input('tempat_baptis', 
							array(
									'label'			=> false,
									'id' 			=> 'tempatBaptis', 
									'placeholder'	=> "Tempat Baptis", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.kota_baptis', 'Kota', 'col-md-2 control-label');
					echo $this->Form->input('kota_baptis', 
							array(
									'label'			=> false,
									'id' 			=> 'kotaBaptis', 
									'placeholder'	=> "Kota", 
									'class'			=> "form-control input-xlarge", 
									'div'			=> array('class' => 'col-md-4')));
					?>
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
