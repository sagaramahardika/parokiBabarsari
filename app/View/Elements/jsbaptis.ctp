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

//autocomplete
$('#namaDiri').keyup(function(){
   event.preventDefault();
    $.ajax({

     url : "<?php echo $this->Html->url(array('controller'=>'baptis', 'action'=>'autocompleteumat')) ?>",
     data:
           {
              nama : $('#namaDiri').val(),
           },
           type : 'GET',
      dataType: "json",
    success : function(response) {

      $.each(response, function(index, element) {
      if(element.status == 'success'){

        $('#cek_umat').addClass('fa fa-check fa-2x').removeClass('fa-times');
        $('#cek_umat').css('color','green');
        $('#cek_umat').attr('cek',true);
    }else{
       $('#cek_umat').addClass('fa fa-times fa-2x').removeClass('fa-check');
        $('#cek_umat').css('color','red');
        $('#cek_umat').attr('cek',false);
        $('#form_id_umat').val("");
  }

        });


    },
    error : function() {
           alert('aaaax');
    }
   });

 });

<?php
}
?>
