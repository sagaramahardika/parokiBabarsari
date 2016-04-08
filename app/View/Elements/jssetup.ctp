<?php
$urole = 'admin';
if (strtolower($ctrl) === 'setup') {
if ($urole === 'admin') { ?>
$(document).ready(function() {
	alert('masuk setup');
});
$('#btnedit').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')) ?>/" + idparam;
});

$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'main', 'action'=>'index')) ?>";
});

<?php } ?>

<?php
}
?>
