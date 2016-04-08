<?php
$this->assign('title', 'Halaman Tambah Kelahiran');
?>
<h3><i class="fa fa-angle-right"></i> <?php echo $this->Html->link('<i class="fa fa-users"></i> Manajemen Akun', array('action'=>'index'), array('escape'=>false)); ?> / <i class="fa fa-user-plus"></i> Tambah Kelahiran</h3>
<div class="row mt">
    <div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Form Pendaftaran Akun Pengguna</h3>
			</div>
			<div class="panel-body">

			<?php echo $this->Form->create('Umat', array('class'=>'form-horizontal', 'role'=>'form')); ?>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama Kepala Keluarga', 'col-md-2 control-label');
					echo $this->Form->input('test', array('id'=>'getkk','label'=>false, 'placeholder'=>"Nama Kepala Keluarga", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));

					?>
					<span id="gambar" class="fa fa-times fa-2x" aria-hidden="true" style= "color:#00FF00"></span>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.nama', 'Nama Lengkap Bayi', 'col-md-2 control-label');
					echo $this->Form->input('nama', array('label'=>false, 'placeholder'=>"Nama Lengkap Bayi", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tgl_lahir', 'Tempat lahir', 'col-md-2 control-label');
					echo $this->Form->input('tmplahir', array('label'=>false, 'placeholder'=>"Tempat lahir", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tgl_lahir', 'Tanggal lahir', 'col-md-2 control-label');
					echo $this->Form->input('tgl_lahir', array('label'=>false, 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4'),'dateFormat' => 'DMY',
						'minYear' => date('Y') - 115, 'maxYear' => date('Y') - 0));
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.jenis_kelamin', 'Jenis Kelamin', 'col-md-2 control-label');
					echo $this->Form->input('jenis_kelamin', array(
								'options' => $jeniskelamin,
								'label' => false,
								'id' => 'checkBaptis',
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				<div class="form-group">
					<?php
					echo $this->Form->label('Umat.goldarah', 'Golongan Darah', 'col-md-2 control-label');
					echo $this->Form->input('goldarah', array(
								'options' => $goldar,
								'label' => false,
								'id' => 'checkBaptis',
								'div'=>array('class'=>'col-md-4'),
								'class'=>"form-control input-xlarge"
							)
						 );
					?>
				</div>
				
				<p>&nbsp;</p>
				<div class="form-group">
					<label class="col-md-2"></label>
					<div class="col-md-10">
					  <button id="button1id" name="button1id" class="btn btn-success" type="submit" >Simpan</button>
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
<?php $kks = 'ass';
$test = json_encode($kk);?>
<?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js','jquery-ui.min.js')); ?>
<?php 
$val = "";
foreach($kk as $key => $value){
	$val = $val.'"'.$value.'",';
		
}

?>
<script type="text/javascript">
$( "#gambar" ).hide();
var myarray =[<?php echo $val;?>];
var val = ['a', 'b'];
    $( "#getkk" ).autocomplete({
      source: myarray,
      select: function( event, ui ) {
      	$( "#getkk" ).val(ui.item.value);
      	$( "#getkk" ).trigger('keyup');
      }
    });

	$( "#getkk" ).keyup(function(){
		if(jQuery.inArray($( "#getkk" ).val(), myarray) == -1){
		$("#gambar").css({'color':'#E31E1E'});
		$("#gambar").attr('class', '	fa fa-times fa-2x');
		$( "#gambar" ).show();
		$('#button1id').prop('disabled', true);
	}
	else
		{
			$("#gambar").css({'color':'#00FF00'});
			$("#gambar").attr('class', 'fa fa-check fa-2x');
			$( "#gambar" ).show();
			$('#button1id').prop('disabled', false);
	}
		/*$.ajax(
			    {
                    url:"<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'checkKk')) ?>",
                    data: {
                            name:$('#getkk').val()
                          },
                    type: "GET",  
                    dataType: "json",
                    success: function( data )
                    {
                        if(data){
                        	alert("bener");
                        }else
                        alert("salah");
                    },
                    error: function(){
						alert('error');
                    }
                });*/
	
    }); 

</script>
<!-- /.row -->
<?php //echo $this->Form->create('Umat', array('action'=>'user' ,'class'=>'form-horizontal', 'role'=>'form')); ?>
			
	<!--<div id="frms">
<div class="form-group">
					<?php
					echo $this->Form->label('Umat.tgl_lahir', 'Tanggal lahir', 'col-md-2 control-label');
					echo $this->Form->input('Umat.0.username', array('label'=>false, 'placeholder'=>"Nama Lengkap",'id'=>'hehe' ,'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));
					?>
					<button id='addform' type="button">add form</button>
					<button class="btn btn-success" type="submit" >Simpan</button>
				</div>
				</div>
	<?php //echo $this->Form->end();?>			
<!--<script type="text/template" id="template-inputs">
	<?php //echo $this->Form->input('Umat.::num.username', array('label'=>false, 'placeholder'=>"Nama Lengkap", 'class'=>"form-control input-xlarge", 'div'=>array('class'=>'col-md-4')));?>
</script>-->
			
