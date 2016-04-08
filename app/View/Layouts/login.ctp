<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <title><?php echo $this->fetch('title'); ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <?php
		echo $this->Html->css(array('cake.generic.css', 'bootstrap.min.css', 'style.css'));
	?>
  <!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
	<div id="login-page">
	  	<div class="container">
			<?php
//			echo $this->Flash->render();
			echo $this->Form->create('User', array('action'=>'login',
														'class'=>'form-login'));
			?>
			<h2 class="form-login-heading">sign in now</h2>
			<div class="login-wrap">
			<div class="form-group">
			<?php echo $this->Form->input('username', array('class'=>'form-control input-lg', 'placeholder'=>"Username", 'label'=>false)); ?>
			</div>
			<div class="form-group">
			<?php echo $this->Form->input('password', array('class'=>'form-control input-lg', 'placeholder'=>"Password", 'label'=>false)); ?>
			</div>
			<div class="form-group">
				<button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
			</div>
			<?php
			echo $this->Form->end();
			?>
			<div>
				<a class="btn btn-theme btn-block" href="<?php 
					echo $this->Html->url(array('controller'=>'umats','action'=>'signup'));?>"> SIGN UP</a>
				</a>
			</div>
			</div>
		</div>
	</div>
	<!-- script references -->
  <?php echo $this->Html->script(array('jquery.min.js', 'bootstrap.min.js', 'jquery.backstretch.min.js')); ?>
	<script type="text/javascript">
		$.backstretch("<?php echo $this->Html->url('/img/aaa.jpg'); ?>", {speed: 500});
		$(document).ready(function(){
      if ( $('#flashmessage').text() != '') {
        setTimeout(function() {
          $('#flashmessage').slideUp(400);
        }, 5000);
      };
		});
	</script>
</body>
</html>
