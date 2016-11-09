<?php
$this->assign('title', 'Halaman Status Baptis');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Baptis', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Ubah Data Baptis </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Edit Data Baptis</h3>
			</div>
			<div class="panel-body">

					<?php echo $this->Form->create('Baptis', array('controller' => 'baptis','action' => 'editBaptisAnak','class'=>'form-horizontal', 'role'=>'form'));
            echo $this->Form->input('BaptisAnak.id', array('type' => 'hidden', 'value'=> $this->request->data['BaptisAnak']['id']));
            echo $this->Form->input('Baptis.id', array('type' => 'hidden', 'value'=> $this->request->data['Baptis']['id']));
          ?>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisAnak.lingkungan', 'Lingkungan', 'col-md-2 control-label');
            echo $this->Form->input('BaptisAnak.lingkungan',
              array(
                'label'			  => false,
                'id' 			    => 'lingkungan',
                'placeholder'	=> "Lingkungan",
                'value'			  => $this->request->data['BaptisAnak']['lingkungan'],
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
            echo $this->Form->label('Baptis.liberbap','LB', 'col-md-2 control-label');
            echo $this->Form->input('Baptis.liberbap',
              array(
                'label'			=> false,
                'id' 			=> 'liberbap',
                'value'			  => $this->request->data['Baptis']['liberbap'],
                'placeholder'	=> "Contoh: I / 435",
                'class'			=> "form-control input-xlarge",
                'div'			=> array('class' => 'col-md-4')));
            ?>
          </div>

          <?php if($this->request->data['Baptis']['id_umat'] == 0) {?>
            &nbsp
            <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Diri</b></h4></div>
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
                //'disabled'		=> 'disabled',
                'class'			  => "form-control input-xlarge",
                'div'			    => array('class' => 'col-md-4')));
            ?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal_lahir]" id="tanggal_lahir" value="<?php echo $this->request->data['Baptis']['tanggal_lahir'];?>" class="form-control datepicker" role="date" >
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
    							//'disabled'		=> 'disabled',
                  'type'        => 'char',
    							'class'			  => "form-control input-xlarge",
    							'div'			    => array('class' => 'col-md-4')));
                ?>
            </div>
          </div>

          &nbsp
          <div class="form-group"><h4 class="col-md-2 control-label"><b>Data Orangtua</b></h4></div>
          <div class="form-group">
            <?php
            echo $this->Form->label('Baptis.ayah', 'Nama Ayah', 'col-md-2 control-label');
            echo $this->Form->input('Baptis.ayah',
              array(
                'label'			  => false,
                'id' 			    => 'nama_ayah',
                'placeholder'	=> "Nama Ayah",
                'value'			=> $this->request->data['Baptis']['ayah'],
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
                'value'			  => $this->request->data['Baptis']['ibu'],
                'class'			  => "form-control input-xlarge",
                'div'			    => array('class' => 'col-md-4')));
            ?>
          </div>
          <?php } ?>

          <div class="form-group">
            <div class="input">
              <?php echo $this->Form->label('BaptisAnakeg.status_perkawinan_ortu', 'Status Perkawinan Orangtua', 'col-md-2 control-label'); ?>
              <div class="col-md-4">
                <select name="BaptisAnak[status_perkawinan_ortu]" id="status_perkawinan_ortu" class="form-control input-xlarge">
                  <option value="GEREJA" <?php if($this->request->data['BaptisAnak']['status_perkawinan_ortu'] == 'GEREJA') echo 'selected=selected'?>>Gereja</option>
                  <option value="KUA" <?php if($this->request->data['BaptisAnak']['status_perkawinan_ortu'] == 'KUA') echo 'selected=selected'?>>KUA</option>
                  <option value="SIPIL" <?php if($this->request->data['BaptisAnak']['status_perkawinan_ortu'] == 'SIPIL') echo 'selected=selected'?>>Catatan Sipil</option>
                  <option value="LAINNYA" <?php if($this->request->data['BaptisAnak']['status_perkawinan_ortu'] == 'LAINNYA') echo 'selected=selected'?>>Cara Lain</option>
                </select>
              </div>
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisAnak.tempat_perkawinan_ortu', 'Tempat dan Tanggal', 'col-md-2 control-label');
            echo $this->Form->input('BaptisAnak.tempat_perkawinan_ortu',
              array(
                'label'			  => false,
                'id' 			    => 'tempat_pernikahan_ortu',
                'placeholder'	=> "Tempat",
                'value'			  => $this->request->data['BaptisAnak']['tempat_perkawinan_ortu'],
                'class'			  => "form-control input-xlarge",
                'div'			    => array('class' => 'col-md-4')));

            ?>
            <div class="col-md-4">
              <input type="text" name="data[BaptisAnak][tanggal_perkawinan_ortu]" value="<?php echo $this->request->data['BaptisAnak']['tanggal_perkawinan_ortu'];?>" id="tanggal_perkawinan_ortu" class="form-control datepicker" role="date" >
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('BaptisAnak.alamat_ortu', 'Alamat Orangtua', 'col-md-2 control-label');
            echo $this->Form->input('BaptisAnak.alamat_ortu',
              array(
                'label'			  => false,
                'id' 			    => 'alamat_ortu',
                'placeholder'	=> "Alamat Orangtua",
                'value'			  => $this->request->data['BaptisAnak']['alamat_ortu'],
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
                'placeholder'	=> "Telp Orangtua",
                'value'			  => $this->request->data['BaptisAnak']['telp_ortu'],
                'class'			  => "form-control input-xlarge",
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
                'value'			=> $this->request->data['Baptis']['nama_baptis'],
                'class'			=> "form-control input-xlarge",
                'div'			=> array('class' => 'col-md-4')));
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
                'value'			  => $this->request->data['Baptis']['wali_baptis'],
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
                'value'			  => $this->request->data['BaptisAnak']['penjamin'],
                'class'			=> "form-control input-xlarge",
                'div'			=> array('class' => 'col-md-4')));
            ?>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('Baptis.tempat_baptis', 'Tanggal Baptis', 'col-md-2 control-label');
            ?>
            <div class="col-md-4">
              <input type="text" name="data[Baptis][tanggal]" id="tanggal" value="<?php echo $this->request->data['Baptis']['tanggal'];?>" class="form-control datepicker" role="date" >
            </div>
          </div>

          <div class="form-group">
            <?php
            echo $this->Form->label('Baptis.romo_baptis', 'Dibaptis Oleh', 'col-md-2 control-label');
            echo $this->Form->input('Baptis.romo',
              array(
                'label'			=> false,
                'id' 			=> 'romoBaptis',
                'placeholder'	=> "Romo Baptis",
                'class'			=> "form-control input-xlarge",
                'value'			  => $this->request->data['Baptis']['romo'],
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
                'value'			  => $this->request->data['Baptis']['tempat'],
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
                'value'			  => $this->request->data['Baptis']['kota'],
                'class'			=> "form-control input-xlarge",
                'div'			=> array('class' => 'col-md-4')));
            ?>
          </div>

          <input type="hidden" name=['Baptis']['jenis_baptis'] value="ANAK" readonly="readonly">
          <input type="hidden" name=['Baptis']['sts_baptis'] value="1" readonly="readonly">

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
