<?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js','jquery-ui.min.js')); ?>
<?php 
$val = "";
foreach($kk as $key => $value){
	$val = $val.'"'.$value.'",';
	
}

$valpend = "";
foreach($pendidikan as $key => $value){
	$valpend = $valpend.'"'.$value.'",';
		
}

$valpend = "";
foreach($pendidikan as $key => $value){
	$valpend = $valpend.'"'.$value.'",';
		
}

$valbidstudi = "";
foreach($bidangstudi as $key => $value){
	$valbidstudi = $valbidstudi.'"'.$value.'",';
		
}

$valkerja = "";
foreach($pekerjaan as $key => $value){
	$valkerja = $valkerja.'"'.$value.'",';
		
}

$valsuku = "";
foreach($suku as $key => $value){
	$valsuku = $valsuku.'"'.$value.'",';
		
}

$valtempat = "";
foreach($tempattinggal as $key => $value){
	$valtempat = $valtempat.'"'.$value.'",';
		
}
?>
<?php
$this->assign('title', 'Halaman Edit Data Jemaat');
?>
<br><br>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Edit Data Jemaat </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Edit Data Jemaat</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('Umat',array('class'=>'form-horizontal', 'controller'=>'umats', 'action'=>'editAdmin')); ?>	
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"Nama", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.kk', 'KK
						', 'col-md-2 control-label');
					echo $this->Form->input('kk', array('label'=>false,  'value'=> $kk[$this->request->data['Umat']['id_kk']],'placeholder'=>"Kk", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));

					?>
					<span id="gambarkk" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.hubkk', 'Hubungan Kk
						', 'col-md-2 control-label');
					echo $this->Form->input('id_hubkk', array(
								'options' => $hubkk,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>


				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.pernikahan', 'Status Pernikahan
						', 'col-md-2 control-label');
					echo $this->Form->input('id_statuspernikahan', array(
								'options' => $statuspernikahan,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.pendidikan', 'Pendidikan', 'col-md-2 control-label');
					echo $this->Form->input('pendidikan', array('label'=>false, 'value'=> $pendidikan[$this->request->data['Umat']['id_pendidikan']], 'placeholder'=>"Pendidikan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarpendidikan" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.bidangstudi', 'Bidang Studi
						', 'col-md-2 control-label');
					echo $this->Form->input('bidstudi', array('label'=>false, 'value'=> $bidangstudi[$this->request->data['Umat']['id_bidstudi']],'placeholder'=>"Bidang Studi", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarbidstudi" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.pekerjaan', 'Pekerjaan', 'col-md-2 control-label');
					echo $this->Form->input('pekerjaan', array('label'=>false, 'value'=> $pekerjaan[$this->request->data['Umat']['id_pekerjaan']],'placeholder'=>"Pekerjaan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarpekerjaan" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
 
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.suku', 'Suku
						', 'col-md-2 control-label');
					echo $this->Form->input('suku', array('label'=>false, 'value'=> $suku[$this->request->data['Umat']['id_suku']],'placeholder'=>"Suku", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarsuku" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
					
				</div>


				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tempattinggal', 'Tempat Tinggal
						', 'col-md-2 control-label');
					echo $this->Form->input('tempattinggal', array('label'=>false, 'value'=> $tempattinggal[$this->request->data['Umat']['id_tempattinggal']],'placeholder'=>"Tempat Tinggal", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambartempattinggal" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.lama_tinggal', 'Lama Tinggal
						', 'col-md-2 control-label');
					echo $this->Form->input('lamatinggal', array('label'=>false, 'placeholder'=>"Lama Tinggal", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statustt', 'Status Tetap/ Temporer
						', 'col-md-2 control-label');
					echo $this->Form->input('statusTT', array(
								'options' => $statustt,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.keaktifanparoki', 'Keaktifan Paroki
						', 'col-md-2 control-label');
					echo $this->Form->input('id_keaktifanparoki', array(
								'options' => $keaktifanparoki,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.keaktifangereja', 'Keaktifan Gereja
						', 'col-md-2 control-label');
					echo $this->Form->input('id_keaktifangereja', array(
								'options' => $keaktifangereja,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>


				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statuskekatolikan', 'Status Kekatolikan
						', 'col-md-2 control-label');
					echo $this->Form->input('id_statuskekatolikan', array(
								'options' => $statuskekatolikan,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statusekonomi', 'Status Ekonomi
						', 'col-md-2 control-label');
					echo $this->Form->input('id_statusekonomi', array(
								'options' => $statusekonomi,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

 				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statuskesehatan', 'Status Kesehatan
						', 'col-md-2 control-label');
					echo $this->Form->input('id_statuskesehatan', array(
								'options' => $statuskesehatan,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
 
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statussosial', 'Status Sosial
						', 'col-md-2 control-label');
					echo $this->Form->input('id_statussosial', array(
								'options' => $statussosial,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>


								<div class="form-group">
					<?php
					$jeniskk = array(
							'0'    => 'RT Biasa',
						  '1'    => 'RT Khusus',

					);
					echo $this->Form->label('Umat.statustt', 'Jenis Kk
						', 'col-md-2 control-label');
					echo $this->Form->input('jeniskk', array(
								'options' => $jeniskk,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.statuspindah', 'Status Pindah
						', 'col-md-2 control-label');
					echo $this->Form->input('statuspindah', array(
								'options' => $statuspindah,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.kematian', 'Status Kematian
						', 'col-md-2 control-label');
					echo $this->Form->input('statuskematian', array(
								'options' => $kematian,
								'label'=>false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>


				

  				
				

				

				

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbatal" name="button2id" class="btn btn-danger">Batal</button>
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
<script type="text/javascript">
$( "#gambarkk" ).hide();
$( "#gambarpendidikan" ).hide();
$( "#gambarbidstudi" ).hide();
$( "#gambarpekerjaan" ).hide();
$( "#gambarsuku" ).hide();
$( "#gambartempattinggal" ).hide();


var myarray =[<?php echo $val;?>];
var myarray2 =[<?php echo $valpend;?>];
var myarray3 =[<?php echo $valbidstudi;?>];
var myarray4 =[<?php echo $valkerja;?>];
var myarray5 =[<?php echo $valsuku;?>];
var myarray6 =[<?php echo $valtempat;?>];
	
	$( "#UmatKk" ).autocomplete({
      source: myarray
    });

    $( "#UmatPendidikan" ).autocomplete({
      source: myarray2
    });
    $( "#UmatBidstudi" ).autocomplete({
      source: myarray3
    });
    
    $( "#UmatPekerjaan" ).autocomplete({
      source: myarray4
    });
    $( "#UmatSuku" ).autocomplete({
      source: myarray5
    });
    
    $( "#UmatTempattinggal" ).autocomplete({
      source: myarray6
    });

function cekAll(){
var cek = jQuery.inArray($( "#UmatKk" ).val(), myarray);
var cek2 = jQuery.inArray($( "#UmatPendidikan" ).val(), myarray2);
var cek3 = jQuery.inArray($( "#UmatBidstudi" ).val(), myarray3);
var cek4 = jQuery.inArray($( "#UmatPekerjaan" ).val(), myarray4);
var cek5 = jQuery.inArray($( "#UmatSuku" ).val(), myarray5);
var cek6 = jQuery.inArray($( "#UmatTempattinggal" ).val(), myarray6);
if(cek != -1 && cek2 != -1 && cek3 != -1 && cek4 != -1 && cek5 != -1 && cek6 != -1) $('#button1id').prop('disabled', false);
}
// Kk    
    
	$( "#UmatKk" ).keyup(function(){
		
		if(jQuery.inArray($( "#UmatKk" ).val(), myarray) == -1){
		$("#gambarkk").css({'color':'#E31E1E'});
		$("#gambarkk").attr('class', '	fa fa-times fa-2x');
		$( "#gambarkk" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambarkk").css({'color':'#00FF00'});
			$("#gambarkk").attr('class', 'fa fa-check fa-2x');
			$( "#gambarkk" ).show();
	//		$('#button1id').prop('disabled', false);
	}
	
	cekAll();

    }); 

// Pendidikan

	$( "#UmatPendidikan" ).keyup(function(){
		
		if(jQuery.inArray($( "#UmatPendidikan" ).val(), myarray2) == -1){
		$("#gambarpendidikan").css({'color':'#E31E1E'});
		$("#gambarpendidikan").attr('class', '	fa fa-times fa-2x');
		$( "#gambarpendidikan" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambarpendidikan").css({'color':'#00FF00'});
			$("#gambarpendidikan").attr('class', 'fa fa-check fa-2x');
			$( "#gambarpendidikan" ).show();
	//		$('#button1id').prop('disabled', false);
	}
	cekAll();
	    }); 

// BidangStudi
$( "#UmatBidstudi" ).keyup(function(){
		
		if(jQuery.inArray($( "#UmatBidstudi" ).val(), myarray3) == -1){
		$("#gambarbidstudi").css({'color':'#E31E1E'});
		$("#gambarbidstudi").attr('class', '	fa fa-times fa-2x');
		$( "#gambarbidstudi" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambarbidstudi").css({'color':'#00FF00'});
			$("#gambarbidstudi").attr('class', 'fa fa-check fa-2x');
			$( "#gambarbidstudi" ).show();
	//		$('#button1id').prop('disabled', false);
	}
	cekAll();
    });

// Pekerjaan
$( "#UmatPekerjaan" ).keyup(function(){
		
		if(jQuery.inArray($( "#UmatPekerjaan" ).val(), myarray4) == -1){
		$("#gambarpekerjaan").css({'color':'#E31E1E'});
		$("#gambarpekerjaan").attr('class', '	fa fa-times fa-2x');
		$( "#gambarpekerjaan" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambarpekerjaan").css({'color':'#00FF00'});
			$("#gambarpekerjaan").attr('class', 'fa fa-check fa-2x');
			$( "#gambarpekerjaan" ).show();
	//		$('#button1id').prop('disabled', false);
	}
cekAll();
    });

// Suku
$( "#UmatSuku" ).keyup(function(){
		
		if(jQuery.inArray($( "#UmatSuku" ).val(), myarray5) == -1){
		$("#gambarsuku").css({'color':'#E31E1E'});
		$("#gambarsuku").attr('class', '	fa fa-times fa-2x');
		$( "#gambarsuku" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambarsuku").css({'color':'#00FF00'});
			$("#gambarsuku").attr('class', 'fa fa-check fa-2x');
			$( "#gambarsuku" ).show();
	//		$('#button1id').prop('disabled', false);
	}
	cekAll();
    });

// Tempat Tinggal
$( "#UmatTempattinggal" ).keyup(function(){
		if(jQuery.inArray($( "#UmatTempattinggal" ).val(), myarray6) == -1){
		$("#gambartempattinggal").css({'color':'#E31E1E'});
		$("#gambartempattinggal").attr('class', '	fa fa-times fa-2x');
		$( "#gambartempattinggal" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambartempattinggal").css({'color':'#00FF00'});
			$("#gambartempattinggal").attr('class', 'fa fa-check fa-2x');
			$( "#gambartempattinggal" ).show();
	//		$('#button1id').prop('disabled', false);
	}
cekAll();
    });
</script>