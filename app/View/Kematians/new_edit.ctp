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

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Kematian', array('action'=>'index'), array('escape'=>false)) . ' / ';

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
      echo $this->Form->input('id_umat', array('type' => 'hidden', 'id' => 'idUmat', 'value' => $kematian['Kematian']['id_umat']));
			?>

      <div class="form-group">
        <?php
        echo $this->Form->label('kodeStasi', 'Kode Stasi ', 'col-md-2 control-label');
        echo $this->Form->input('kode_stasi', array(
                      'label'=>false,
                      'class'=>"form-control input-xlarge",
                      'value'=> $kematian['Kematian']['kode_stasi'],
                      'div'=>array('class'=>'col-md-4')));
        ?>

      </div>

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
                      'value'=> ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['nama_diri'] : $kematian['Umat']['nama'],
                      'id'    => 'namaDiriKematian',
                      'class' => "form-control input-xlarge",
                      'div'   => array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('namaBaptis', 'Nama Baptis', 'col-md-2 control-label');
        echo $this->Form->input('nama_baptis', array(
                      'label' => false,
                      'value'=> ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['nama_baptis'] : $kematian['Umat']['namabaptis'],
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
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
                      'value'=> ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['tempat_lahir'] : $kematian['Umat']['tmplahir'],
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
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
          <input type="text" value="<?php echo ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['tanggal_lahir'] : $kematian['Umat']['tgl_lahir'] ?>" name="data[Kematian][tanggal_lahir]" id="tanggalLahir" class="form-control datepicker" role="date" readonly <?php echo ($kematian['Kematian']['id_umat'] == 0) ?  : 'disabled'; ?>>
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
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
                      'id'        => 'namaAyah',
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
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
                      'id'        => 'namaIbu',
                      'class'=>"form-control input-xlarge",
                      'div'=>array('class'=>'col-md-4')));
        ?>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('tempatBaptis', 'Tempat Baptis', 'col-md-2 control-label');
        echo $this->Form->input('tempat_baptis', array(
                      'label'=>false,
                      'value'=> ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['tempat_baptis'] : $kematian['Umat']['tmpbaptis'],
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
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
          <input type="text" value="<?php echo ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['tanggal_baptis'] : $kematian['Umat']['tglbaptis']; ?>" name="tanggal_baptis" id="tanggalBaptis" class="form-control datepicker" role="date" readonly <?php echo ($kematian['Kematian']['id_umat'] == 0) ?  : 'disabled'; ?>>
        </div>
      </div>

      <div class="form-group">
        <?php
        echo $this->Form->label('bukuBaptis', 'Buku Baptis', 'col-md-2 control-label');
        echo $this->Form->input('buku_baptis', array(
                      'label'=>false,
                      'value'=> ($kematian['Kematian']['id_umat'] == 0) ? $kematian['Kematian']['buku_baptis'] : $kematian['Umat']['liberbap'],
                      'disabled'  => ($kematian['Kematian']['id_umat'] == 0) ? '' : 'disabled',
                      'id'        => 'bukuBaptis',
                      'class'=>"form-control ",
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
            <?php foreach($kematianSakramens as $kematianSakramen):?>
              <tr>
                <input type='hidden' name='data[KematianSakramen][id][]' value="<?php echo $kematianSakramen['KematianSakramen']['id']; ?>">
                <input type='hidden' name='data[KematianSakramen][nama_sakramen][]' value="<?php echo $kematianSakramen['KematianSakramen']['nama_sakramen']; ?>">
                <input type='hidden' name='data[KematianSakramen][pelayan_sakramen][]' value="<?php echo $kematianSakramen['KematianSakramen']['pelayan_sakramen']; ?>">
                <td style='text-align: center;'><?php echo $kematianSakramen['KematianSakramen']['nama_sakramen']; ?></td>
                <td style='text-align: center;'><?php echo $kematianSakramen['KematianSakramen']['pelayan_sakramen']; ?></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>

      <br>

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonBtlKematian" class="btn btn-danger">Batal</button>
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
