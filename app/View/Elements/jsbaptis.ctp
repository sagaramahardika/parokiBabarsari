<?php
$urole = 'baptis';
if (strtolower($ctrl) === 'baptis') {
 ?>
$(document).ready(function() {
	if (!document.getElementById('checkBaptis').checked) 
  {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('disabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);   
  }
});
$('#checkBaptis').click(function(e){
    if (document.getElementById('checkBaptis').checked) 
  {
      $("#bapNama").prop('disabled', false);
      $("#bapTanggalMonth").prop('disabled', false);
      $("#bapTanggalDay").prop('disabled', false);
      $("#bapTanggalYear").prop('disabled', false);
      $("#bapTempat").prop('disabled', false);
      $("#bapRomo").prop('disabled', false);
  } else {
      $("#bapNama").prop('disabled', true);
      $("#bapTanggalMonth").prop('disabled', true);
      $("#bapTanggalDay").prop('disabled', true);
      $("#bapTanggalYear").prop('disabled', true);
 	  $("#bapTempat").prop('disabled', true);
      $("#bapRomo").prop('disabled', true);   
  }
});
$('.btnedit').click(function(e){
    e.preventDefault();
    var idparam = $(this).attr('idparam');
    location.href="<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'edit')) ?>/" + idparam;
});

<?php
}
?>
