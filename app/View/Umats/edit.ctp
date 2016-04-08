<?php
$this->assign('title', 'Halaman Edit Umat');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Ubah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Data Pengguna</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('Umat', array('controller' => 'umats', 'action' => 'edit','class'=>'form-horizontal', 'role'=>'form')); ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama Lengkap', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_bidstudi', 'Bidang Studi', 'col-md-2 control-label');
					echo $this->Form->input('bidangstudi', array('id' => 'getbidstudi','label'=>false,'value'=> $bidangstudi[$this->request->data['Umat']['id_bidstudi']], 'placeholder'=>"Pekerjaan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarbidangstudi" class="fa fa-check fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_bidstudi', 'Alamat', 'col-md-2 control-label');
					echo $this->Form->input('alamat', array('label'=>false, 'placeholder'=>"Alamat", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_pekerjaan', 'Pekerjaan', 'col-md-2 control-label');
					echo $this->Form->input('pekerjaan', array('id' => 'getpekerjaan','label'=>false,'value'=> $pekerjaan[$this->request->data['Umat']['id_pekerjaan']], 'placeholder'=>"Pekerjaan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarpekerjaan" class="fa fa-check fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_bidstudi', 'Status Sosial', 'col-md-2 control-label');
					echo $this->Form->input('id_statussosial', array(
								'options' => $statussosials,
								'label' => false,
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_bidstudi', 'Suku', 'col-md-2 control-label');
					echo $this->Form->input('suku', array('id' => 'getsuku','label'=>false,'value'=> $suku[$this->request->data['Umat']['id_suku']], 'placeholder'=>"Pekerjaan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarsuku" class="fa fa-check fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.id_bidstudi', 'Pendidikan', 'col-md-2 control-label');
					echo $this->Form->input('pendidikan', array('id' => 'getpendidikan','label'=>false,'value'=> $pendidikan[$this->request->data['Umat']['id_pendidikan']] ,'placeholder'=>"Pekerjaan", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<span id="gambarpendidikan" class="fa fa-check fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				<p>&nbsp;</p>				
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="btnedit" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonkelahiran" name="button2id" class="btn btn-danger">Batal</button>
					</div>
				</div>
			  <?php
			  echo $this->Form->end();
			  ?>

			</div>
		</div>
	</div>
</div>
<?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js','jquery-ui.min.js')); ?>
<?php 
$valbidstudi = "";
foreach($bidangstudi as $key => $value)
	$valbidstudi = $valbidstudi.'"'.$value.'",';
$valpendidikan = "";
foreach($pendidikan as $key => $value)
	$valpendidikan = $valpendidikan.'"'.$value.'",';
$valsuku = "";
foreach($suku as $key => $value)
	$valsuku = $valsuku.'"'.$value.'",';
$valpekerjaan = "";
foreach($pekerjaan as $key => $value)
	$valpekerjaan = $valpekerjaan.'"'.$value.'",';
?>
<script type="text/javascript">
/*$("#gambarbidangstudi").hide();
$("#gambarpendidikan").hide();
$("#gambarsuku").hide();
$("#gambarpekerjaan").hide();*/
var boolbid = true;
var boolpend = true;
var boolpek = true;
var boolsuk = true;
var arrbidstudi =[<?php echo $valbidstudi;?>];
var arrpendidikan =[<?php echo $valpendidikan;?>];
var arrsuku =[<?php echo $valsuku;?>];
var arrpekerjaan =[<?php echo $valpekerjaan;?>];
//var val = ['a', 'b'];
    $( "#getpendidikan").autocomplete({
      source: arrpendidikan,
      select: function( event, ui ) {
      	$( "#getpendidikan" ).val(ui.item.value);
      	$( "#getpendidikan" ).trigger('keyup');
      }
    });
    $( "#getbidstudi").autocomplete({
      source: arrbidstudi,
      select: function( event, ui ) {
      	$( "#getbidstudi" ).val(ui.item.value);
      	$( "#getbidstudi" ).trigger('keyup');
      }
    });
    $( "#getsuku").autocomplete({
      source: arrsuku,
      select: function( event, ui){
      	$( "#getsuku" ).val(ui.item.value);
      	$( "#getsuku" ).trigger('keyup');
      }
    });
    $( "#getpekerjaan").autocomplete({
      source: arrpekerjaan,
      select: function( event, ui ) {
      	$( "#getpekerjaan" ).val(ui.item.value);
      	$( "#getpekerjaan" ).trigger('keyup');
      }
    });
	
	$( "#getpendidikan" ).keyup(function(){
		if(jQuery.inArray($( "#getpendidikan" ).val(), arrpendidikan) == -1){
			$("#gambarpendidikan").css({'color':'#E31E1E'});
			$("#gambarpendidikan").attr('class', '	fa fa-times fa-2x');
			$( "#gambarpendidikan" ).show();
			boolpend = false;
		}
		else
		{
			$("#gambarpendidikan").css({'color':'#00FF00'});
			$("#gambarpendidikan").attr('class', 'fa fa-check fa-2x');
			$( "#gambarpendidikan" ).show();
			boolpend = true;
		}
		if(boolpend && boolsuk && boolpek && boolbid)
			$('#btnedit').prop('disabled', false);
		else
			$('#btnedit').prop('disabled', true);
	});
	
	$( "#getpekerjaan" ).keyup(function(){
		if(jQuery.inArray($( "#getpekerjaan" ).val(), arrpekerjaan) == -1){
			$("#gambarpekerjaan").css({'color':'#E31E1E'});
			$("#gambarpekerjaan").attr('class', '	fa fa-times fa-2x');
			$( "#gambarpekerjaan" ).show();
			boolpek = false;
		}
		else
		{
			$("#gambarpekerjaan").css({'color':'#00FF00'});
			$("#gambarpekerjaan").attr('class', 'fa fa-check fa-2x');
			$( "#gambarpekerjaan" ).show();
			boolpek = true;
		}
		if(boolpend && boolsuk && boolpek && boolbid)
			$('#btnedit').prop('disabled', false);
		else
			$('#btnedit').prop('disabled', true);	
	});
	
	$( "#getbidstudi" ).keyup(function(){
		if(jQuery.inArray($( "#getbidstudi" ).val(), arrbidstudi) == -1){
			$("#gambarbidangstudi").css({'color':'#E31E1E'});
			$("#gambarbidangstudi").attr('class', '	fa fa-times fa-2x');
			$( "#gambarbidangstudi" ).show();
			boolbid = false;
		}
		else
		{
			$("#gambarbidangstudi").css({'color':'#00FF00'});
			$("#gambarbidangstudi").attr('class', 'fa fa-check fa-2x');
			$( "#gambarbidangstudi" ).show();
			boolbid = true;
		}
		if(boolpend && boolsuk && boolpek && boolbid)
			$('#btnedit').prop('disabled', false);
		else
			$('#btnedit').prop('disabled', true);	
	});

	$( "#getsuku" ).keyup(function(){
		if(jQuery.inArray($( "#getsuku" ).val(), arrsuku) == -1){
			$("#gambarsuku").css({'color':'#E31E1E'});
			$("#gambarsuku").attr('class', '	fa fa-times fa-2x');
			$( "#gambarsuku" ).show();
			boolsuk = false;
		}
		else
		{
			$("#gambarsuku").css({'color':'#00FF00'});
			$("#gambarsuku").attr('class', 'fa fa-check fa-2x');
			$( "#gambarsuku" ).show();
			boolsuk = true;
		}
		if(boolpend && boolsuk && boolpek && boolbid)
			$('#btnedit').prop('disabled', false);
		else
			$('#btnedit').prop('disabled', true);	
	});
</script>
<!-- /.row -->
