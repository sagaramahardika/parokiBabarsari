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

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'editBaptisDarurat','class'=>'form-horizontal', 'role'=>'form'));
            echo $this->Form->input('BaptisDarurat.id', array('type' => 'hidden', 'value'=> $this->request->data['BaptisDarurat']['id']));
            echo $this->Form->input('Baptis.id', array('type' => 'hidden', 'value'=> $this->request->data['Baptis']['id']));
          ?>
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
  							'id' 			=> 'nama',
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
            <div class="input">
              <?php echo $this->Form->label('Baptis.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label'); ?>
              <?php echo $this->Form->input('Baptis.jenis_kelamin',
    						array(
    							'label'			  => false,
    							'id' 			    => 'jenis_kelamin',
    							'placeholder'	=> "L / P",
    							//'value'			=> $this->Session->read('Auth.User.nama'),
    							'value'			=> $this->request->data['Baptis']['jenis_kelamin'],
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
  							'value'			=> $this->request->data['Baptis']['tempat_lahir'],
  							'class'			  => "form-control input-xlarge",
  							'div'			    => array('class' => 'col-md-4')));
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal_lahir]" value="<?php echo $this->request->data['Baptis']['tanggal_lahir'];?>" id="tanggal_lahir" class="form-control datepicker" role="date" >
            </div>
  				</div>

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
              <?php echo $this->Form->label('BaptisDarurat.status_perkawinan', 'Status Perkawinan Orangtua', 'col-md-2 control-label'); ?>
              <div class="col-md-4">
                <select name="BaptisDarurat.status_perkawinan" id="status_perkawinan_ortu" class="form-control input-xlarge">
                  <option value="SUDAH" <?php if($this->request->data['BaptisDarurat']['status_perkawinan'] == 'SUDAH') echo 'selected=selected'?>>Sudah Menikah</option>
                  <option value="BELUM" <?php if($this->request->data['BaptisDarurat']['status_perkawinan'] == 'BELUM') echo 'selected=selected'?>>Belum Menikah</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.nama_pasangan', 'Nama Pasangan', 'col-md-2 control-label');
  					echo $this->Form->input('BaptisDarurat.nama_pasangan',
  						array(
  							'label'			   => false,
  							'id' 			     => 'nama_pasangan',
  							'placeholder'	 => "Nama Pasangan",
  							'value'			=> $this->request->data['BaptisDarurat']['nama_pasangan'],
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
                'value'			=> $this->request->data['BaptisDarurat']['tempat_perkawinan'],
                'class'			  => "form-control input-xlarge",
                'div'			    => array('class' => 'col-md-4')));
            ?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisDarurat][tanggal_perkawinan]" value="<?php echo $this->request->data['BaptisDarurat']['tanggal_perkawinan'];?>" id="tanggal_perkawinan" class="form-control datepicker" role="date" >
            </div>
          </div>

  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal]" id="tanggal" value="<?php echo $this->request->data['Baptis']['tanggal'];?>" class="form-control datepicker" role="date" >
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
                'value'			=> $this->request->data['Baptis']['wali_baptis'],
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
                'value'			=> $this->request->data['Baptis']['romo'],
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
                'value'			=> $this->request->data['Baptis']['kota'],
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
