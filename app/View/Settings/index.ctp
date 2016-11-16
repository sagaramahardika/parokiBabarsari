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

  });
</script>

<?php
$this->assign('title', 'Halaman Tambah Kematian');
?>
<h3><i class="fa fa-angle-right"></i>
<?php

echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Data Kematian', array('action'=>'index'), array('escape'=>false)) . ' / ';

?>
</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Kematian</h3>
			</div>
			<div class="panel-body">

			<?php
			echo $this->Form->create('Setting', array('url' => '/settings','class'=>'form-horizontal', 'role'=>'form',));
			?>

        <div class="form-group">
					<?php
					echo $this->Form->label('romoBaptis', 'Romo Baptis', 'col-md-2 control-label');
					echo $this->Form->input('romo_baptis', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Pemakaman',
                        'value'=> $settings[0]['Setting']['value_setting'],
                        'id'   => 'tempatPemakaman',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('romoKrisma', 'Romo Krisma', 'col-md-2 control-label');
					echo $this->Form->input('romo_krisma', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Pemakaman',
                        'value'=> $settings[1]['Setting']['value_setting'],
                        'id'   => 'tempatPemakaman',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

        <div class="form-group">
					<?php
					echo $this->Form->label('romoPernikahan', 'Romo Pernikahan', 'col-md-2 control-label');
					echo $this->Form->input('romo_pernikahan', array(
                        'label'=>false,
                        'class'=>"form-control ",
                        'placeholder'=>'Tempat Pemakaman',
                        'value'=> $settings[2]['Setting']['value_setting'],
                        'id'   => 'tempatPemakaman',
                        'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Update</button>
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
