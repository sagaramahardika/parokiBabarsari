<style>
input[readonly]:hover{
  cursor: not-allowed;
}

.styleDataTable{
  padding-left: 5%;
  padding-right: 5%;
}

th, td {
    border: 1px solid black;
}

tr:last-child > td{
  border: 0;
}

</style>

<script>
$(document).ready(function(){
  $('.datepicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd',
  });

  $("#btnTambahSakramen").click(function(e){
    e.preventDefault();
  });

  $("#tambahSakramen").click(function(){
    $namaSakramen = $("#namaSakramen").val();
    $pelayanSakramen = $("#pelayanSakramen").val();

    $("tbody").append("<tr><input type='hidden' name='data[KematianSakramen][nama_sakramen][]' value=" + $namaSakramen +"><input type='hidden' name='data[KematianSakramen][pelayan_sakramen][]' value=" + $pelayanSakramen +"><td style='text-align: center;'>" + $namaSakramen + "</td><td style='text-align: center;'>" + $pelayanSakramen + "</td></tr>")

    $("#namaSakramen").val("");
    $("#pelayanSakramen").val("");
  })

});
</script>

<?php
$this->assign('title', 'Halaman Tambah Kematian');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Kematian', array('action'=>'newRead'), array('escape'=>false)) . ' / ';

?>
<i class="fa fa-pencil"></i> Tambah Data Kematian
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Kematian</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Kematian', array('url' => '/kematians/newTambah','class'=>'form-horizontal', 'role'=>'form',));
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
                        'class'=>"form-control input-xlarge",
                        'placeholder'=>'Nama Lingkungan',
                        'div'=>array('class'=>'col-md-4')));
					?>

				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('namaDiri', 'Nama Diri ', 'col-md-2 control-label');
					echo $this->Form->input('nama_diri', array(
                        'label' => false,
                        'id'    => 'namaDiriKematian',
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
            <input type="text" name="data[Kematian][tanggal_lahir]" id="tanggalLahir" class="form-control datepicker" role="date" placeholder=" Tanggal Lahir" readonly="">
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatMeninggal', 'Tempat Meninggal', 'col-md-2 control-label');
					echo $this->Form->input('tempat_meninggal', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Meninggal',
                        'id'   => 'tempatMeninggal',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalMeninggal', 'Tanggal Meninggal', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Kematian][tanggal_meninggal]" id="tanggalMeninggal" class="form-control datepicker" role="date" placeholder=" Tanggal Meninggal" readonly="">
          </div>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tempatPemakaman', 'Tempat Pemakaman', 'col-md-2 control-label');
					echo $this->Form->input('tempat_pemakaman', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Pemakaman',
                        'id'   => 'tempatPemakaman',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('tanggalPemakaman', 'Tanggal Pemakaman', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Kematian][tanggal_pemakaman]" id="tanggalPemakaman" class="form-control datepicker" role="date" placeholder=" Tanggal Pemakaman" readonly="">
          </div>
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
					echo $this->Form->label('tanggalBaptis', 'Tangggal Baptis', 'col-md-2 control-label');
					?>
          <div class="col-md-4">
            <input type="text" name="data[Kematian][tanggal_baptis]" id="tanggalBaptis" class="form-control datepicker" role="date" placeholder=" Tanggal Baptis" readonly="">
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

        <div class="form-group" style="margin-left: 5%;">
          <button id="btnTambahSakramen" class="btn btn-primary" data-toggle="modal" data-target="#modalTambah">Tambah Sakramen</button>
        </div>

        <div class="styleDataTable">
          <table class="table table-bordered table-striped table-condensed" >
            <thead>
              <th style="text-align: center;">Sakramen</th>
              <th style="text-align: center;">Pelayan Sakramen</th>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>


        <br>

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

      <!-- Modal -->
  <div id="modalTambah" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Tambah Data Sakramen</h4>
        </div>
        <div class="modal-body">
          <form class="form-horizontal">
	      			<div class="form-group">
  					    <label for="kode" class="col-sm-3 control-label">Nama Sakramen</label>
  					    <div class="col-sm-9">
  					       	<input id="namaSakramen" type="text" class="form-control" placeholder="Nama Sakramen">
  					    </div>
  				    </div>
  				    <div class="form-group">
  					    <label for="nama" class="col-sm-3 control-label">Pelayan Sakramen</label>
  					    <div class="col-sm-9">
  					       	<input id="pelayanSakramen" type="text" class="form-control" placeholder="Nama Pelayan Sakramen">
  					    </div>
  				    </div>
		        </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-sm btn-primary" id="tambahSakramen" data-dismiss="modal">Tambah</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
		</div>
	</div>
</div>
<!-- /.row -->
