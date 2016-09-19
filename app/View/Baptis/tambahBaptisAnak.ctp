<?php
$this->assign('title', 'Halaman Tambah Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Baptis Anak</h3>
			</div>

      <div class="form-group">
        <?php
        echo $this->Form->label('BaptisAnak.lingkungan', 'Lingkungan', 'col-md-2 control-label');
        echo $this->Form->input('BaptisAnak.lingkungan',
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
        echo $this->Form->label('Baptis.nama', 'Nama Diri', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.nama_diri',
          array(
            'label'			  => false,
            'id' 			    => 'nama_diri',
            'placeholder'	=> "Nama Diri",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));
        ?>
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
            'disabled'		=> 'disabled',
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));

        echo $this->Form->input('Baptis.tanggal_lahir',
          array(
            'label'			  => false,
            'type'    		=> 'datepicker',
            'id'          => 'tglLahir',
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'disabled'		=> 'disabled',
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-6',
            'minYear' 		=> date('Y') - 115, 'maxYear' => date('Y') - 0)));

        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('Baptis.ayah', 'Nama Ayah', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.ayah',
          array(
            'label'			  => false,
            'id' 			    => 'nama_ayah',
            'placeholder'	=> "Nama Ayah",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('Baptis.ibu', 'Nama Ibu', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.ibu',
          array(
            'label'			  => false,
            'id' 			    => 'nama_ibu',
            'placeholder'	=> "Nama Ibu",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <div class="input">
          <?php echo $this->Form->label('BaptisAnak.status_perkawinan_ortu', 'Status Perkawinan Orangtua', 'col-md-2 control-label'); ?>
          <div class="col-md-4">
            <select name="BaptisAnak.status_perkawinan_ortu" id="status_perkawinan_ortu" class="form-control input-xlarge">
              <option value="GEREJA">Gereja</option>
              <option value="KUA">KUA</option>
              <option value="SIPIL">Catatan Sipil</option>
              <option value="LAINNYA">Cara Lain</option>
            </select>
          </div>
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('BaptisAnak.tempat_perkawinan_ortu', 'Tempat', 'col-md-2 control-label');
        echo $this->Form->input('BaptisAnak.tempat_perkawinan_ortu',
          array(
            'label'			  => false,
            'id' 			    => 'tempat_pernikahan_ortu',
            'placeholder'	=> "Tempat",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));

        echo $this->Form->input('BaptisAnak.tanggal_pernikahan_ortu',
          array(
            'label'			  => false,
            'type'    		=> 'datepicker',
            'id'          => 'tanggal_pernikahan_ortu',
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-6',
            'minYear' 		=> date('Y') - 115, 'maxYear' => date('Y') - 0)));

        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('BaptisAnak.alamat_ortu', 'Alamat Orangtua', 'col-md-2 control-label');
        echo $this->Form->input('BaptisAnak.alamat_ortu',
          array(
            'label'			  => false,
            'id' 			    => 'alamat_ortu',
            'placeholder'	=> "Alamat Orangtua",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('BaptisAnak.telp_ortu', 'Telp/HP', 'col-md-2 control-label');
        echo $this->Form->input('BaptisAnak.telp_ortu',
          array(
            'label'			  => false,
            'id' 			    => 'alamat_ortu',
            'placeholder'	=> "Alamat Orangtua",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('Baptis.wali_baptis_label', 'Nama Walibaptis', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.wali_baptis',
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
        echo $this->Form->label('BaptisAnak.penjamin', 'Penjamin', 'col-md-2 control-label');
        echo $this->Form->input('BaptisAnak.penjamin',
          array(
            'label'			=> false,
            'id' 			=> 'penjamin',
            'placeholder'	=> "Penjamin",
            'class'			=> "form-control input-xlarge",
            'div'			=> array('class' => 'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('Baptis.tempat_baptis', 'Tempat Baptis', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.tempat_baptis',
          array(
            'label'			  => false,
            'id' 			    => 'tempatBaptis',
            'placeholder'	=> "Tempat Baptis",
            //'value'			=> $this->Session->read('Auth.User.nama'),
            'disabled'		=> 'disabled',
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-4')));

        echo $this->Form->input('Baptis.tanggal_baptis',
          array(
            'label'			  => false,
            'type'    		=> 'datepicker',
            'id'          => 'tglBaptis',
            'class'			  => "form-control input-xlarge",
            'div'			    => array('class' => 'col-md-6',
            'minYear' 		=> date('Y') - 115, 'maxYear' => date('Y') - 0)));

        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('Baptis.romo_baptis', 'Dibaptis Oleh', 'col-md-2 control-label');
        echo $this->Form->input('Baptis.romo',
          array(
            'label'			=> false,
            'id' 			=> 'romoBaptis',
            'placeholder'	=> "",
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
