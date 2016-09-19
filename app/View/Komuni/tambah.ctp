<?php
$this->assign('title', 'Halaman Tambah Komuni');
?>

<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Komuni
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Komuni</h3>
			</div>
			<div class="panel-body">

			<?php
				echo $this->Form->create('Umat', array('url' => '/komuni/tambah','action'=>'tambah','class'=>'form-horizontal', 'role'=>'form',));
				echo $this->Form->input('Komuni.id_umat', array('type' => 'hidden', 'id' => 'idUmat'));
			?>

      <div class="form-group">
				<?php
					echo $this->Form->label('Komuni.lingkungan', 'Lingkungan', 'col-md-2 control-label');
					echo $this->Form->input('Komuni.lingkungan',
						array(
							'label'			     => false,
							'placeholder'	   => "Lingkungan",
              'id'             => 'lingkungan',
							'class'			     => "form-control input-xlarge",
							'div'			       => array('class'=>'col-md-4')));
				?>

			</div>

			<div class="form-group">
				<?php
					echo $this->Form->label('Komuni.stasi_baptis','Kode Stasi', 'col-md-2 control-label');
					echo $this->Form->input('Komuni.kode_stasi',
						array(
							'label'			   => false,
							'type'    		 => 'number',
							'id' 			     => 'kodeStasi',
							'value'			   => 07300,
							'placeholder'	 => "Kode Stasi",
							'class'			   => "form-control input-xlarge",
							'div'			     => array('class' => 'col-md-4')));
				?>
			</div>

			<div class="form-group">
			<?php
				echo $this->Form->label('Komuni.id_liber','ID Liber', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.id_liber',
					array(
						'label'			    => false,
						'type'    		  => 'number',
						'id' 			      => 'idLiber',
						'placeholder'	  => "ID Liber",
						'class'			    => "form-control input-xlarge",
						'div'			      => array('class' => 'col-md-4')));
				?>
			</div>

			<div class="form-group">
				<?php
					echo $this->Form->label('Komuni.nomor_urut','Nomor Urut', 'col-md-2 control-label');
					echo $this->Form->input('Komuni.no_urut',
						array(
							'label'			   => false,
							'type'    		 => 'number',
							'id' 			     => 'nomorUrut',
							'placeholder'	 => "Nomor Urut",
              'required',
							'class'			   => "form-control input-xlarge",
							'div'			     => array('class' => 'col-md-4')));
				?>
			</div>

			<div class="form-group">
				<?php
					echo $this->Form->label('Umat.nama', 'Nama ', 'col-md-2 control-label');
					echo $this->Form->input('Komuni.nama',
						array(
							'label'			   => false,
							'placeholder'	 => "nama",
              'required',
              'id'           => 'nama_umat',
							'class'			   => "form-control input-xlarge",
							'div'			     => array('class'=>'col-md-4')));
				?>
        <div class="col-md-2">
          <i class="fa fa-times fa-2x" style="color:red" id="cek_umat" cek="false"></i>
        </div>
			</div>

			<div class="form-group">
				<?php
					//value nama baptis sementara
					echo $this->Form->label('Umat.nama_baptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('Komuni.nama_baptis',
						array(
							'label'			     => false,
							'placeholder'	   => "Nama Baptis",
              'id'             => 'namaBaptis',
              //'disabled'       => 'disabled',
							'class'			     => "form-control input-xlarge",
							'div'			       => array('class'=>'col-md-4')));
				?>

			</div>

      <div class="form-group">
				<?php
				//value sementara
				echo $this->Form->label('Umat.tempattgllahir', 'Tempat/Tanggal Lahir', 'col-md-2 control-label');

				echo $this->Form->input('Komuni.tempat_lahir',
					array(
						'label'			      => false,
						'id' 			        => 'tempatLahir',
						'placeholder'	    => "Tempat Lahir",
						//'disabled'		    => 'disabled',
						'class'			      => "form-control input-xlarge",
						'div'			        => array('class' => 'col-md-4')));

				echo $this->Form->input('Komuni.tanggal_lahir',
					array(
						'label'			    => false,
						'class'			    => "form-control ",
						'div'			      => array('class'=>'col-md-6'),
						//'value'			=> $this->Session->read('Auth.User.tanggal_lahir'),
            'id'            => 'tglLahir',
						//'disabled'		  => 'disabled',
						'dateFormat'  	=> 'DMY',
						'minYear' 	   	=> date('Y') - 115, 'maxYear' => date('Y') - 0
					));
				?>
			</div>

			<div class="form-group">
				<?php
				//value sementara
				echo $this->Form->label('Umat.tempattglbaptis', 'Tempat/Tanggal Dibaptis', 'col-md-2 control-label');

				echo $this->Form->input('Komuni.tempat_baptis',
					array(
						'label'			  => false,
						'id' 			    => 'tempatBaptis',
						'placeholder'	=> "Tempat Baptis",
						//'disabled'		=> 'disabled',
						'class'			  => "form-control input-xlarge",
						'div'			    => array('class' => 'col-md-4')));

				echo $this->Form->input('Komuni.tanggal_baptis',
					array(
						'label'			  => false,
						'class'			  => "form-control ",
						'div'		     	=> array('class'=>'col-md-6'),
            'id' 			    => 'tglBaptis',
						//'disabled'		=> 'disabled',
						'dateFormat' 	=> 'DMY',
						'minYear' 		=> date('Y') - 115, 'maxYear' => date('Y') - 0
					));
				?>
			</div>

      <div class="form-group">

				<?php
				echo $this->Form->label('Komuni.bukuBaptis', 'Buku Baptis', 'col-md-2 control-label');

				echo $this->Form->input('Komuni.buku_baptis',
					array(
						'label'			    => false,
            'id' 			    => 'bukuBaptis',
            //'disabled'		 => 'disabled',
						'placeholder'	  => "Buku Baptis",
            'required',
						'class'			    => "form-control input-xlarge",
						'div'			      => array('class'=>'col-md-4')));

        echo $this->Form->input('Komuni.no_buku',
					array(
						'label'			    => false,
            'id' 			    => 'noBukuBaptis',
            //'disabled'		 => 'disabled',
						'placeholder'	  => "Nomor Buku",
            'required',
						'class'			    => "form-control input-xlarge",
						'div'			      => array('class'=>'col-md-4')));
				?>
			</div>

			<div class="form-group">
				<?php
					echo $this->Form->label('Umat.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label');
					echo $this->Form->input('Umat.jenis_kelamin', array(
					    'label'        =>  false,
					    'class'        =>  "form-control ",
              'id'           => 'jnskel',
              //'disabled'		 => 'disabled',
					    'div'          =>  array('class'=>'col-md-4')));
					echo $this->Form->label('ketGender', 'L=Laki-laki, P=Perempuan', 'control-label');
				?>
			</div>

			<div class="form-group">
				<?php
				//value sementara
				echo $this->Form->label('Umat.nama_ayah', 'Nama Ayah', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.ayah',
					array(
						'label'			      => false,
						'id' 			        => 'namaAyah',
						'placeholder'	    => "Nama Ayah",
						//'disabled'		    => 'disabled',
						'class'			      => "form-control input-xlarge",
						'div'			        => array('class' => 'col-md-4')));
				?>
			</div>

			<div class="form-group">
				<?php
				//value sementara
				echo $this->Form->label('Umat.nama_ibu', 'Nama Ibu', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.ibu',
					array(
						'label'			    => false,
						'id' 			      => 'namaIbu',
						'placeholder'	  => "Nama Ibu",
						//'disabled'		  => 'disabled',
						'class'			    => "form-control input-xlarge",
						'div'			      => array('class' => 'col-md-4')));
				?>
			</div>

      <div class="form-group">
				<?php
				echo $this->Form->label('Komuni.alamatOrtu', 'Alamat Orang Tua', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.alamat_orangtua',
					array(
						'label'			      => false,
						'id' 			        => 'alamatOrtu',
						'placeholder'	    => "Alamat Orangtua",
						//'disabled'		    => 'disabled',
						'class'			      => "form-control input-xlarge",
						'div'			        => array('class' => 'col-md-4')));
				?>
			</div>

      <div class="form-group">
				<?php
				echo $this->Form->label('Komuni.noTelpOrtu', 'Telp/HP', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.no_telp_orangtua',
					array(
						'label'			      => false,
						'id' 			        => 'noTelpOrangtua',
						'placeholder'	    => "Telp/HP",
						//'disabled'		    => 'disabled',
						'class'			      => "form-control input-xlarge",
						'div'			        => array('class' => 'col-md-4')));
				?>
			</div>

			<div class="form-group">
				<?php
				echo $this->Form->label('Umat.tglkomuni', 'Tanggal Komuni Pertama', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.tanggal',
					array(
						'label'			  => false,
						'type'		    => 'date',
						'class'			  => "form-control ",
						'div'			    => array('class'=>'col-md-6'),
            'required',
						'dateFormat' 	=> 'DMY',
						'minYear' 		=> date('Y') - 115, 'maxYear' => date('Y') - 0
					));

				/*echo $this->Form->input('Umat.stskomuni', array('type' => 'hidden', 'value'=> 1));*/
				?>
			</div>

			<div class="form-group">

				<?php
				echo $this->Form->label('Komuni.tempat', 'Tempat Komuni Pertama', 'col-md-2 control-label');
				echo $this->Form->input('Komuni.tempat',
					array(
						'label'			    => false,
						'placeholder'	  => "Tempat Komuni",
            'required',
						'class'			    => "form-control input-xlarge",
						'div'			      => array('class'=>'col-md-4')));
				?>
			</div>

			<p>&nbsp;</p>

			<div class="form-group">
				<label class="col-md-2"></label>
				<div class="col-md-10">
				  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>

				  <button id="buttonbtlkom" name="buttonbtlkom" class="btn btn-danger">Batal</button>
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
