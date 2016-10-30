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

    $('#buttonBtlKematian').click(function(e){
      e.preventDefault();
      location.href="/paroki_bbs/kematians";
    });

  });
</script>

<?php
$this->assign('title', 'Halaman Edit Kematian');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Kematian', array('action'=>'newRead'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Ubah Data Kematian
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Kematian</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Kematian', array('url' => '/kematians/newEdit','class'=>'form-horizontal', 'role'=>'form',));
      echo $this->Form->input('id', array('type' => 'hidden', 'value'=> $kematian['Kematian']['id']));
			?>

      <div class="form-group">
        <?php
        echo $this->Form->label('lingkungan', 'Lingkungan ', 'col-md-2 control-label');
        echo $this->Form->input('lingkungan', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['lingkungan'],
                      'class'=>"form-control input-xlarge",
                      'div'=>array('class'=>'col-md-4')));
        ?>

      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('namaDiri', 'Nama Diri ', 'col-md-2 control-label');
        echo $this->Form->input('nama_diri', array(
                      'label' => false,
                      'value'=> $kematian['Kematian']['nama_diri'],
                      'id'    => 'namaDiriKrisma',
                      'class' => "form-control input-xlarge",
                      'div'   => array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('namaBaptis', 'Nama Baptis', 'col-md-2 control-label');
        echo $this->Form->input('nama_baptis', array(
                      'label' => false,
                      'value'=> $kematian['Kematian']['nama_baptis'],
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
                      'value'=> $kematian['Kematian']['tempat_lahir'],
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
          <input type="text" value="<?php echo $kematian['Kematian']['tanggal_lahir']; ?>" name="data[Krisma][tanggal_lahir]" id="tanggalLahir" class="form-control datepicker" role="date" readonly="">
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tempatMeninggal', 'Tempat Meninggal', 'col-md-2 control-label');
        echo $this->Form->input('tempat_meninggal', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['tempat_meninggal'],
                      'class'=>"form-control ",
                      'id'   => 'tempatMeninggal',
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tanggalMeninggal', 'Tanggal Meninggal', 'col-md-2 control-label');
        ?>
        <div class="col-md-4">
          <input type="text" value="<?php echo $kematian['Kematian']['tanggal_meninggal']; ?>" name="data[Kematian][tanggal_meninggal]" id="tanggalMeninggal" class="form-control datepicker" role="date" readonly="">
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tempatPemakaman', 'Tempat Pemakaman', 'col-md-2 control-label');
        echo $this->Form->input('tempat_pemakaman', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['tempat_pemakaman'],
                      'class'=>"form-control ",
                      'id'   => 'tempatPemakaman',
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tanggalPemakaman', 'Tanggal Pemakaman', 'col-md-2 control-label');
        ?>
        <div class="col-md-4">
          <input type="text" value="<?php echo $kematian['Kematian']['tanggal_pemakaman']; ?>" name="data[Kematian][tanggal_pemakaman]" id="tanggalPemakaman" class="form-control datepicker" role="date" readonly="">
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('namaAyah', 'Nama Ayah', 'col-md-2 control-label');
        echo $this->Form->input('nama_ayah', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['nama_ayah'],
                      'class'=>"form-control input-xlarge",
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">

        <?php
        echo $this->Form->label('namaIbu', 'Nama Ibu', 'col-md-2 control-label');
        echo $this->Form->input('nama_ibu', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['nama_ibu'],
                      'class'=>"form-control input-xlarge",
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tempatBaptis', 'Tempat Baptis', 'col-md-2 control-label');
        echo $this->Form->input('tempat_baptis', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['tempat_baptis'],
                      'class'=>"form-control ",
                      'id'   => 'tempatBaptis',
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tanggalBaptis', 'Tangggal Baptis', 'col-md-2 control-label');
        ?>
        <div class="col-md-4">
          <input type="text" value="<?php echo $kematian['Kematian']['tanggal_baptis']; ?>" name="tanggal_baptis" id="tanggalBaptis" class="form-control datepicker" role="date" readonly="">
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('bukuBaptis', 'Buku Baptis', 'col-md-2 control-label');
        echo $this->Form->input('buku_baptis', array(
                      'label'=>false,
                      'value'=> $kematian['Kematian']['buku_baptis'],
                      'class'=>"form-control ",
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <br>

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonBtlKematian" name="buttonbtlper" class="btn btn-danger">Batal</button>
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
