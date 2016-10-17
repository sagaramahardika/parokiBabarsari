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

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'edit','class'=>'form-horizontal', 'role'=>'form'));
          echo $this->Form->input('Umat.id', array('type' => 'hidden', 'value'=> $this->request->data['Baptis']['id_umat']));
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
  							'value'			=> $this->request->data['Baptis']['kode_stasi'],
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
  							'value'			=> $this->request->data['Baptis']['liberbap'],
  							'placeholder'	=> "Liberbap",
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>

          &nbsp
          <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Diri</b></h4></div>
          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.nama_diri_label', 'Nama Diri', 'col-md-2 control-label');
  					echo $this->Form->input('nama_diri',
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
    					echo $this->Form->input('nama_diri',
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

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.jenis_kelamin_label', 'Jenis Kelamin', 'col-md-2 control-label');
  					echo $this->Form->input('jenis_kelamin',
  						array(
  							'label'			=> false,
                'id'           => 'jnskel',
  							'placeholder'	=> "Jenis Kelamin",
  							'value'			=> $this->request->data['Baptis']['jenis_kelamin'],
  							'type'			=> 'char',
  							//'disabled'		=> 'disabled',
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>
          <?php }?>

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.tempat_lahir', 'Tempat Lahir', 'col-md-2 control-label');
  					echo $this->Form->input('tempat_lahir',
  						array(
  							'label'			  => false,
  							'id' 			    => 'tempatLahir',
  							'placeholder'	=> "Tempat Lahir",
  							'value'			=> $this->request->data['Baptis']['tempat_lahir'],
  							//'disabled'		=> 'disabled',
  							'class'			  => "form-control input-xlarge",
  							'div'			    => array('class' => 'col-md-4')));
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal_lahir]" id="tanggal_lahir" class="form-control datepicker" role="date" value="<?php echo $this->request->data['Baptis']['tanggal_lahir'];?>">
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
  							'value'			=> $this->request->data['Baptis']['ayah'],
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
  							'value'			=> $this->request->data['Baptis']['ibu'],
  							//'disabled'		=> 'disabled',
  							'class'			=> "form-control input-xlarge",
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>
          <?php }?>

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
                'value'			=> $this->request->data['Baptis']['nama_baptis'],
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
                'type'      => 'teaxtarea',
  							'class'			=> "form-control input-xlarge",
                'value'			=> $this->request->data['Baptis']['catatan'],
  							'div'			=> array('class' => 'col-md-4')));
  					?>
  				</div>

  				<div class="form-group">
  					<?php
  					echo $this->Form->label('Baptis.tanggal_baptis_label', 'Tanggal Baptis', 'col-md-2 control-label');
  					?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal]" id="tanggal" class="form-control datepicker" role="date" value="<?php echo $this->request->data['Baptis']['tanggal'];?>">
            </div>
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
