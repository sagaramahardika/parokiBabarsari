<?php

if (strtolower($ctrl) === 'umats') {
 ?>
$(document).ready(function() {

      botoesWrap = $('#UmatIndexForm').find('#hehe'),
      template = $.trim($('#template-inputs').html()),
      nextItem = 1; 
	if ($('#checkBaptis').val() == 9 || $('#checkBaptis').val() == 11)  
  {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('dsabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);   
      $("#bapLiber").prop('disabled', true);   
  }
});

$('#checkBaptis').change(function(e){
    if ($('#checkBaptis').val() != 9 && $('#checkBaptis').val() != 11) 
  { 
      $("#bapNama").prop('disabled', false);
      $("#bapTanggalMonth").prop('disabled', false);
      $("#bapTanggalDay").prop('disabled', false);
      $("#bapTanggalYear").prop('disabled', false);
      $("#bapTempat").prop('disabled', false);
      $("#bapRomo").prop('disabled', false);
      $("#bapLiber").prop('disabled', false);
      
  } else {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('disabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);   
      $("#bapLiber").prop('disabled', true);   
  }
});

$('#finduseraktifbtn').click(function(e){
    e.preventDefault();
    $('#frmCariAktif').submit();
});

$('.btnedit').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'edit')) ?>/" + idparam;
});
$('.btneditbaptis').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'editBaptis')) ?>/" + idparam;
});
$('#button2id').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')) ?>";
});
$('#buttonbatal').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')) ?>";
});
$('#buttonbatalsignup').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'login')) ?>";
});

$('#addform').click(function(e){
  e.preventDefault();
      addNewInputToTheForm();

});
function addNewInputToTheForm() {
      var newItemHtml = template.replace(/::num/g, nextItem++)
                                              .replace(/::plus/, nextItem);
      $('#frms').append(newItemHtml);
    }
<?php
}
?>
$('#buttonbaptis').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'baptis')) ?>";
});
$('#buttonkelahiran').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')) ?>"
});

$('#buttonbataladmin').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'users', 'action'=>'listuser')) ?>";
});
$('#buttonbatalpass').click(function(e){
    e.preventDefault();
    location.href="<?php echo $this->Html->url(array('controller'=>'umats', 'action'=>'index')) ?>";
});