<?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js','jquery-ui.min.js')); ?>
<?php 
$valusern = "";
foreach($usern as $key => $value){
	$valusern = $valusern.'"'.$value.'",';
	
}

?>
<?php
$this->assign('title', 'Halaman Tambah Pengguna');
?>
<br><br>
<h3><i class="fa fa-user-plus"></i> Tambah Akun Pengguna </h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('User', array('class'=>'form-horizontal', 'role'=>'form')); ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('User.kodeumat', 'Kode Umat', 'col-md-2 control-label');
					echo $this->Form->input('kodeumat', array('label'=>false, 'placeholder'=>"Kode Umat", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.kodeaktivasi', 'KodeAktivasi', 'col-md-2 control-label');
					echo $this->Form->input('kodeaktivasi', array('label'=>false, 'placeholder'=>"Kode Aktivasi", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.username', 'Username', 'col-md-2 control-label');
					echo $this->Form->input('username', array('label'=>false, 'placeholder'=>"username", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));

					?>
					<span id="gambarusern" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				
				<div class="form-group">
					<?php
					echo $this->Form->label('User.password', 'Password', 'col-md-2 control-label');
					echo $this->Form->input('password', array('label'=>false, 'placeholder'=>"Password", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.password2', 'Ulangi Password', 'col-md-2 control-label');
					echo $this->Form->input('password2', array('type'=>'password', 'label'=>false, 'placeholder'=>"Ketik Ulang Password", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>

				<div class="form-group">
					<?php
					echo $this->Form->label('User.email', 'E-Mail', 'col-md-2 control-label');
					echo $this->Form->input('email', array('label'=>false, 'placeholder'=>"E-Mail", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					
					?>
				</div>
				

				

				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
					  <button id="buttonbatalsignup" name="button2id" class="btn btn-danger">Batal</button>
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
$( "#gambarusern" ).hide();


var myarrayusern =[<?php echo $valusern;?>];

// Username 
    
	$( "#UserUsername" ).focusout(function(){
		
		if(jQuery.inArray($( "#UserUsername" ).val(), myarrayusern) != -1){
		
			$("#gambarusern").css({'color':'#E31E1E'});
			$("#gambarusern").attr('class', '	fa fa-times fa-2x');
			$( "#gambarusern" ).show();
			$('#button1id').prop('disabled', true);		
	}
	else
		{
			$("#gambarusern").css({'color':'#00FF00'});
			$("#gambarusern").attr('class', 'fa fa-check fa-2x');
			$( "#gambarusern" ).show();
			$('#button1id').prop('disabled', false);

	
	}
    }); 
</script>