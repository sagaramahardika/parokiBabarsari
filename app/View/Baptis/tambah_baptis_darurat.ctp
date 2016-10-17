<?php
$this->assign('title', 'Halaman Tambah Baptis Darurat');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Baptis', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Baptis Darurat</h3>
			</div>
			<div class="panel-body">

				<?php
          echo $this->Form->create('Baptis', array(
  					'controller' 	=> 'baptis',
  					'action' 		=> 'tambahBaptisDarurat',
  					'class'			=> 'form-horizontal',
  					'role'			=> 'form'));
          echo $this->Form->input('Baptis.id_umat', array('type' => 'hidden', 'id' => 'idUmat'));
				?>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.stasi_baptis','Kode Stasi', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.kode_stasi',
						array(
							'label'			=> false,
							'type'    		=> 'number',
							'id' 			=> 'kodeStasi',
							'value'			=> 07300,
							'placeholder'	=> "Kode Stasi",
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <?php
          echo $this->Form->label('Baptis.liberbap','Liberbap', 'col-md-2 control-label');
          echo $this->Form->input('Baptis.liberbap',
            array(
              'label'			=> false,
              'id' 			=> 'liberbap',
              'placeholder'	=> "Liberbap",
              'class'			=> "form-control input-xlarge",
              'div'			=> array('class' => 'col-md-4')));
          ?>
        </div>

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Diri</b></h4></div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_diri_label', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.nama_diri',
						array(
							'label'			=> false,
							'id' 			=> 'nama_umat',
							'placeholder'	=> "Nama Lengkap",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
          <div class="col-md-2">
            <i class="fa fa-times fa-2x" style="color:red" id="cek_umat" cek="false"></i>
          </div>
				</div>

        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('Baptis.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label'); ?>
            <?php echo $this->Form->input('Baptis.jenis_kelamin',
  						array(
  							'label'			  => false,
  							'id' 			    => 'jnskel',
  							'placeholder'	=> "L / P",
  							//'value'			=> $this->Session->read('Auth.User.nama'),
  							//'disabled'		=> 'disabled',
                'type'        => 'char',
  							'class'			  => "form-control input-xlarge",
  							'div'			    => array('class' => 'col-md-4')));
              ?>
          </div>
        </div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat_lahir', 'Tempat Lahir', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.tempat_lahir',
						array(
							'label'			  => false,
							'id' 			    => 'tempatLahir',
							'placeholder'	=> "Tempat Lahir",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							//'disabled'		=> 'disabled',
							'class'			  => "form-control input-xlarge",
							'div'			    => array('class' => 'col-md-4')));
					?>
          <div class="col-md-4">
            <input type="text" name="data[Baptis][tanggal_lahir]" id="tanggal_lahir" class="form-control datepicker" role="date" >
          </div>
				</div>

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Orangtua</b></h4></div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama_ayah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.ayah',
						array(
							'label'			=> false,
							'id' 			=> 'namaAyah',
							'placeholder'	=> "Nama Ayah",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							//'disabled'		=> 'disabled',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama_ibu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.ibu',
						array(
							'label'			=> false,
							'id' 			=> 'namaIbu',
							'placeholder'	=> "Nama Ibu",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							//'disabled'		=> 'disabled',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('BaptisDarurat.status_perkawinan', 'Status Perkawinan Orangtua', 'col-md-2 control-label'); ?>
            <div class="col-md-4">
              <select name="BaptisDarurat.status_perkawinan" id="status_perkawinan_ortu" class="form-control input-xlarge">
                <option value="SUDAH">Sudah Menikah</option>
                <option value="BELUM">Belum Menikah</option>
              </select>
            </div>
          </div>
        </div>

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Pernikahan</b></h4></div>
        <div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_pasangan', 'Nama Pasangan', 'col-md-2 control-label');
					echo $this->Form->input('BaptisDarurat.nama_pasangan',
						array(
							'label'			   => false,
							'id' 			     => 'nama_pasangan',
							'placeholder'	 => "Nama Pasangan",
							//'value'			=> $this->Session->read('Auth.User.nama'),
              'required'  => 'required',
							'class'			   => "form-control input-xlarge",
							'div'			     => array('class' => 'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDarurat.tempat_perkawinan', 'Tempat  & Tanggal Perkawinan', 'col-md-2 control-label');
          echo $this->Form->input('BaptisDarurat.tempat_perkawinan',
            array(
              'label'			  => false,
              'id' 			    => 'tempat_pernikahan',
              'placeholder'	=> "Tempat Perkawinan",
              //'value'			=> $this->Session->read('Auth.User.nama'),
              'required'  => 'required',
              'class'			  => "form-control input-xlarge",
              'div'			    => array('class' => 'col-md-4')));

          ?>
          <div class="col-md-4">
            <input type="text" name="data[BaptisDarurat][tanggal_perkawinan]" id="tanggal_perkawinan" class="form-control datepicker" role="date" required="">
          </div>
        </div>

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Baptis</b></h4></div>
        <div class="form-group">
					<?php
					echo $this->Form->label('Baptis.nama_baptis_label', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.nama_baptis',
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
					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Baptis][tanggal]" id="tanggal_baptis" class="form-control datepicker" role="date" required="">
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('Baptis.wali_baptis_label', 'Wali Baptis', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.wali_baptis',
						array(
							'label'			=> false,
							'id' 			=> 'waliBaptis',
							'placeholder'	=> "Wali Baptis",
              'required'  => 'required',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.romo_baptis', 'Dibabtis Oleh', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.romo',
						array(
							'label'			=> false,
							'id' 			=> 'romoBaptis',
							'placeholder'	=> "Romo Baptis",
              'required'  => 'required',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat_baptis_label', 'Dibabtis di Paroki (Gereja/Kapel)', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.tempat',
						array(
							'label'			=> false,
							'id' 			=> 'tempatBaptis',
							'placeholder'	=> "Tempat Baptis",
              'required'  => 'required',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.kota_baptis_label', 'Kota', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.kota',
						array(
							'label'			=> false,
							'id' 			=> 'kotaBaptis',
							'placeholder'	=> "Kota",
              'required'  => 'required',
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
