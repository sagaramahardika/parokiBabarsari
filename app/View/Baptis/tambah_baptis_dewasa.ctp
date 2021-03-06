<?php
$this->assign('title', 'Halaman Tambah Baptis Dewasa');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Baptis', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Data Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Baptis Dewasa</h3>
			</div>
			<div class="panel-body">

				<?php
          echo $this->Form->create('Baptis', array(
  					'controller' 	=> 'baptis',
  					'action' 		=> 'tambahBaptisDewasa',
  					'class'			=> 'form-horizontal',
  					'role'			=> 'form'));
          echo $this->Form->input('Baptis.id_umat', array('type' => 'hidden', 'id' => 'idUmat'));
				?>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.lingkungan', 'Lingkungan', 'col-md-2 control-label');
          echo $this->Form->input('BaptisDewasa.lingkungan',
            array(
              'label'			  => false,
              'id' 			    => 'lingkungan',
              'placeholder'	=> "Lingkungan",
              //'value'			=> $this->Session->read('Auth.User.nama'),
              'class'			  => "form-control input-xlarge",
              'div'			    => array('class' => 'col-md-4')));
          ?>
        </div>

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
          echo $this->Form->label('Baptis.liberbap','LB', 'col-md-2 control-label');
          echo $this->Form->input('Baptis.liberbap',
            array(
              'label'			=> false,
              'id' 			=> 'liberbap',
              'placeholder'	=> "Contoh: I / 435",
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
            <input type="text" name="data[Baptis][tanggal_lahir]" placeholder=" Tanggal Lahir" id="tanggal_lahir" class="form-control datepicker" role="date" >
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
          echo $this->Form->label('BaptisDewasa.alamat', 'Alamat Calon', 'col-md-2 control-label');
          echo $this->Form->input('BaptisDewasa.alamat',
            array(
              'label'			  => false,
              'id' 			    => 'alamat',
              'placeholder'	=> "Alamat",
              //'value'			=> $this->Session->read('Auth.User.nama'),
              'class'			  => "form-control input-xlarge",
              'div'			    => array('class' => 'col-md-4')));
          ?>
        </div>

        <div class="form-group">
					<?php
					echo $this->Form->label('BaptisDewasa.no_telp','Telp/HP', 'col-md-2 control-label');
					echo $this->Form->input('BaptisDewasa.no_telp',
						array(
							'label'			=> false,
							'type'    		=> 'number',
							'id' 			=> 'no_telp',
							'placeholder'	=> "Telp/HP",
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
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

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Pernikahan</b></h4></div>
        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('BaptisDarurat.ssstatus_perkawinan', 'Status Perkawinan Calon Baptis', 'col-md-2 control-label'); ?>
            <div class="col-md-4">
              <select name="BaptisDewasa[status_perkawinan]" id="status_perkawinan_calon" class="form-control input-xlarge">
                <option value="BELUM">Belum Menikah</option>
                <option value="SUDAH">Sudah Menikah</option>
                <option value="AKAN">Akan Menikah</option>
                <option value="BATAL">Perkawinan diputuskan / dibatalkan</option>
              </select>
            </div>
          </div>
        </div>

        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('BaptisDarurat.ssmenikah_secara', 'Menikah Secara', 'col-md-2 control-label menikah_secara'); ?>
            <div class="col-md-4">
              <select name="BaptisDewasa[menikah_secara]" id="menikah_secara" class="form-control input-xlarge menikah_secara">
                <option value="GEREJA">Gereja</option>
                <option value="KUA">Kua</option>
                <option value="SIPIL">Catatan Sipil</option>
                <option value="LAINNYA">Lainnya</option>
              </select>
            </div>
          </div>
        </div>

        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('BaptisDarurat.alasan_batal_nikah', 'Alasan Pembatalan Pernikahan', 'col-md-2 control-label alasan_batal_nikah'); ?>
            <div class="col-md-4">
              <select name="BaptisDewasa[alasan_batal_nikah]" id="alasan_batal_nikah" class="form-control input-xlarge alasan_batal_nikah">
                <option value="KEMATIAN">Kematian</option>
                <option value="CERAISIPIL">Perceraian Sipil</option>
                <option value="PEMUTUSAN">Pemutusan</option>
                <option value="PEMBATALAN">Pembatalan Gereja</option>
                <option value="LAINNYA">Lainnya</option>
              </select>
            </div>
          </div>
        </div>

        <div class="form-group">
					<?php
					echo $this->Form->label('BaptisDewasa.No_surat', 'No. Surat / Akta', 'col-md-2 control-label nosurat');
					echo $this->Form->input('BaptisDewasa.no_surat',
						array(
							'label'			=> false,
							'placeholder'	=> "Akta",
							'class'			=> "form-control input-xlarge nosurat",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('BaptisDewasa.nama_pasangan', 'Nama Pasangan', 'col-md-2 control-label nama_pasangan');
					echo $this->Form->input('BaptisDewasa.nama_pasangan',
						array(
							'label'			   => false,
							'id' 			     => 'nama_pasangan',
							'placeholder'	 => "Nama Pasangan",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'class'			   => "form-control input-xlarge nama_pasangan",
							'div'			     => array('class' => 'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.tempat_pernikahan', 'Tempat Pernikahan', 'col-md-2 control-label tempat_pernikahan');
          echo $this->Form->input('BaptisDewasa.tempat_pernikahan',
            array(
              'label'			  => false,
              'id' 			    => 'tempat_pernikahan',
              'placeholder'	=> "Tempat Pernikahans",
              //'value'			=> $this->Session->read('Auth.User.nama'),
              'class'			  => "form-control input-xlarge tempat_pernikahan",
              'div'			    => array('class' => 'col-md-4')));
          ?>
        </div>

        <div class="form-group">
					<?php
					echo $this->Form->label('BaptisDewasa.tanggal', 'Tanggal', 'col-md-2 control-label tanggal_perkawinan label_tanggal_perkawinan');
					?>
          <div class="col-md-4">
            <input type="text" name="data[BaptisDewasa][tanggal]" placeholder=" Tanggal Perkawinan" id="tanggal_perkawinan" class="form-control datepicker tanggal_perkawinan" role="date" >
          </div>
				</div>

        &nbsp
        <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Pendidikan Agama</b></h4></div>
        <div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('BaptisDewasa.agama', 'Agama Sebelumnya', 'col-md-2 control-label'); ?>
            <div class="col-md-4">
              <select name="BaptisDewasa[agama]" id="agama" class="form-control input-xlarge">
                <option value="ISLAM">Islam</option>
                <option value="HINDU">Hindu</option>
                <option value="BUDHA">Budha</option>
                <option value="KONGHUCU">Konghucu</option>
                <option value="KRISTEN">Kristen</option>
                <option value="LAINNYA">Lainnya</option>
              </select>
            </div>
          </div>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.belajar_agama_sejak', 'Mengikuti Pelajaran Agama Sejak', 'col-md-2 control-label');
          ?>
          <div class="col-md-4">
            <input type="text" name="data[BaptisDewasa][belajar_agama_sejak]" id="belajar_agama_sejak" class="form-control datepicker" role="date" >
          </div>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.ikut_misa_sejak', 'Mengikuti Perayaan Ekaristi (Misa) Sejak', 'col-md-2 control-label');

          ?>
          <div class="col-md-4">
            <input type="text" name="data[BaptisDewasa][ikut_misa_sejak]" id="ikut_misa_sejak" class="form-control datepicker" role="date" >
          </div>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.kegiatan_lingkungan_sejak', 'Mengikuti Kegiatan Lingkungan Sejak', 'col-md-2 control-label');

          ?>

          <div class="col-md-4">
            <input type="text" name="data[BaptisDewasa][kegiatan_lingkungan_sejak]" id="kegiatan_lingkungan_sejak" class="form-control datepicker" role="date" >
          </div>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('BaptisDewasa.guru_agama', 'Nama Guru Agama yang mengajar', 'col-md-2 control-label');
          echo $this->Form->input('BaptisDewasa.guru_agama',
            array(
              'label'			  => false,
              'id' 			    => 'guru_agama',
              'placeholder'	=> "Nama Guru Agama",
              'class'			  => "form-control input-xlarge",
              'required'     => 'required',
              'div'			    => array('class' => 'col-md-4')));
          ?>
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
					echo $this->Form->label('Baptis.wali_baptis_label', 'Nama Calon Wali Baptis', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.wali_baptis',
						array(
							'label'			   => false,
							'id' 			     => 'waliBaptis',
							'placeholder'	 => "Wali Baptis",
							'class'			   => "form-control input-xlarge",
              'required'     => 'required',
							'div'			     => array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
					?>

          <div class="col-md-4">
            <input type="text" name="data[Baptis][tanggal]" id="tanggal" class="form-control datepicker" role="date" placeholder="Tanggal Baptis" required="">
          </div>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.romo_baptis', 'Dibabtis Oleh', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.romo',
						array(
							'label'		     => false,
							'id' 			     => 'romoBaptis',
							'placeholder'	 => "Romo Baptis",
							'class'			   => "form-control input-xlarge",
              'required'     => 'required',
							'div'			     => array('class' => 'col-md-4')));

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
              'value'   => "St. Maria Assumpta",
							'class'			=> "form-control input-xlarge",
              'required'     => 'required',
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
							'class'			=> "form-control input-xlarge",
              'value'     => "Babarsari - Yogyakarta",
              'required'     => 'required',
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
