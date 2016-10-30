<style>
input[readonly]:hover{
  cursor: not-allowed;
}
</style>

<script>
$(document).ready(function(){
  $('.datepicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd',
  });

});
</script>

<?php
$this->assign('title', 'Halaman Edit Krisma');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Krisma', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Ubah Data Krisma
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Krisma</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Krisma', array('url' => '/krismas/newEdit','class'=>'form-horizontal', 'role'=>'form',));
      echo $this->Form->input('id', array('type' => 'hidden', 'value'=> $krisma['Krisma']['id']));
      echo $this->Form->input('id_umat', array('type' => 'hidden', 'id' => 'idUmat', 'value' => $krisma['Krisma']['id_umat']));
			?>
        <div class="form-group">
          <?php
          echo $this->Form->label('kodeStasi', 'Kode Stasi ', 'col-md-2 control-label');
          echo $this->Form->input('kode_stasi', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'value'=> $krisma['Krisma']['kode_stasi'],
                        'div'=>array('class'=>'col-md-4')));
          ?>
        </div>

				<div class="form-group">
					<?php
					echo $this->Form->label('lingkungan', 'Lingkungan ', 'col-md-2 control-label');
					echo $this->Form->input('lingkungan', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['lingkungan'],
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
					?>

				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('namaDiri', 'Nama Diri ', 'col-md-2 control-label');
					echo $this->Form->input('nama_diri', array(
                        'label' => false,
                        'id'    => 'namaDiriKrisma',
                        'value' => ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['nama_diri'] : $krisma['Umat']['nama'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class' => "form-control input-xlarge",
                        'div'   => array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <?php
					echo $this->Form->label('namaBaptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('nama_baptis', array(
                        'label' => false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['nama_baptis'] : $krisma['Umat']['namabaptis'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class' => "form-control ",
                        'id'    => 'namaBaptis',
                        'div'   => array('class'=>'col-md-4')));
					?>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('tempatLahir', 'Tempat Lahir', 'col-md-2 control-label');
          echo $this->Form->input('tempat_lahir', array(
                        'label'=>false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tempat_lahir'] : $krisma['Umat']['tmplahir'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control ",
                        'id'   => 'tempatLahir',
                        'div'=>array('class'=>'col-md-4')));
          ?>
        </div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalLahir', 'Tanggal Lahir', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" value="<?php echo ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tanggal_lahir'] : $krisma['Umat']['tgl_lahir']; ?>" name="data[Krisma][tanggal_lahir]" id="tanggalLahir" class="form-control datepicker" role="date" <?php echo ($krisma['Krisma']['id_umat'] == 0) ?  : 'disabled'; ?>>
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatBaptis', 'Tempat Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tempat_baptis', array(
                        'label'=>false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tempat_baptis'] : $krisma['Umat']['tmpbaptis'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control ",
                        'id'   => 'tempatBaptis',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalBaptis', 'Tanggal Baptis', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" value="<?php echo ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tanggal_baptis'] : $krisma['Umat']['tglbaptis'] ?>" name="data[Krisma][tanggal_baptis]" id="tanggalBaptis" class="form-control datepicker" role="date" <?php echo ($krisma['Krisma']['id_umat'] == 0) ?  : 'disabled'; ?>>
          </div>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('bukuBaptis', 'Buku Baptis', 'col-md-2 control-label');
					echo $this->Form->input('buku_baptis', array(
                        'label'=>false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['buku_baptis'] : $krisma['Umat']['liberbap'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control ",
                        'id'   => 'bukuBaptis',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatKomuni', 'Tempat Komuni', 'col-md-2 control-label');
					echo $this->Form->input('tempat_komuni', array(
                        'label'=>false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tempat_komuni'] : $krisma['Umat']['tmpkomuni'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control ",
                        'id'   => 'tempatKomuni',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalKomuni', 'Tangggal Komuni', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" value="<?php echo ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['tanggal_komuni'] : $krisma['Umat']['tglkomuni'] ?>" name="data[Krisma][tanggal_komuni]" id="tanggalKomuni" class="form-control datepicker" role="date" <?php echo ($krisma['Krisma']['id_umat'] == 0) ?  : 'disabled'; ?>>
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('alamatDiri', 'Alamat Krismawan/ti', 'col-md-2 control-label');
					echo $this->Form->input('alamat_diri', array(
                        'label'=>false,
                        'value'=> ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['alamat_diri'] : $krisma['Umat']['alamat'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control ",
                        'id'   => 'alamatDiri',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('noHpDiri', 'Telp/Hp', 'col-md-2 control-label');
					echo $this->Form->input('no_hp_diri', array(
                        'label'     =>false,
                        'value'     => ($krisma['Krisma']['id_umat'] == 0) ? $krisma['Krisma']['no_hp_diri'] : $krisma['Umat']['tlp'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'     =>"form-control ",
                        'id'        => 'noHpDiri',
                        'div'       =>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatKrisma', 'Tempat Krisma', 'col-md-2 control-label');
					echo $this->Form->input('tempat_krisma', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'value' => $krisma['Krisma']['tempat_krisma'],
                        'placeholder'=>'Tempat Krisma',
                        'id'   => 'tempatKrisma',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('kotaKrisma', 'Kota Tempat Krisma', 'col-md-2 control-label');
					echo $this->Form->input('kota_krisma', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'value' => $krisma['Krisma']['kota_krisma'],
                        'placeholder'=>'Kota Krisma',
                        'id'   => 'kotaKrisma',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalKrisma', 'Tanggal Krisma', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" value="<?php echo $krisma['Krisma']['tanggal_krisma']; ?>" name="data[Krisma][tanggal_krisma]" id="tanggalKrisma" class="form-control datepicker" role="date">
          </div>
				</div>

				<div class="form-group">

					<?php
					echo $this->Form->label('namaPelindungKrisma', 'Nama Pelindung Krisma', 'col-md-2 control-label');
					echo $this->Form->input('nama_pelindung_krisma', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['nama_pelindung_krisma'],
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('namaEmbanKrisma', 'Nama Lengkap Emban Penguatan', 'col-md-2 control-label');
					echo $this->Form->input('nama_emban_krisma', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['nama_emban_krisma'],
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('namaAyah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('nama_ayah', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['nama_ayah'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control input-xlarge",
                        'id'        => 'namaAyah',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('namaIbu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('nama_ibu', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['nama_ibu'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control input-xlarge",
                        'id'        => 'namaIbu',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('alamatOrangtua', 'Alamat Orangtua', 'col-md-2 control-label');
					echo $this->Form->input('alamat_orangtua', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['alamat_orangtua'],
                        'disabled'  => ($krisma['Krisma']['id_umat'] == 0) ? '' : 'disabled',
                        'class'=>"form-control input-xlarge",
                        'id'        => 'alamatOrtu',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('noHpOrangtua', 'Telp/Hp', 'col-md-2 control-label');
					echo $this->Form->input('no_hp_orangtua', array(
                        'label'=>false,
                        'value'=> $krisma['Krisma']['no_hp_orangtua'],
                        'class'=>"form-control input-xlarge",
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>


				<p>&nbsp;</p>


				<!-- <div class="form-group">
					<?php




					/*echo $this->Form->input('Umat.stskrisma', array('type' => 'hidden', 'value'=> true));*/
					?>
				</div> -->


				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbtlper" name="buttonbtlper" class="btn btn-danger">Batal</button>
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
