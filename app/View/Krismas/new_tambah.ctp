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
$this->assign('title', 'Halaman Tambah Krisma');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Krisma', array('action'=>'newRead'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Krisma
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Krisma</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Krisma', array('url' => '/krismas/newTambah','class'=>'form-horizontal', 'role'=>'form',));
		  echo $this->Form->input('id_umat', array('type' => 'hidden', 'id' => 'idUmat'));
			?>

      <div class="form-group">
        <?php
        echo $this->Form->label('kodeStasi', 'Kode Stasi ', 'col-md-2 control-label');
        echo $this->Form->input('kode_stasi', array(
                      'label'=>false,
                      'class'=>"form-control input-xlarge",
                      'value'=> 3776,
                      'div'=>array('class'=>'col-md-4')));
        ?>

      </div>

				<div class="form-group">
					<?php
					echo $this->Form->label('lingkungan', 'Lingkungan ', 'col-md-2 control-label');
					echo $this->Form->input('lingkungan', array(
                        'label'=>false,
                        'placeholder'=>'Nama Lingkungan',
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
                        'placeholder'=>'Nama Diri',
                        'class' => "form-control input-xlarge",
                        'div'   => array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
          <?php
					echo $this->Form->label('namaBaptis', 'Nama Baptis', 'col-md-2 control-label');
					echo $this->Form->input('nama_baptis', array(
                        'label' => false,
                        'class' => "form-control ",
                        'placeholder'=>'Nama Baptis',
                        'id'    => 'namaBaptis',
                        'div'   => array('class'=>'col-md-4')));
					?>
        </div>

        <div class="form-group">
          <?php
          echo $this->Form->label('tempatLahir', 'Tempat Lahir', 'col-md-2 control-label');
          echo $this->Form->input('tempat_lahir', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Lahir',
                        'id'   => 'tempatLahir',
                        'div'=>array('class'=>'col-md-4')));
          ?>
        </div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalLahir', 'Tanggal Lahir', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Krisma][tanggal_lahir]" id="tanggalLahir" class="form-control datepicker" role="date" placeholder="Tanggal Lahir" readonly="">
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatBaptis', 'Tempat Baptis', 'col-md-2 control-label');
					echo $this->Form->input('tempat_baptis', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Baptis',
                        'id'   => 'tempatBaptis',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalBaptis', 'Tanggal Baptis', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Krisma][tanggal_baptis]" id="tanggalBaptis" class="form-control datepicker" role="date" placeholder=" Tanggal Baptis" readonly="">
          </div>
				</div>

                <div class="form-group">
					<?php
					echo $this->Form->label('bukuBaptis', 'Buku Baptis', 'col-md-2 control-label');
					echo $this->Form->input('buku_baptis', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Buku Baptis',
                        'id'=>'bukuBaptis',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatKomuni', 'Tempat Komuni', 'col-md-2 control-label');
					echo $this->Form->input('tempat_komuni', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Komuni',
                        'id'   => 'tempatKomuni',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalKomuni', 'Tangggal Komuni', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Krisma][tanggal_komuni]" id="tanggalKomuni" class="form-control datepicker" role="date" placeholder=" Tanggal Komuni" readonly="">
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('alamatDiri', 'Alamat Krismawan/ti', 'col-md-2 control-label');
					echo $this->Form->input('alamat_diri', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Alamat Krismawan/ti',
                        'id'   => 'alamatDiri',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('noHpDiri', 'Telp/Hp', 'col-md-2 control-label');
					echo $this->Form->input('no_hp_diri', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Nomor Telp/Hp',
                        'id'   => 'noHpDiri',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalKrisma', 'Tanggal Krisma', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Krisma][tanggal_krisma]" id="tanggalKrisma" class="form-control datepicker" role="date" placeholder=" Tanggal Krisma" readonly="">
          </div>
				</div>

				<div class="form-group">

					<?php
					echo $this->Form->label('namaPelindungKrisma', 'Nama Pelindung Krisma', 'col-md-2 control-label');
					echo $this->Form->input('nama_pelindung_krisma', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nama Pelindung Krisma',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('namaEmbanKrisma', 'Nama Lengkap Emban Penguatan', 'col-md-2 control-label');
					echo $this->Form->input('nama_emban_krisma', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nama Lengkap Emban Penguatan',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('namaAyah', 'Nama Ayah', 'col-md-2 control-label');
					echo $this->Form->input('nama_ayah', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nama Ayah',
                        'id'=>'namaAyah',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('namaIbu', 'Nama Ibu', 'col-md-2 control-label');
					echo $this->Form->input('nama_ibu', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nama Ibu',
                        'id'=>'namaIbu',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('alamatOrangtua', 'Alamat Orangtua', 'col-md-2 control-label');
					echo $this->Form->input('alamat_orangtua', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Alamat Orangtua',
                        'id'=>'alamatOrtu',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">

					<?php
					echo $this->Form->label('noHpOrangtua', 'Telp/Hp', 'col-md-2 control-label');
					echo $this->Form->input('no_hp_orangtua', array(
                        'label'=>false,
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nomor Telp/Hp Orangtua',
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
