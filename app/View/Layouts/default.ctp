<!DOCTYPE html>
<html>
<head>
	<?php
	$controller = strtolower($this->params['controller']);
	$action = strtolower($this->params['action']);
	$fname = $this->Session->read('Auth.Umat.name');
	$urole = $this->Session->read('Auth.Umat.role');
	?>
	<?php echo $this->Html->charset(); ?>
	<title><?php echo $this->fetch('title'); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<?php
		echo $this->Html->css(array('cake.generic.css', 'bootstrap.min.css', 'font-awesome.min.css', 'datepicker3.css', 'custom.css','jquery-ui.min.css','jquery-ui.css'));
	?>
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>

<?php echo $this->element('topmenu'); ?>
	<div class="container-fluid">
    <div class="row row-offcanvas row-offcanvas-left">


			<?php

			if ($action!="signup") {
			 	# code...
			 	if($controller=="umats" && $action!="index")
				echo $this->element('sidemenu', array('ctl'=>$action, 'act'=>$action, 'urole'=>$urole));
				else
				echo $this->element('sidemenu', array('ctl'=>$controller, 'act'=>$action, 'urole'=>$urole));
			 }
			 ?>
			<div class="col-sm-9 col-md-10 main">
			  <!--toggle sidebar button-->
			  <p class="visible-xs">
			    <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
			  </p>
				<?php echo $this->Flash->render(); ?>
				<?php echo $this->fetch('content'); ?>
			</div><!--/row-->
		</div>
	</div><!--/.container-->

	<footer>
	  <p class="pull-right">&copy;2015 FTI UK Duta Wacana</p>
	</footer>

	<?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js','jquery-ui.min.js','bootbox.min.js', 'bootstrap-datepicker.js')); ?>
	<script type="text/javascript">
	$(document).ready(function(){
		$('[data-toggle=offcanvas]').click(function() {
			$('.row-offcanvas').toggleClass('active');
		});
		if ( $('#flashmessage').text() != '') {
			setTimeout(function() {
				$('#flashmessage').slideUp(400);
			}, 5000);
		};
		<?php echo $this->element('jssetup', array('ctrl'=>$controller, 'act'=>$action)); ?>
		<?php echo $this->element('jsumat', array('ctrl'=>$controller, 'act'=>$action,'urole'=>$urole)); ?>
		<?php echo $this->element('jsbaptis', array('ctrl'=>$controller, 'act'=>$action,'urole'=>$urole)); ?>
		<?php echo $this->element('jskrisma', array('ctrl'=>$controller, 'act'=>$action, 'urole'=>$urole)); ?>
		<?php echo $this->element('jskomuni', array('ctrl'=>$controller, 'act'=>$action, 'urole'=>$urole)); ?>
		<?php echo $this->element('jspernikahan', array('ctrl'=>$controller, 'act'=>$action, 'urole'=>$urole));?>
		<?php echo $this->element('jskk', array('ctrl'=>$controller, 'act'=>$action, 'urole'=>$urole));?>
		<?php echo $this->element('jspengurapan', array('ctrl'=>$controller, 'act'=>$action, 'urole'=>$urole));?>
		<?php echo $this->element('jsautocomplete');?>
		});

		$(document).ready(function(){
		  $('.datepicker').datepicker({
		      autoclose: true,
		      format: 'yyyy-mm-dd',
		  });
		});
	</script>

</body>
</html>
