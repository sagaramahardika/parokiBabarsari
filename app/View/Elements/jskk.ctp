





$('#adduserbtn').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'add')) ?>";
});

$('#finduserbtn').click(function(e){
    e.preventDefault();
    $('#frmCari').submit();
});


$('#alluserbtn').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'index')) ?>";
});

$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'index')) ?>";
});


$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'main', 'action'=>'index')) ?>";
});

