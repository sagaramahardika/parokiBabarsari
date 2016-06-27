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

				<?php
          echo $this->Form->create('Baptis', array(
  					'controller' 	=> 'baptis',
  					'action' 		=> 'tambah',
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
					echo $this->Form->label('Baptis.kode_buku_label','Kode Buku', 'col-md-2 control-label');
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
					echo $this->Form->label('Baptis.nama_diri_label', 'Nama Diri', 'col-md-2 control-label');
					echo $this->Form->input('nama_diri',
						array(
							'label'			=> false,
							'id' 			=> 'nama_umat',
							'placeholder'	=> "Nama Diri",
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
					echo $this->Form->label('Baptis.jenis_kelamin_label', 'Jenis Kelamin', 'col-md-2 control-label');
					echo $this->Form->input('jenis_kelamin',
						array(
							'label'			=> false,
              'id'           => 'jnskel',
							'placeholder'	=> "Jenis Kelamin",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'type'			=> 'char',
							'disabled'		=> 'disabled',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tempat_lahir', 'Tempat Lahir', 'col-md-2 control-label');
					echo $this->Form->input('tempat_lahir',
						array(
							'label'			  => false,
							'id' 			    => 'tempatLahir',
							'placeholder'	=> "Tempat Lahir",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'disabled'		=> 'disabled',
							'class'			  => "form-control input-xlarge",
							'div'			    => array('class' => 'col-md-4')));

					echo $this->Form->input('tanggal_lahir',
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
					echo $this->Form->label('Umat.nama_ayah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('nama_ayah',
						array(
							'label'			=> false,
							'id' 			=> 'namaAyah',
							'placeholder'	=> "Nama Ayah",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'disabled'		=> 'disabled',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama_ibu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('nama_ibu',
						array(
							'label'			=> false,
							'id' 			=> 'namaIbu',
							'placeholder'	=> "Nama Ibu",
							//'value'			=> $this->Session->read('Auth.User.nama'),
							'disabled'		=> 'disabled',
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.catatan', 'Catatan', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.catatan',
						array(
							'label'			=> false,
							'id' 			=> 'catatan',
							'placeholder'	=> "Catatan",
							'class'			=> "form-control input-xlarge",
							'div'			=> array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
          <div class="input">
            <?php echo $this->Form->label('Baptis.jenis_baptis_label', 'Jenis Baptis', 'col-md-2 control-label'); ?>
            <div class="col-md-4">
              <select name="data[Baptis][sts_baptis]" id="jenisBaptis" placeholder="Jenis Baptis" class="form-control input-xlarge">
                <?php
                foreach ($jenisdatas as $jenis) {
                ?>
                  <option value= "<?php echo $jenis['Statusbaptis']['id']; ?>"> <?php echo $jenis['Statusbaptis']['status']; ?> </option>
                <?php } ?>
              </select>
            </div>
          </div>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.tanggal',
						array(
							'label'		  	=> false,
							'type'			  => "date",
							'id' 			    => 'tanggalBaptis',
              'minYear'     => date('Y')-115,
              'maxYear'     => date('Y')-0,
							'placeholder'	=> "Tanggal Baptis",
							'class'			  => "form-control input-xlarge",
							'div'			    => array('class' => 'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Baptis.romo_baptis', 'Dibabtis Oleh', 'col-md-2 control-label');
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
					<?php
					echo $this->Form->label('Baptis.wali_baptis_label', 'Wali Baptis', 'col-md-2 control-label');
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
					echo $this->Form->label('Baptis.tempat_baptis_label', 'Dibabtis di Paroki (Gereja/Kapel)', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.tempat',
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
					echo $this->Form->label('Baptis.kota_baptis_label', 'Kota', 'col-md-2 control-label');
					echo $this->Form->input('Baptis.kota',
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
