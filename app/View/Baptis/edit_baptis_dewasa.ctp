<?php
$this->assign('title', 'Halaman Status Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Baptis', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Edit Data Baptis</h3>
			</div>

			<div class="panel-body">

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'editBaptisDewasa','class'=>'form-horizontal', 'role'=>'form'));
            echo $this->Form->input('BaptisDewasa.id', array('type' => 'hidden', 'value'=> $this->request->data['BaptisDewasa']['id']));
            echo $this->Form->input('Baptis.id', array('type' => 'hidden', 'value'=> $this->request->data['Baptis']['id']));
          ?>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisDewasa.lingkungan', 'Lingkungan', 'col-md-2 control-label');
            echo $this->Form->input('BaptisDewasa.lingkungan',
              array(
                'label'			  => false,
                'id' 			    => 'lingkungan',
                'placeholder'	=> "Lingkungan",
                'value'			  => $this->request->data['BaptisDewasa']['lingkungan'],
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
  							'value'			  => $this->request->data['Baptis']['kode_stasi'],
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
                'value'			  => $this->request->data['Baptis']['liberbap'],
                'placeholder'	=> "Liberbap",
                'class'			=> "form-control input-xlarge",
                'div'			=> array('class' => 'col-md-4')));
            ?>
          </div>

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.nama_diri_label', 'Nama Diri', 'col-md-2 control-label');
  					echo $this->Form->input('Baptis.nama_diri',
  						array(
  							'label'			=> false,
  							'id' 			=> 'nama_umat',
  							'placeholder'	=> "Nama Diri",
  							'value'			=> $this->request->data['Baptis']['nama_diri'],
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>
          <?php }else{ ?>
            <div class="form-group">
    					<?php
    					echo $this->Form->label('Baptis.nama_diri_label', 'Nama Diri', 'col-md-2 control-label');
    					echo $this->Form->input('Baptis.nama_diri',
    						array(
    							'label'			=> false,
    							'id' 			=> 'nama_umat',
    							'placeholder'	=> "Nama Diri",
    							'value'			=> $this->request->data['Umat']['nama'],
                  'disabled'  => 'disabled',
    							'class'			=> "form-control input-xlarge",
    							'div'			=> array('class' => 'col-md-4')));
    					?>
    				</div>
          <?php }?>

  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.nama_baptis_label', 'Nama Baptis', 'col-md-2 control-label');
  					echo $this->Form->input('Baptis.nama_baptis',
  						array(
  							'label'			=> false,
  							'id' 			=> 'namaBaptis',
  							'placeholder'	=> "Nama Baptis",
                'value'			=> $this->request->data['Baptis']['nama_baptis'],
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
          <div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.tempat_lahir', 'Tempat Lahir', 'col-md-2 control-label');
  					echo $this->Form->input('Baptis.tempat_lahir',
  						array(
  							'label'			  => false,
  							'id' 			    => 'tempatLahir',
  							'placeholder'	=> "Tempat Lahir",
  							'value'			=> $this->request->data['Baptis']['tempat_lahir'],
  							'class'			  => "form-control input-xlarge",
  							'div'			    => array('class' => 'col-md-4')));
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal_lahir]" value="<?php echo $this->request->data['Baptis']['tanggal_lahir'];?>" id="tanggal_lahir" class="form-control datepicker" role="date" >
            </div>
  				</div>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('Baptis.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label'); ?>
              <?php echo $this->Form->input('Baptis.jenis_kelamin',
    						array(
    							'label'			  => false,
    							'id' 			    => 'jenis_kelamin',
    							'placeholder'	=> "L / P",
                  'value'			=> $this->request->data['Baptis']['jenis_kelamin'],
                  'type'        => 'char',
    							'class'			  => "form-control input-xlarge",
    							'div'			    => array('class' => 'col-md-4')));
                ?>
            </div>
          </div>
          <?php } ?>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisDewasa.alamat', 'Alamat Calon', 'col-md-2 control-label');
            echo $this->Form->input('BaptisDewasa.alamat',
              array(
                'label'			  => false,
                'id' 			    => 'alamat',
                'placeholder'	=> "Alamat",
                'value'			=> $this->request->data['BaptisDewasa']['alamat'],
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
                'value'			=> $this->request->data['BaptisDewasa']['no_telp'],
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Umat.nama_ayah', 'Nama Ayah', 'col-md-2 control-label');
  					echo $this->Form->input('Baptis.ayah',
  						array(
  							'label'			=> false,
  							'id' 			=> 'namaAyah',
  							'placeholder'	=> "Nama Ayah",
                'value'			=> $this->request->data['Baptis']['ayah'],
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
                'value'			=> $this->request->data['Baptis']['ibu'],
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>
          <?php } ?>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('BaptisDewasa.status_perkawinan', 'Status Perkawinan Calon Baptis', 'col-md-2 control-label'); ?>
              <div class="col-md-4">
                <select name="BaptisDewasa.status_perkawinan" id="status_perkawinan_calon" class="form-control input-xlarge">
                  <option value="BELUM" <?php if($this->request->data['BaptisDewasa']['status_perkawinan'] == 'BELUM') echo 'selected=selected'?>>Belum Menikah</option>
                  <option value="SUDAH" <?php if($this->request->data['BaptisDewasa']['status_perkawinan'] == 'SUDAH') echo 'selected=selected'?>>Sudah Menikah</option>
                  <option value="AKAN" <?php if($this->request->data['BaptisDewasa']['status_perkawinan'] == 'AKAN') echo 'selected=selected'?>>Akan Menikah</option>
                  <option value="BATAL" <?php if($this->request->data['BaptisDewasa']['status_perkawinan'] == 'BATAL') echo 'selected=selected'?>>Perkawinan diputuskan / dibatalkan</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('BaptisDewasa.menikah_secara', 'Menikah Secara', 'col-md-2 control-label menikah_secara'); ?>
              <div class="col-md-4">
                <select name="BaptisDewasa.menikah_secara" id="menikah_secara" class="form-control input-xlarge menikah_secara">
                  <option value="GEREJA" <?php if($this->request->data['BaptisDewasa']['menikah_secara'] == 'GEREJA') echo 'selected=selected'?>>Gereja</option>
                  <option value="KUA" <?php if($this->request->data['BaptisDewasa']['menikah_secara'] == 'KUA') echo 'selected=selected'?>>Kua</option>
                  <option value="SIPIL" <?php if($this->request->data['BaptisDewasa']['menikah_secara'] == 'SIPIL') echo 'selected=selected'?>>Catatan Sipil</option>
                  <option value="LAINNYA" <?php if($this->request->data['BaptisDewasa']['menikah_secara'] == 'LAINNYA') echo 'selected=selected'?>>Lainnya</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('BaptisDewasa.alasan_batal_nikah', 'Alasan Pembatalan Pernikahan', 'col-md-2 control-label alasan_batal_nikah'); ?>
              <div class="col-md-4">
                <select name="BaptisDewasa.alasan_batal_nikah" id="alasan_batal_nikah" class="form-control input-xlarge alasan_batal_nikah">
                  <option value="KEMATIAN" <?php if($this->request->data['BaptisDewasa']['alasan_batal_nikah'] == 'KEMATIAN') echo 'selected=selected'?>>Kematian</option>
                  <option value="CERAISIPIL" <?php if($this->request->data['BaptisDewasa']['alasan_batal_nikah'] == 'CERAISIPIL') echo 'selected=selected'?>>Perceraian Sipil</option>
                  <option value="PEMUTUSAN" <?php if($this->request->data['BaptisDewasa']['alasan_batal_nikah'] == 'PEMUTUSAN') echo 'selected=selected'?>>Pemutusan</option>
                  <option value="PEMBATALAN" <?php if($this->request->data['BaptisDewasa']['alasan_batal_nikah'] == 'PEMBATALAN') echo 'selected=selected'?>>Pembatalan Gereja</option>
                  <option value="LAINNYA" <?php if($this->request->data['BaptisDewasa']['alasan_batal_nikah'] == 'LAINNYA') echo 'selected=selected'?>>Lainnya</option>
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
  							'id' 			=> 'nosurat',
  							'placeholder'	=> "Akta",
                'value'			=> $this->request->data['BaptisDewasa']['no_surat'],
  							'class'			=> "form-control input-xlarge nosurat
                ",
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
  							'value'			=> $this->request->data['BaptisDewasa']['nama_pasangan'],
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
                'value'			=> $this->request->data['BaptisDewasa']['tempat_pernikahan'],
                'class'			  => "form-control input-xlarge tempat_pernikahan",
                'div'			    => array('class' => 'col-md-4')));
            ?>
          </div>

          <div class="form-group">
  					<?php
  					echo $this->Form->label('BaptisDewasa.tanggal', 'Tgl', 'col-md-2 control-label tanggal_perkawinan label_tanggal_perkawinan');
  					?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisDewasa][tanggal]" value="<?php echo $this->request->data['BaptisDewasa']['tanggal'];?>" id="tanggal" class="form-control datepicker tanggal_perkawinan" role="date" >
            </div>
  				</div>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('BaptisDewasa.agama', 'Agama Sebelumnya', 'col-md-2 control-label'); ?>
              <div class="col-md-4">
                <select name="BaptisDewasa.agama" id="agama" class="form-control input-xlarge">
                  <option value="ISLAM" <?php if($this->request->data['BaptisDewasa']['agama'] == 'ISLAM') echo 'selected=selected'?>>Islam</option>
                  <option value="HINDU" <?php if($this->request->data['BaptisDewasa']['agama'] == 'HINDU') echo 'selected=selected'?>>Hindu</option>
                  <option value="BUDHA" <?php if($this->request->data['BaptisDewasa']['agama'] == 'BUDHA') echo 'selected=selected'?>>Budha</option>
                  <option value="KONGHUCU" <?php if($this->request->data['BaptisDewasa']['agama'] == 'KONGHUCU') echo 'selected=selected'?>>Konghucu</option>
                  <option value="KRISTEN" <?php if($this->request->data['BaptisDewasa']['agama'] == 'KRISTEN') echo 'selected=selected'?>>Kristen</option>
                  <option value="LAINNYA" <?php if($this->request->data['BaptisDewasa']['agama'] == 'LAINNYA') echo 'selected=selected'?>>Lainnya</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisDewasa.belajar_agama_sejak', 'Mengikuti Pelajaran Agama Sejak', 'col-md-2 control-label');

            ?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisDewasa][belajar_agama_sejak]" value="<?php echo $this->request->data['BaptisDewasa']['belajar_agama_sejak'];?>" id="tanggal" class="form-control datepicker " role="date" >
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisDewasa.ikut_misa_sejak', 'Mengikuti Perayaan Ekaristi (Misa) Sejak', 'col-md-2 control-label');

            ?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisDewasa][ikut_misa_sejak]" value="<?php echo $this->request->data['BaptisDewasa']['ikut_misa_sejak'];?>" id="tanggal" class="form-control datepicker" role="date" >
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisDewasa.kegiatan_lingkungan_sejak', 'Mengikuti Kegiatan Lingkungan Sejak', 'col-md-2 control-label');

            ?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisDewasa][kegiatan_lingkungan_sejak]" value="<?php echo $this->request->data['BaptisDewasa']['kegiatan_lingkungan_sejak'];?>" id="kegiatan_lingkungan_sejak" class="form-control datepicker" role="date" >
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
                'value'			=> $this->request->data['BaptisDewasa']['guru_agama'],
                'class'			  => "form-control input-xlarge",
                'div'			    => array('class' => 'col-md-4')));
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
                'value'			=> $this->request->data['Baptis']['wali_baptis'],
  							'class'			   => "form-control input-xlarge",
  							'div'			     => array('class' => 'col-md-4')));
  					?>
  				</div>

  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal]" value="<?php echo $this->request->data['Baptis']['tanggal'];?>" id="tanggal" class="form-control datepicker" role="date" >
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
                'value'			=> $this->request->data['Baptis']['romo'],
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
                'value'			=> $this->request->data['Baptis']['tempat'],
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
  							'class'			=> "form-control input-xlarge",
                'value'			=> $this->request->data['Baptis']['kota'],
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
